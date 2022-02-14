#! /usr/bin/env python3

import matplotlib
matplotlib.rcParams['pdf.fonttype'] = 42
matplotlib.rcParams['ps.fonttype'] = 42

import sys
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
import seaborn as sns
from toolnames import toolverified, toolhighperf

curdir = (sys.path[0] or '.')

assert (3 / 2) * 2 == 3, "Use python3, not python2"

machines = {
    'valhalla': 'AMD Ryzen 3700x',
    's1903': 'Intel i9-9900k',
}

nosbx = 'No Sandbox'
cab = 'Check-and-\nBound'
wrpng = 'Wrapping w/\nBitwise AND'

types = {
    # Variable size
    'direct': cab,
    'direct_unsafe': nosbx,
    'wrapping_v1_xqword': wrpng,

    # Fixed size
    'fixed-direct': cab,
    'fixed-direct_unsafe': nosbx,
    'fixed-wrapping_v1_xqword': wrpng,
}

type_ordering = [
    nosbx,
    cab,
    wrpng,
]

assert set(type_ordering) - set(types.values()) == set()

overall_data = None

row_time = 'Time (ns)'
row_machine = 'CPU'
row_type = ''
row_mem_type = 'Memory'

for machine in machines.keys():
    for typ in types.keys():
        if types[typ] not in type_ordering:
            continue
        csv_path = f'{curdir}/microbench-mem-access/{machine}-data/{typ}/1024/new/raw.csv'
        data = pd.read_csv(csv_path)
        assert set(data['unit']) == {'ns'}
        data[row_time] = data['sample_measured_value'] / data['iteration_count']
        data[row_machine] = machines[machine]
        data[row_type] = types[typ]
        data[row_mem_type] = 'Fixed' if typ.startswith('fixed-') else 'Resizable'
        data = data[[row_machine, row_type, row_time, row_mem_type]]

        if overall_data is None:
            overall_data = data
        else:
            overall_data = pd.concat([overall_data, data])

data = overall_data

sns.set_theme()
sns.set_context("paper", font_scale=2)

g = sns.catplot(x=row_time,
                y=row_type,
                hue=row_mem_type,
                col=row_machine,
                data=data,
                order=type_ordering,
                orient='h',
                sharex=False,
                kind='violin',
                split=True,
                scale='count',
                inner=None,
                legend=False, # To allow us to control the legend
)
g.fig.set_size_inches(8, 5)
plt.legend(loc='upper right', title=row_mem_type, fontsize=15)

plt.tight_layout()
plt.savefig((sys.path[0] or '.') + '/microbench-mem-access.pdf')
