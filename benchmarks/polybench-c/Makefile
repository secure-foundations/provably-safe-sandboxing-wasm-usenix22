WASI_SDK_VERSION:=12.0
WASI_SDK_TAG:=12

CC:=wasi-sdk/bin/clang --sysroot wasi-sdk/share/wasi-sysroot

POLYBENCH_ROOT:=polybench-c-3.2

AVAILABLE_BENCHMARKS:= $(patsubst %,$(POLYBENCH_ROOT)/%, \
	linear-algebra/kernels/2mm/2mm.c \
	linear-algebra/kernels/3mm/3mm.c \
	linear-algebra/kernels/atax/atax.c \
	linear-algebra/kernels/bicg/bicg.c \
	linear-algebra/kernels/cholesky/cholesky.c \
	linear-algebra/kernels/doitgen/doitgen.c \
	linear-algebra/kernels/gemm/gemm.c \
	linear-algebra/kernels/gemver/gemver.c \
	linear-algebra/kernels/gesummv/gesummv.c \
	linear-algebra/kernels/mvt/mvt.c \
	linear-algebra/kernels/symm/symm.c \
	linear-algebra/kernels/syr2k/syr2k.c \
	linear-algebra/kernels/syrk/syrk.c \
	linear-algebra/kernels/trisolv/trisolv.c \
	linear-algebra/kernels/trmm/trmm.c \
	linear-algebra/solvers/durbin/durbin.c \
	linear-algebra/solvers/dynprog/dynprog.c \
	linear-algebra/solvers/gramschmidt/gramschmidt.c \
	linear-algebra/solvers/lu/lu.c \
	linear-algebra/solvers/ludcmp/ludcmp.c \
	datamining/correlation/correlation.c \
	datamining/covariance/covariance.c \
	medley/floyd-warshall/floyd-warshall.c \
	medley/reg_detect/reg_detect.c \
	stencils/adi/adi.c \
	stencils/fdtd-2d/fdtd-2d.c \
	stencils/fdtd-apml/fdtd-apml.c \
	stencils/jacobi-1d-imper/jacobi-1d-imper.c \
	stencils/jacobi-2d-imper/jacobi-2d-imper.c \
	stencils/seidel-2d/seidel-2d.c \
	)

WASI_BINARIES:=$(patsubst %.c,%.wasm,$(AVAILABLE_BENCHMARKS))
NATIVE_BINARIES:=$(patsubst %.c,%.native,$(AVAILABLE_BENCHMARKS))

all: polybench-c-3.2 wasi-sdk wasi-binaries

wasi-sdk:
	@echo '[Downloading] WASI SDK'
	@wget 'https://github.com/WebAssembly/wasi-sdk/releases/download/wasi-sdk-$(WASI_SDK_TAG)/wasi-sdk-$(WASI_SDK_VERSION)-linux.tar.gz' 2>/dev/null
	@echo '[Extracting] WASI SDK'
	@tar xzf wasi-sdk-$(WASI_SDK_VERSION)-linux.tar.gz
	@rm wasi-sdk-$(WASI_SDK_VERSION)-linux.tar.gz
	@mv wasi-sdk-12.0 $@

wasi-binaries: benchmark-binaries $(WASI_BINARIES) $(NATIVE_BINARIES)
	@mv $(WASI_BINARIES) $(NATIVE_BINARIES) $</

benchmark-binaries:
	@echo '[Directory] $@'
	@mkdir -p $@

$(WASI_BINARIES): %.wasm: %.c wasi-sdk Makefile
	@echo "[Compiling for WASI] $(shell basename $*)"
	@$(CC) -O3 -I $(POLYBENCH_ROOT)/utilities -I $(shell dirname $<) $(POLYBENCH_ROOT)/utilities/polybench.c $< -DPOLYBENCH_TIME -o $@

$(NATIVE_BINARIES): %.native: %.c wasi-sdk Makefile
	@echo "[Compiling Native] $(shell basename $*)"
	@clang -O3 -I $(POLYBENCH_ROOT)/utilities -I $(shell dirname $<) $(POLYBENCH_ROOT)/utilities/polybench.c $< -DPOLYBENCH_TIME -lm -o $@

clean:
	@echo "[Cleaned]"
	@rm -rf $(WASI_BINARIES) $(NATIVE_BINARIES) benchmark-binaries *~

polybench-c-3.2:
	@echo '[Downloading] PolyBench/C'
	@wget 'https://web.cs.ucla.edu/~pouchet/software/polybench/download/polybench-c-3.2.tar.gz' 2>/dev/null
	@echo '[Extracting] PolyBench/C'
	@tar xzf polybench-c-3.2.tar.gz
	@rm polybench-c-3.2.tar.gz

nuke: clean
	@echo "[Nuked]"
	@rm -rf wasi-sdk* polybench-c-3.2/
