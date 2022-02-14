RWASM:=../rWasm/target/release/rwasm
VWASM:=../benchmarks/vWasm

all: gif2jpg.native gif2jpg.rwasm-built gif2jpg.vwasm-built
	@echo '[driver] All done! Now go run "benchify"'

gif2jpg.native: src/driver.c libraries/src/utils.c libraries/src/gif2pnm.c libraries/libjpeg-turbo-src/build-native/libturbojpeg.a libraries/netpbm-src-native/lib/libnetpbm.a
	@echo '[driver] Native build'
	@gcc -o $@ $< \
		libraries/src/utils.c                                     \
		-DNOMAIN                                                  \
		libraries/src/gif2pnm.c                                   \
		libraries/src/jpg2jpg.c                                   \
		-I libraries/src/ -Wno-attributes                         \
		-I libraries/libjpeg-turbo-src/                           \
		-I libraries/libjpeg-turbo-src/build/                     \
		-I libraries/netpbm-src-native/lib                        \
		-I libraries/netpbm-src-native/lib/util/                  \
		libraries/libjpeg-turbo-src/build-native/libturbojpeg.a   \
		libraries/netpbm-src-native/lib/libnetpbm.a

gif2jpg.rwasm-built: rwasm-build/driver/src/main.rs rwasm-build/driver/Cargo.toml rwasm-build/Cargo.toml rwasm-build/sandboxed-libjpeg-turbo-conv rwasm-build/sandboxed-netpbm-conv
	@echo '[driver] rWasm build'
	@cd rwasm-build && cargo build --release
	@cp rwasm-build/target/release/driver $@

rwasm-build/sandboxed-libjpeg-turbo-conv: libraries/libjpeg-turbo-conv.wasm $(RWASM)
	@echo '[libjpeg] Compile Wasm to Rust'
	@$(RWASM) --wasi-library $< $@

rwasm-build/sandboxed-netpbm-conv: libraries/netpbm-conv.wasm $(RWASM)
	@echo '[netpbm] Compile Wasm to Rust'
	@$(RWASM) --wasi-library $< $@

gif2jpg.vwasm-built: vwasm-build/driver.c vwasm-build/sandboxed-libjpeg-turbo-conv.o vwasm-build/sandboxed-netpbm-conv.o libraries/src/utils.c vwasm-build/mockwasi.c
	@echo '[driver] vWasm build'
	@gcc -o $@ $^ -I libraries/src/ -Wno-attributes -no-pie

vwasm-build/sandboxed-libjpeg-turbo-conv.s: libraries/libjpeg-turbo-conv.wasm $(VWASM)
	@echo '[libjpeg] Compile Wasm to x64 asm using vWasm'
	@wasm2wat $< -o vwasm-build/libjpeg-turbo-conv.wat
	@wat2vasm vwasm-build/libjpeg-turbo-conv.wat -o vwasm-build/libjpeg-turbo-conv.vasm
	@ulimit -s unlimited && $(VWASM) --peephole-optimize -l wasi_sbx -p 16000 vwasm-build/libjpeg-turbo-conv.vasm > vwasm-build/sandboxed-libjpeg-turbo-conv.s || (rm -f vwasm-build/sandboxed-libjpeg-turbo-conv.s && false)

vwasm-build/sandboxed-netpbm-conv.s: libraries/netpbm-conv.wasm $(VWASM)
	@echo '[netpbm] Compile Wasm to x64 asm using vWasm'
	@wasm2wat $< -o vwasm-build/netpbm-conv.wat
	@wat2vasm vwasm-build/netpbm-conv.wat -o vwasm-build/netpbm-conv.vasm
	@ulimit -s unlimited && $(VWASM) --peephole-optimize -l wasi_sbx -p 16000 vwasm-build/netpbm-conv.vasm > vwasm-build/sandboxed-netpbm-conv.s || (rm -f vwasm-build/sandboxed-netpbm-conv.s && false)

vwasm-build/sandboxed-libjpeg-turbo-conv.o: vwasm-build/sandboxed-libjpeg-turbo-conv.s
	@echo '[libjpeg] Compile x64 asm to .o'
	@cat $< \
		| sed 's/^GLOBAL main$$/GLOBAL libjpeg_main/g' \
		| sed 's/^main:$$/libjpeg_main:/g' \
		| sed 's/^new_databuf:$$/GLOBAL new_databuf\nnew_databuf:/g' \
		| sed 's/new_databuf/libjpeg_new_databuf/g' \
		| sed 's/^create_databuf:$$/GLOBAL create_databuf\ncreate_databuf:/g' \
		| sed 's/create_databuf/libjpeg_create_databuf/g' \
		| sed 's/^new_pixels:$$/GLOBAL new_pixels\nnew_pixels:/g' \
		| sed 's/new_pixels/libjpeg_new_pixels/g' \
		| sed 's/^create_pixels:$$/GLOBAL create_pixels\ncreate_pixels:/g' \
		| sed 's/create_pixels/libjpeg_create_pixels/g' \
		| sed 's/^pixels2jpg:$$/GLOBAL libjpeg_pixels2jpg\nlibjpeg_pixels2jpg:/g' \
		> vwasm-build/libjpeg-renamed.s
	@/bin/echo -e '\n\nSECTION .text EXEC NOWRITE\nGLOBAL libjpeg_get_mem\nlibjpeg_get_mem:\n  lea rax, [MEMORY]\n  ret' >> vwasm-build/libjpeg-renamed.s
	@nasm -f elf64 vwasm-build/libjpeg-renamed.s -o $@
	@strip --strip-unneeded --wildcard --keep-symbol='libjpeg_*' --keep-symbol='internal___explicit_safe_kill' $@

vwasm-build/sandboxed-netpbm-conv.o: vwasm-build/sandboxed-netpbm-conv.s
	@echo '[netpbm] Compile x64 asm to .o'
	@cat $< \
		| sed 's/^GLOBAL main$$/GLOBAL netpbm_main/g' \
		| sed 's/^main:$$/netpbm_main:/g' \
		| sed 's/^new_databuf:$$/GLOBAL new_databuf\nnew_databuf:/g' \
		| sed 's/new_databuf/netpbm_new_databuf/g' \
		| sed 's/^create_databuf:$$/GLOBAL create_databuf\ncreate_databuf:/g' \
		| sed 's/create_databuf/netpbm_create_databuf/g' \
		| sed 's/^gif2pnm:$$/GLOBAL netpbm_gif2pnm\nnetpbm_gif2pnm:/g' \
		> vwasm-build/netpbm-renamed.s
	@/bin/echo -e '\n\nSECTION .text EXEC NOWRITE\nGLOBAL netpbm_get_mem\nnetpbm_get_mem:\n  lea rax, [MEMORY]\n  ret' >> vwasm-build/netpbm-renamed.s
	@nasm -f elf64 vwasm-build/netpbm-renamed.s -o $@
	@strip --strip-unneeded --wildcard --keep-symbol='netpbm_*' --keep-symbol='internal___explicit_safe_kill' $@

libraries/%.wasm:
	@cd libraries && $(MAKE) $(notdir $@)

libraries/libjpeg-turbo-src/build-native/libturbojpeg.a libraries/netpbm-src-native/lib/libnetpbm.a &:
	@cd libraries && $(MAKE) native

$(RWASM):
	@echo '[rWasm] Build'
	@cd ../rWasm && cargo build --release

clean:
	rm -f gif2jpg.native gif2jpg.rwasm-built

clean-more: clean
	cd rwasm-build && cargo clean

nuke: clean-more
	rm -f rwasm-build/sandboxed-libjpeg-turbo-conv rwasm-build/sandboxed-netpbm-conv
