# Image Conversion Scenario

Run `make` in the current directory. This will clone, download, and
compile everything necessary to demonstrate the scenario. This is a
fairly time consuming step (some of the intermediate steps can even
take 10+ minutes, and there are a non-trivial number of such
time-consuming intermediate steps), so you may wish to step away and
grab lunch.

Note that if you are running this within the [vWasm Docker
container](https://github.com/secure-foundations/vWasm/tree/main/.docker)
then all requirements for this build step will already be satisfied.

Once `make` finished, there will be 3 new executables in the current
directory: `gif2jpg.native`, `gif2jpg.vwasm-built` and
`gif2jpg.rwasm-built`. These files respectively a native-, vWasm- and
rWasm-compiled binaries.

Running `benchify` once they are built will benchmark the 3 generated
executables on an example image (should finish in a minute or two).

To see how they behave under an adversarial image, run
`./see_cve_impacts.sh` which will run the 3 processes one after
another with `CVE-2008-0554.gif` as its input. It will first run the
processes directly, and next, will run them under `gdb`.
