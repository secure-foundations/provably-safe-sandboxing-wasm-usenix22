FROM ubuntu:20.04

# Install some basic pre-requisites
RUN apt-get -qq update \
  && apt-get install -y software-properties-common \
  && add-apt-repository -y ppa:avsm/ppa \
  && apt-get -qq update \
  && apt-get install -q -y sudo wget \
    libssl-dev libsqlite3-dev g++ gcc m4 make pkg-config python libgmp3-dev unzip cmake \
    opam \
    python3 python3-pip \
    time \
    npm \
    libxkbcommon-x11-dev libtinfo5 libtinfo-dev \
    gnuplot-nox \
  && apt-get clean -q -y \
  && rm -rf /var/lib/apt/lists/*

# Get the specific version of F* we want
WORKDIR /build
ARG FSTAR_REPO_URL=https://github.com/FStarLang/FStar.git
ARG FSTAR_VERSION=a09faa2523eb436e4f1d14d8cce0dda2fdb7dbfb
ENV FSTAR_HOME=/build/FStar
RUN git clone "$FSTAR_REPO_URL" "$FSTAR_HOME" && cd "$FSTAR_HOME" && git reset --hard "$FSTAR_VERSION"

# Install z3
WORKDIR /build
ENV z3=z3-4.8.5-x64-debian-8.11
RUN wget --quiet https://github.com/FStarLang/binaries/raw/master/z3-tested/${z3}.zip && unzip ${z3}.zip
ENV PATH=/build/${z3}/bin:${PATH}

# Get all pre-requisites for building F*
WORKDIR /build
RUN opam init -y --disable-sandboxing --compiler=4.09.1 \
  && opam update \
  && opam install -y \
    batteries=3.0.0 \
    fileutils=0.6.2 \
    fix=20200131 \
    menhir=20200624 \
    ocamlbuild=0.14.0 \
    ocamlfind=1.8.1 \
    ocaml-migrate-parsetree=1.7.3 \
    pprint=20200410 \
    ppx_deriving=4.5 \
    ppx_deriving_yojson=3.5.2 \
    process=0.2.1 \
    stdint=0.6.0 \
    ulex=1.2 \
    visitors=20200210 \
    wasm=1.0.1 \
    yojson=1.7.0 \
    zarith=1.9.1
# Make sure that ocamlbuild and such exists in the path
RUN echo 'eval $(opam env)' >> $HOME/.bashrc

# Build F* and add to PATH
WORKDIR $FSTAR_HOME
RUN opam exec -- make -j $(nproc)
ENV PATH=${FSTAR_HOME}/bin:${PATH}

# Install Rust
WORKDIR /build
ENV RUSTUP_HOME=/usr/local/rustup
ENV CARGO_HOME=/usr/local/cargo
ARG RUST_VERSION="1.59.0"
# persist the build arg
ENV RUST_VERSION=$RUST_VERSION
# we use rustup instead to fetch the rust version we used
RUN wget -q -O /tmp/rustup.sh https://sh.rustup.rs \
  && sh /tmp/rustup.sh -y -t "$RUST_VERSION" --default-toolchain "$RUST_VERSION" --profile minimal \
  && rm /tmp/rustup.sh
ENV PATH=$PATH:$CARGO_HOME/bin/

# Set up ~/.local/bin as part of PATH
RUN mkdir -p $HOME/.local/bin
ENV PATH=$HOME/.local/bin:${PATH}

# Install wasm2wat
WORKDIR /build
RUN git clone https://github.com/WebAssembly/wabt \
  && cd wabt \
  && git reset --hard 189c0e61cb164b6db98a97b6bc4f19205d9f2dc6 \
  && mkdir build \
  && cd build \
  && cmake .. -DBUILD_TESTS=OFF \
  && make -j $(nproc) \
  && make install

# Install wat2vasm
WORKDIR /build
RUN git clone https://github.com/secure-foundations/wabt sfwabt \
  && cd sfwabt \
  && git reset --hard 06e29d927b49e3c8188793dbad5fa8a69e3236e7 \
  && mkdir build \
  && cd build \
  && cmake .. -DBUILD_TESTS=OFF \
  && make -j $(nproc) \
  && mv wat2wasm /usr/local/bin/wat2vasm

# Install quacky-ducky (we don't need anything else from everparse,
# but this is the most convenient way to get the qd binary)
WORKDIR /build
ARG EVERPARSE_URL=https://github.com/project-everest/everparse/releases/download/v2021.03.28/everparse_v2021.03.28_Linux_x86_64.tar.gz
RUN wget --quiet -O everparse.tar.gz "$EVERPARSE_URL" \
    && tar xf everparse.tar.gz \
    && mv everparse/bin/qd /usr/local/bin/ \
    && rm -rf everparse*

# Install nasm
WORKDIR /build
RUN wget https://www.nasm.us/pub/nasm/releasebuilds/2.14/nasm-2.14.tar.bz2 \
    && tar xf nasm-2.14.tar.bz2 \
    && rm nasm-2.14.tar.bz2 \
    && cd nasm-2.14 \
    && ./configure \
    && make -j $(nproc) \
    && sudo make install \
    && cd .. \
    && rm -rf nasm-2.14

# Add tools for benchmarking
RUN pip3 install matplotlib pandas seaborn
RUN cargo install \
  --git https://github.com/jaybosamiya/benchify \
  --tag v0.4.3

# Install tools being compared against

WORKDIR /build

RUN curl https://wasmtime.dev/install.sh -sSf | bash
RUN echo >> $HOME/.bashrc

RUN curl https://get.wasmer.io -sSfL | sh
RUN echo 'source $HOME/.wasmer/wasmer.sh' >> $HOME/.bashrc

RUN npm install -g @wasmer/cli

ARG WAVM_URL=https://github.com/WAVM/WAVM/releases/download/nightly%2F2020-09-16/wavm-0.0.0-prerelease-linux.deb
RUN wget --quiet $WAVM_URL \
  && dpkg -i ./wavm-0.0.0-prerelease-linux.deb \
  && rm ./wavm-0.0.0-prerelease-linux.deb

RUN wget --quiet -O /usr/local/bin/wasm3-cosmopolitan.com \
    https://github.com/wasm3/wasm3/releases/download/v0.4.9/wasm3-cosmopolitan.com \
  && chmod +x /usr/local/bin/wasm3-cosmopolitan.com \
  && sh /usr/local/bin/wasm3-cosmopolitan.com || true # Auto-initialize to required format

RUN git clone https://github.com/bytecodealliance/wasm-micro-runtime \
  && cd wasm-micro-runtime \
  && git checkout WAMR-04-15-2021 \
  && cd product-mini/platforms/linux \
  && mkdir build \
  && cd build \
  && cmake .. \
  && make -j $(nproc) \
  && cp iwasm /usr/local/bin/ \
  && cd ../../../../wamr-compiler \
  && ./build_llvm.sh \
  && mkdir build \
  && cd build \
  && cmake .. \
  && make -j $(nproc) \
  && cp wamrc /usr/local/bin/

# Copy, build and install the code from the artifact
COPY wasm-semantics-fuzzer /build/wasm-semantics-fuzzer
WORKDIR /build/wasm-semantics-fuzzer
RUN cargo install --locked --path .

COPY rWasm /build/rWasm
WORKDIR /build/rWasm
RUN cargo install --locked --path .

COPY vWasm /build/vWasm
WORKDIR /build/vWasm
# vWasm makefiles assume git-specific repository root, requiring the following workaround to find their own root
RUN sed -i 's!git rev-parse --show-toplevel!echo /build/vWasm!g' scripts/Makefile.ver scripts/parse_fstar_args.sh run_wasm.sh
RUN eval "$(opam env)" && make && cp -L main.native /usr/local/bin/vWasm

RUN chmod +x /usr/local/bin/*

RUN mkdir /experiments/
WORKDIR /experiments/
COPY ./benchmarks benchmarks
COPY ./figures figures
COPY ./microbenchmark-compare-read-arr microbenchmark-compare-read-arr
COPY ./image-conversion-scenario image-conversion-scenario
