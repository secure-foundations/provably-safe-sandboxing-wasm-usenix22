# Benchmarks

Requires `benchify` installed, which can be installed using

```sh
cargo install --git https://github.com/jaybosamiya/benchify --tag v0.4.3
```

Run `benchify` to run all the different tools and tests defined in
[`./benchify.toml`](./benchify.toml).

If you do not have any of Wasm interpreters/compilers being
benchmarked against, `benchify` will complain, along with installation
instructions. You can choose to either follow along those install
instructions, or comment out the relevant lines in
[`./benchify.toml`](./benchify.toml) (comment out all lines from the
relevant `[[tools]]` line to the next `[[tools]]` line) to prevent
that tool from being compared, if you want to save time and ignore
comparing against a particular tool.

Once `benchify` confirms that all tools exist, it will start the
compilation/preparation phase. This can take anywhere between a few
minutes to an hour or two depending on your machine.

After the preparation phase is complete, `benchify` will begin
benchmarking. This will take many hours to complete. Once it finishes,
it will produce a new directory `benchify-results` containing the raw
results, as well as summaries.

To plot the results, see the `README.md` file in
[../figures/](../figures/).

---

Note: when you run `benchify`, if you get errors in the preparation
stage that look similar to `error: symbol 'MEMORY' undefined`,
this is possible due to bad file-system interaction between
compilation instances due to parallelism during compilation. To fix
this, run `rm -rf .generated && git checkout -- .generated` to clear
out the `.generated` directory where builds are cached, and then
execute `benchify -m 1` to force the benchmarking script to ignore
parallelism, and instead compile everything sequentially.
