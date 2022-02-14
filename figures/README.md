# Plots and figures

## Requirements

Requires Python3, and the following dependencies, installed via `pip`:
```
pip3 install matplotlib pandas seaborn
```

## Generate plots

Run `make` to produce all the figures (produced as PDFs).

The plotting scripts read from all the `.csv` files in this directory,
that need to manually be moved in here from the benchmark
outputs:

+ `./data.csv` and `./prep_time.csv` contain outputs from `../benchmarks/`.
+ `./microbench-mem-access` contains output from
  `../microbenchmark-compare-read-arr/`. You will likely need to tweak
  the `machines` map in `./microbench-mem-access.py` for it to pick up
  the data from your machine. Currently it is set to the machine names
  that were used for evaluation in the paper.

The raw data files used to produce the graphs in the paper are
already included in this directory.
