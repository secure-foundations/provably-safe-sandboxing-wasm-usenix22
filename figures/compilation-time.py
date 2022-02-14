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
import matplotlib.patches as mpatches

assert (3 / 2) * 2 == 3, "Use python3, not python2"

allowed_executors = {
    'vWasm': toolverified,
    'rWasm': toolhighperf,
    'WAMR-compiled-chkbounds': 'WAMR',
    'wasm2c': 'wasm2c',
    'wavm-precompiled': 'WAVM',
}

executor_ordering = [
    toolverified,
    toolhighperf,
    'wasm2c',
    'WAMR',
    'WAVM',
]

data = pd.read_csv('./prep_time.csv')
data = data[data['Executor'].isin(allowed_executors)]
data = data.rename(columns={'Executor': 'Executor-ID'})

data = pd.merge(left=data,
                right=pd.DataFrame(list(allowed_executors.items()),
                                   columns=['Executor-ID','Executor']),
                left_on='Executor-ID',
                right_on='Executor-ID',
                validate='many_to_one')
data = data[["Test", "Executor", "Time (s)", "Full Compilation"]]

assert set(data['Executor']) == set(allowed_executors.values())
assert set(executor_ordering) == set(allowed_executors.values())

sns.set_theme(style='whitegrid')
sns.set_context("paper", font_scale=2)
fig, ax=plt.subplots(figsize=(8, 6))

log_scale_y = False
x_axis = ''
y_axis = 'Compilation Time (s)'
hue_axis = 'Full Compilation'

graph_data=data.rename(columns={
    'Executor': x_axis,
    'Time (s)': y_axis,
    'Post Tool': hue_axis,
})

g1 = sns.barplot(x=x_axis,
                y=y_axis,
                data=graph_data[graph_data[hue_axis] == True],
                order=executor_ordering,
                ax=ax,
                color=sns.color_palette()[0])
g2 = sns.barplot(x=x_axis,
                y=y_axis,
                data=graph_data[graph_data[hue_axis] == False],
                order=executor_ordering,
                ax=ax,
                color=sns.color_palette()[1])

plt.legend(
    handles=[
        mpatches.Patch(color=sns.color_palette()[0], label='Total Compilation Time'),
        mpatches.Patch(color=sns.color_palette()[1], label='Time Spent Within Our Tool'),
    ],
    loc='upper right',
)

if log_scale_y:
    fig.get_axes()[0].set_yscale('log')
else:
    plt.ylim(0, None)

for xtick in ax.get_xticklabels():
    if xtick.get_text() in [toolverified, toolhighperf]:
        xtick.set_fontweight('bold')

plt.tight_layout()
# plt.show()
plt.savefig((sys.path[0] or '.') + '/compilation-time.pdf')
