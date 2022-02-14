# Provably-Safe Multilingual Software Sandboxing using WebAssembly

This is the top-level companion software artifact repository for the
paper "Provably-Safe Multilingual Software Sandboxing using
WebAssembly". The other repositories relevant to this artifact are
locked to specific revisions using git submodules. To clone everything
in one go, use:

```sh
git clone --recursive \
    git@github.com:secure-foundations/provably-safe-sandboxing-wasm-usenix22.git
```

This repository also contains the files necessary to benchmark vWasm
and rWasm. See the `README.md` files in the subdirectories
[`benchmarks/`](benchmarks/),
[`microbenchmark-compare-read-arr/`](microbenchmark-compare-read-arr/),
and [`image-conversion-scenario/`](image-conversion-scenario/) for
more information. Plots produced from the raw output of the benchmarks
can be produced using the files in [`figures/`](figures/).

To find the latest versions of the submodules, rather than the fixed
tags maintained for this software artifact, head over directly to the
repositories:

+ [rWasm](https://github.com/secure-foundations/rWasm): a
  high-performance informally-verified provably-safe sandboxing
  compiler
+ [vWasm](https://github.com/secure-foundations/vWasm): a
  formally-verified provably-safe sandboxing compiler, built in F*
+ [wasm-semantics-fuzzer](https://github.com/secure-foundations/wasm-semantics-fuzzer):
  a tool for providing greater assurance in the semantic correctness
  of any Wasm implementation

## License

BSD 3-Clause License. See [LICENSE](./LICENSE).

## Publication

**Provably-Safe Multilingual Software Sandboxing using WebAssembly**.
Jay Bosamiya, Wen Shih Lim, and Bryan Parno. To Appear in Proceedings
of the USENIX Security Symposium, August, 2022.

```bibtex
@inproceedings{provably-safe-sandboxing-wasm,
  author    = {Bosamiya, Jay and Lim, Wen Shih and Parno, Bryan},
  booktitle = {To Appear in Proceedings of the USENIX Security Symposium},
  month     = {August},
  title     = {Provably-Safe Multilingual Software Sandboxing using {WebAssembly}},
  year      = {2022}
}
```
