WASI_SDK_VERSION:=12.0
WASI_SDK_TAG:=12

WASICC:=wasi-sdk/bin/clang
WASICFLAGS:=--sysroot wasi-sdk/share/wasi-sysroot

# We put a `../..` here because of where the compilation is done
DDWASICC:=$$(realpath ../../$(WASICC))
DDWASICFLAGS:=--sysroot $$(realpath ../../wasi-sdk/share/wasi-sysroot)

AFLCC:=afl/afl-clang-fast
DDAFLCC:=$$(realpath ../../$(AFLCC))

LIBPNG_VERSION_TAG:=v1.6.36
LIBPNG_COMMIT:=eddf9023206dc40974c26f589ee2ad63a4227a1e
# LIBPNG_VERSION_TAG:=v1.4.2
# LIBPNG_COMMIT:=bb56c39d16523032fc5b6821ad5e20c8f7412c2d
LIBJPEGTURBO_VERSION_TAG:=2.1.1
LIBJPEGTURBO_COMMIT:=0a9b9721782d3a60a5c16c8c9a7abf3d4b1ecd42
# LIBJPEGTURBO_VERSION_TAG:=2.0.0
# LIBJPEGTURBO_COMMIT:=574f3a772c96dc9db2c98ef24706feb3f6dbda9a

LIBPNGINCLUDE:=                   \
	-I libpng-src             \
	-I libpng-src/build       \
	-I zlib-src               \
	-I zlib-src/build         \
	libpng-src/build/libpng.a \
	zlib-src/build/libz.a

LIBPNGINCAFL:=$(subst /build,/build-afl,$(LIBPNGINCLUDE))

LIBJPEGTURBOINCLUDE:=                            \
	-I libjpeg-turbo-src/                    \
	-I libjpeg-turbo-src/build/              \
	libjpeg-turbo-src/build/libturbojpeg.a

LIBJPEGTURBOINCAFL:=$(subst /build,/build-afl,$(LIBJPEGTURBOINCLUDE))

NETPBMINCLUDE:=                    \
	-I netpbm-src/lib          \
	netpbm-src/lib/libnetpbm.a

all:
	$(error 'Run either "make wasm" or "make native"')

wasm: libpng-conv.wasm libjpeg-turbo-conv.wasm netpbm-conv.wasm

native: libpng-src/build-native/libpng.a zlib-src/build-native/libz.a libjpeg-turbo-src/build-native/libturbojpeg.a netpbm-src-native/lib/libnetpbm.a

fuzz-jpg: afl libjpeg-turbo-conv.afl-native
	mkdir -p jpg-fuzz-inp
	cp ../test_images/CVE-*.jpg jpg-fuzz-inp/
	convert ../test_images/example.jpg -resize 30x30 jpg-fuzz-inp/example.jpg
	AFL_AUTORESUME=1 afl/afl-fuzz -T jpg -D -i jpg-fuzz-inp -o jpg-fuzz-out -- ./libjpeg-turbo-conv.afl-native @@

fuzz-png: afl libpng-conv.afl-native
	mkdir -p png-fuzz-inp
	cp ../test_images/CVE-*.png png-fuzz-inp/
	convert ../test_images/example.png -resize 30x30 png-fuzz-inp/example.png
	AFL_AUTORESUME=1 afl/afl-fuzz -T png -D -i png-fuzz-inp -o png-fuzz-out -- ./libpng-conv.afl-native @@

afl-builds: libjpeg-turbo-conv.afl-native libpng-conv.afl-native

libjpeg-turbo-conv.wasm: src/jpg2jpg.c src/utils.h src/utils.c wasi-sdk libjpeg-turbo-src/build/libturbojpeg.a src/setjmp-magic.c
	@echo "[libjpeg-turbo] Building $@"
	@$(WASICC) $(WASICFLAGS) -DWASMMAIN -O3 $(LIBJPEGTURBOINCLUDE) $< src/utils.c src/setjmp-magic.c -o $@

libjpeg-turbo-conv.afl-native: src/jpg2jpg.c src/utils.h src/utils.c afl libjpeg-turbo-src/build-afl/libturbojpeg.a
	@echo "[libjpeg-turbo] Building $@"
	@$(AFLCC) -Wno-unknown-attributes -DFUZZINGBUILD -O3 $(LIBJPEGTURBOINCAFL) $< src/utils.c $(LIBJPEGTURBOINCAFL) -o $@

libpng-conv.wasm: src/png2png.c src/utils.h src/utils.c wasi-sdk libpng-src/build/libpng.a zlib-src/build/libz.a
	@echo "[libpng] Building $@"
	@$(WASICC) $(WASICFLAGS) -DWASMMAIN -O3 $(LIBPNGINCLUDE) $< src/utils.c -o $@

libpng-conv.afl-native: src/png2png.c src/utils.h src/utils.c afl libpng-src/build-afl/libpng.a zlib-src/build-afl/libz.a
	@echo "[libpng] Building $@"
	@$(AFLCC) -Wno-unknown-attributes -DFUZZINGBUILD -O3 $(LIBPNGINCAFL) $< src/utils.c $(LIBPNGINCAFL) -o $@

netpbm-conv.wasm: src/gif2pnm.c src/utils.h src/utils.c wasi-sdk netpbm-src/lib/libnetpbm.a
	@echo "[netpbm] Building $@"
	@$(WASICC) $(WASICFLAGS) -DWASMMAIN -O3 $(NETPBMINCLUDE) $< src/utils.c -o $@

libjpeg-turbo-src/build/libturbojpeg.a: libjpeg-turbo-src wasi-sdk src/setjmp-magic.h src/setjmp-magic.c
	@echo '[libjpeg-turbo] Configuring'
	@cp src/setjmp-magic.h $</setjmp.h
	@cp src/setjmp-magic.c $</setjmp.c
	@rm -rf $</build
	@mkdir -p $</build
	@sed -i 's/tjbench-static tjbench.c tjutil.c/tjbench-static tjbench.c setjmp.c tjutil.c/' $</CMakeLists.txt
	@sed -i 's/tjunittest-static tjunittest.c tjutil.c/tjunittest-static tjunittest.c setjmp.c tjutil.c/' $</CMakeLists.txt
	@cd $</build && CC="$(DDWASICC)" CFLAGS="$(DDWASICFLAGS)" cmake .. -Wno-dev -D ENABLE_SHARED=OFF -D ENABLE_STATIC=ON -D WITH_TURBOJPEG=ON -D WITH_SIMD=OFF >/dev/null
	@echo '[libjpeg-turbo] Building'
	@cd $</build && make >/dev/null 2>/dev/null

libjpeg-turbo-src/build-afl/libturbojpeg.a: libjpeg-turbo-src afl
	@echo '[libjpeg-turbo] Configuring afl-instrumentation'
	@rm -rf $</build-afl
	@mkdir -p $</build-afl
	@cd $</build-afl && CC="$(DDAFLCC)" cmake .. -Wno-dev -D ENABLE_SHARED=OFF -D ENABLE_STATIC=ON -D WITH_TURBOJPEG=ON -D WITH_SIMD=OFF >/dev/null
	@echo '[libjpeg-turbo] Building afl-instrumentation'
	@cd $</build-afl && make >/dev/null 2>/dev/null

libjpeg-turbo-src/build-native/libturbojpeg.a: libjpeg-turbo-src
	@echo '[libjpeg-turbo] Configuring native'
	@rm -rf $</build-native
	@mkdir -p $</build-native
	@cd $</build-native && CC=gcc cmake .. -Wno-dev -D ENABLE_SHARED=OFF -D ENABLE_STATIC=ON -D WITH_TURBOJPEG=ON -D WITH_SIMD=OFF >/dev/null
	@echo '[libjpeg-turbo] Building native'
	@cd $</build-native && make >/dev/null 2>/dev/null

libjpeg-turbo-src:
	@echo '[libjpeg-turbo] Cloning source'
	@git clone https://github.com/libjpeg-turbo/libjpeg-turbo $@ 2>/dev/null
	@echo '[libjpeg-turbo] Switching to version v$(LIBJPEGTURBO_VERSION_TAG)'
	@cd $@ && git checkout -b v$(LIBJPEGTURBO_VERSION_TAG) $(LIBJPEGTURBO_VERSION_TAG) 2>/dev/null
	@cd $@ && git rev-parse HEAD | grep $(LIBJPEGTURBO_COMMIT) >/dev/null

libpng-src/build/libpng.a: libpng-src zlib-src/build/libz.a wasi-sdk src/setjmp-magic.h src/setjmp-magic.c
	@echo '[libpng] Configuring'
	@cp src/setjmp-magic.h $</setjmp.h
	@cp src/setjmp-magic.c $</setjmp.c
	@rm -rf $</build
	@mkdir -p $</build
ifeq (v1.4.2,$(LIBPNG_VERSION_TAG))
	@sed -i 's/^find_package(ZLIB REQUIRED)$$/# find_package(ZLIB REQUIRED)/' $</CMakeLists.txt
endif
	@sed -i 's/^  pngwutil.c$$/  pngwutil.c setjmp.c/' $</CMakeLists.txt
	@cd $</build && CC="$(DDWASICC)" CFLAGS="$(DDWASICFLAGS) -I ../../zlib-src -I ../../zlib-src/build" cmake .. -D WASI_SDK_PREFIX=$$(realpath ../../wasi-sdk) -D CMAKE_TOOLCHAIN_FILE=../../wasi-sdk/share/cmake/wasi-sdk.cmake -D PNG_BUILD_ZLIB=../../zlib-src/build -D ZLIB_INCLUDE_DIR=../../zlib-src/build -D PNG_SHARED=OFF  >/dev/null 2>/dev/null
	@echo '[libpng] Building'
	@cd $</build && make >/dev/null
ifeq (v1.4.2,$(LIBPNG_VERSION_TAG))
	@cp $</build/libpng14.a $@
endif

libpng-src/build-afl/libpng.a: libpng-src zlib-src/build-afl/libz.a afl
	@echo '[libpng] Configuring afl-instrumentation'
	@rm -rf $</build-afl
	@mkdir -p $</build-afl
	@cd $</build-afl && CC="$(DDAFLCC)" CFLAGS="-I ../../zlib-src -I ../../zlib-src/build-afl" cmake .. -D PNG_BUILD_ZLIB=../../zlib-src/build-afl -D ZLIB_INCLUDE_DIR=../../zlib-src/build-afl -D PNG_SHARED=OFF  >/dev/null 2>/dev/null
	@echo '[libpng] Building afl-instrumentation'
	@cd $</build-afl && make >/dev/null

libpng-src/build-native/libpng.a: libpng-src zlib-src/build-native/libz.a
	@echo '[libpng] Configuring native'
	@rm -rf $</build-native
	@mkdir -p $</build-native
	@cd $</build-native && CC=gcc CFLAGS="-I ../../zlib-src -I ../../zlib-src/build-native" cmake .. -D PNG_BUILD_ZLIB=../../zlib-src/build-native -D ZLIB_INCLUDE_DIR=../../zlib-src/build-native -D PNG_SHARED=OFF  >/dev/null 2>/dev/null
	@echo '[libpng] Building native'
	@cd $</build-native && make >/dev/null

libpng-src:
	@echo '[libpng] Cloning source'
	@git clone git://git.code.sf.net/p/libpng/code $@ 2>/dev/null
	@echo '[libpng] Switching to version $(LIBPNG_VERSION_TAG)'
	@cd $@ && git checkout -b $(LIBPNG_VERSION_TAG) $(LIBPNG_VERSION_TAG) 2>/dev/null
	@cd $@ && git rev-parse HEAD | grep $(LIBPNG_COMMIT) >/dev/null

zlib-src/build/libz.a: zlib-src wasi-sdk
	@echo '[zlib] Configuring'
	@rm -rf $</build
	@mkdir -p $</build
	@cd $</build && CC="$(DDWASICC)" CFLAGS="$(DDWASICFLAGS) -I ../../zlib-src" cmake .. >/dev/null
	@echo '[zlib] Building'
	@cd $</build && make zlibstatic >/dev/null

zlib-src/build-afl/libz.a: zlib-src wasi-sdk
	@echo '[zlib] Configuring afl-instrumentation'
	@rm -rf $</build-afl
	@mkdir -p $</build-afl
	@cd $</build-afl && CC="$(DDAFLCC)" CFLAGS="-I ../../zlib-src" cmake .. >/dev/null
	@echo '[zlib] Building afl-instrumentation'
	@cd $</build-afl && make zlibstatic >/dev/null

zlib-src/build-native/libz.a: zlib-src wasi-sdk
	@echo '[zlib] Configuring native'
	@rm -rf $</build-native
	@mkdir -p $</build-native
	@cd $</build-native && CC=gcc CFLAGS="-I ../../zlib-src" cmake .. >/dev/null
	@echo '[zlib] Building native'
	@cd $</build-native && make zlibstatic >/dev/null

zlib-src:
	@echo '[zlib] Downloading'
	@wget https://www.zlib.net/zlib-1.2.11.tar.gz 2>/dev/null
	@echo '[zlib] Extracting'
	@tar xzf zlib-1.2.11.tar.gz
	@rm zlib-1.2.11.tar.gz
	@mv zlib-1.2.11 $@

netpbm-src/lib/libnetpbm.a: netpbm-src netpbm-src/.minor-fixes netpbm-src/Makefile.config
	@echo '[netpbm] Building (it may take quite some time fist time; lots of unnecessary stuff may built)'
	@cd $< && make -j1 >/dev/null 2>/dev/null
	@touch $@

netpbm-src-native/lib/libnetpbm.a: netpbm-src netpbm-src-native/.minor-fixes netpbm-src-native/Makefile.config
	@echo '[netpbm] Building (it may take quite some time fist time; lots of unnecessary stuff may built)'
	@cd $<-native && make -j1 >/dev/null 2>/dev/null
	@touch $@

netpbm-src/Makefile.config: src/netpbm-Makefile.config netpbm-src
	@echo '[netpbm] Configuring'
	@cp $< $@

netpbm-src-native/Makefile.config: src/netpbm-Makefile.config-native netpbm-src
	@echo '[netpbm] Configuring'
	@cp $< $@

netpbm-src/.minor-fixes: netpbm-src
	@echo '[netpbm] Minor fixes'
	@sed -i 's/P_tmpdir/""/g' $</lib/libpm.c
	@sed -i 's/mkstemp(buf)/-1/g' $</lib/libpm.c
	@sed -i 's/mkstemp(tmpfile)/-1/g' $</converter/ppm/picttoppm.c
	@sed -i 's/popen(command, "w")/0/g' $</converter/ppm/picttoppm.c
	@sed -i 's/pclose(pnmscale)/1/g' $</converter/ppm/picttoppm.c
	@sed -i 's/getpid(\s*)/0/g' $</lib/libppmfloyd.c $</generator/ppmpat.c $</generator/pbmtextps.c $</editor/pbmreduce.c $</editor/pnmremap.c $</editor/pamditherbw.c $</converter/other/pgmtopbm.c
	@sed -i 's/getline(/getlinexxx(/g' $</converter/ppm/xvminitoppm.c $</converter/ppm/xpmtoppm.c
	@sed -i 's/getline ARGS/getlinexxx ARGS/g' $</converter/ppm/xvminitoppm.c
	@/bin/echo -e 'all clean:\n\ttrue' > $</converter/ppm/ppmtompeg/Makefile
	@echo 'int main() {}' > $</converter/other/pstopnm.c
	@echo 'int main() {}' > $</editor/pnmsmooth.c
	@echo 'int main() {}' > $</generator/pbmtextps.c
	@echo 'int main() {}' > $</generator/ppmcolors.c
	@echo '' > $</lib/libsystem.c
	@echo 'int main() {}' > $</other/pamlookup.c
	@echo '' > $@

netpbm-src-native/.minor-fixes: netpbm-src
	@echo '[netpbm] Minor fixes'
	@sed -i 's/P_tmpdir/""/g' $<-native/lib/libpm.c
	@sed -i 's/mkstemp(buf)/-1/g' $<-native/lib/libpm.c
	@sed -i 's/mkstemp(tmpfile)/-1/g' $<-native/converter/ppm/picttoppm.c
	@sed -i 's/popen(command, "w")/0/g' $<-native/converter/ppm/picttoppm.c
	@sed -i 's/pclose(pnmscale)/1/g' $<-native/converter/ppm/picttoppm.c
	@sed -i 's/getpid(\s*)/0/g' $<-native/lib/libppmfloyd.c $<-native/generator/ppmpat.c $<-native/generator/pbmtextps.c $<-native/editor/pbmreduce.c $<-native/editor/pnmremap.c $<-native/editor/pamditherbw.c $<-native/converter/other/pgmtopbm.c
	@sed -i 's/getline(/getlinexxx(/g' $<-native/converter/ppm/xvminitoppm.c $<-native/converter/ppm/xpmtoppm.c
	@sed -i 's/getline ARGS/getlinexxx ARGS/g' $<-native/converter/ppm/xvminitoppm.c
	@/bin/echo -e 'all clean:\n\ttrue' > $<-native/converter/ppm/ppmtompeg/Makefile
	@echo 'int main() {}' > $<-native/converter/other/pstopnm.c
	@echo 'int main() {}' > $<-native/editor/pnmsmooth.c
	@echo 'int main() {}' > $<-native/generator/pbmtextps.c
	@echo 'int main() {}' > $<-native/generator/ppmcolors.c
	@echo '' > $<-native/lib/libsystem.c
	@echo 'int main() {}' > $<-native/other/pamlookup.c
	@echo '' > $@

netpbm-src:
	@echo '[netpbm] Downloading'
	@wget https://sourceforge.net/projects/netpbm/files/archive_of_old_release_system/10.26/netpbm-10.26.tgz/download -O $@.tgz 2>/dev/null
	@echo '[netpbm] Extracting'
	@tar xzf $@.tgz
	@rm $@.tgz
	@mv netpbm-10.26 $@
	@cp -r $@ $@-native

wasi-sdk:
	@echo '[WASI SDK] Downloading'
	@wget 'https://github.com/WebAssembly/wasi-sdk/releases/download/wasi-sdk-$(WASI_SDK_TAG)/wasi-sdk-$(WASI_SDK_VERSION)-linux.tar.gz' 2>/dev/null
	@echo '[WASI SDK] Extracting'
	@tar xzf wasi-sdk-$(WASI_SDK_VERSION)-linux.tar.gz
	@rm wasi-sdk-$(WASI_SDK_VERSION)-linux.tar.gz
	@mv wasi-sdk-12.0 $@

afl:
	@echo '[AFL] Downloading'
	@git clone https://github.com/AFLplusplus/AFLplusplus $@ 2>/dev/null
	@echo '[AFL] Building'
	@cd $@ && make source-only >/dev/null

# Cleanups

clean:
	rm -rf *~ wasi-sdk-$(WASI_SDK_VERSION)-linux.tar.gz zlib-1.2.11.tar.gz *.wasm *.native netpbm-src.tgz netpbm-10.26

nuke: clean
	rm -rf zlib-src libpng-src wasi-sdk libjpeg-turbo-src zlib-src netpbm-src netpbm-src-native


# Useful, but non-default stuff:

png2png: png2png.native png2png-O0g.wasm png2png-O3.wasm
	true

png2png.native: src/png2png.c src/utils.h src/utils.c
	gcc -Wno-attributes -O3 -g $< src/utils.c -lpng -o $@

png2png-O0g.wasm: src/png2png.c src/utils.h src/utils.c wasi-sdk libpng-src/build/libpng.a zlib-src/build/libz.a
	$(WASICC) $(WASICFLAGS) -g -O0 $(LIBPNGINCLUDE) $< src/utils.c -o $@

png2png-O3.wasm: src/png2png.c src/utils.h src/utils.c wasi-sdk libpng-src/build/libpng.a zlib-src/build/libz.a
	$(WASICC) $(WASICFLAGS) -O3 $(LIBPNGINCLUDE) $< src/utils.c -o $@

jpg2jpg: jpg2jpg.native jpg2jpg-O0g.wasm jpg2jpg-O3.wasm
	true

jpg2jpg.native: src/jpg2jpg.c src/utils.h src/utils.c
	gcc -Wno-attributes -O3 -g $< src/utils.c -lturbojpeg -o $@

jpg2jpg-O0g.wasm: src/jpg2jpg.c src/utils.h src/utils.c wasi-sdk libjpeg-turbo-src/build/libturbojpeg.a src/setjmp-magic.c
	$(WASICC) $(WASICFLAGS) -g -O0 $(LIBJPEGTURBOINCLUDE) $< src/utils.c src/setjmp-magic.c -o $@

jpg2jpg-O3.wasm: src/jpg2jpg.c src/utils.h src/utils.c wasi-sdk libjpeg-turbo-src/build/libturbojpeg.a src/setjmp-magic.c
	$(WASICC) $(WASICFLAGS) -O3 $(LIBJPEGTURBOINCLUDE) $< src/utils.c src/setjmp-magic.c -o $@
