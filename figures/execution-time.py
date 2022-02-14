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

assert (3 / 2) * 2 == 3, "Use python3, not python2"

allowed_executors = {
    'native': 'native',
    'vWasm': toolverified,
    'vWasm-nosbx': toolverified + '*',
    'rWasm': toolhighperf,
    'WAMR-compiled-chkbounds': 'WAMR',
    'WAMR-interpreter': '[WAMR]',
    'wasm2c': 'wasm2c',
    'wasm3': '[wasm3]',
    'wasmer-jit': '{Wasmer}',
    'wasmtime': '{wasmtime}',
    'wavm-precompiled': 'WAVM',
}

executor_ordering = [
    '[wasm3]',
    '[WAMR]',
    toolverified,
    toolverified + '*',
    '{Wasmer}',
    toolhighperf,
    'wasm2c',
    'WAMR',
    '{wasmtime}',
    'WAVM',
]

data = pd.read_csv('./data.csv')
data = data[data['Executor'].isin(allowed_executors)]
data = data.rename(columns={'Executor': 'Executor-ID'})

data = pd.merge(left=data,
                right=pd.DataFrame(list(allowed_executors.items()),
                                   columns=['Executor-ID','Executor']),
                left_on='Executor-ID',
                right_on='Executor-ID',
                validate='many_to_one')
data = data[["Test", "Executor", "Timing (s)"]]

mean_native_timing = (
    data[data["Executor"] == 'native']
    .groupby('Test')['Timing (s)']
    .mean()
    .to_frame()
    .rename(columns={'Timing (s)': 'Mean Native Timing'})
)

mean_timing = (
    data.groupby(['Test', 'Executor'])
    .mean()
    .rename(columns={'Timing (s)': 'Mean Timing'})
    .reset_index()
)

normalized = pd.merge(left=mean_timing,
                      right=mean_native_timing,
                      left_on='Test',
                      right_on='Test',
                      validate='many_to_one')
normalized['Normalized Slowdown'] = (
    normalized['Mean Timing'] / normalized['Mean Native Timing'])
normalized = normalized[['Test', 'Executor', 'Normalized Slowdown']]

assert set(normalized['Executor']) == set(allowed_executors.values())
assert set(executor_ordering) == {a for a in allowed_executors.values() if a != 'native'}

normalized = normalized[normalized['Executor'] != 'native']

sns.set_theme(style='whitegrid')
sns.set_context("paper", font_scale=2)
fig, ax=plt.subplots(figsize=(16, 6))

x_axis = ''
y_axis = 'Normalized Slowdown (Log Scale)'

graph_data=normalized.rename(columns={
    'Executor': x_axis,
    'Normalized Slowdown': y_axis,
})

g = sns.boxplot(x=x_axis,
                y=y_axis,
                data=graph_data,
                order=executor_ordering,
                whis=10000,
                ax=ax)
fig.get_axes()[0].set_yscale('log')
g = sns.stripplot(x=x_axis,
                  y=y_axis,
                  data=graph_data,
                  order=executor_ordering,
                  ax=ax)

for xtick in ax.get_xticklabels():
    if xtick.get_text() in [toolverified, toolhighperf]:
        xtick.set_fontweight('bold')

plt.tight_layout()
# plt.show()
plt.savefig((sys.path[0] or '.') + '/execution-time.pdf')
