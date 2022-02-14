#include <stdlib.h>
#include <stdio.h>

typedef int32_t i32;

void proc_exit(i32 exit_code) {
  exit(exit_code);
}

#define RETNULL(X) i32 X() {                    \
    /* printf(#X "\n"); */                      \
    return 0;                                   \
  }

#define RET(X, Y) i32 X() {                     \
    /* printf(#X "\n"); */                      \
    return Y;                                   \
  }

RETNULL(environ_sizes_get)
RETNULL(environ_get)
RETNULL(fd_seek)
RETNULL(fd_write)
RETNULL(fd_fdstat_get)
RET(fd_prestat_get, 8)
RETNULL(fd_prestat_dir_name)
RETNULL(fd_read)
RETNULL(fd_close)
RETNULL(wasi_initialize_context)

/*
[driver] vWasm build
/usr/bin/ld: vwasm-build/sandboxed-libjpeg-turbo-conv.o: in function `libjpeg_new_pixels':
(.text+0x164d52): undefined reference to `proc_exit'
/usr/bin/ld: (.text+0x164e87): undefined reference to `environ_sizes_get'
/usr/bin/ld: (.text+0x16509c): undefined reference to `environ_get'
/usr/bin/ld: (.text+0x166d26): undefined reference to `fd_seek'
/usr/bin/ld: (.text+0x167932): undefined reference to `fd_write'
/usr/bin/ld: (.text+0x1766b9): undefined reference to `fd_close'
/usr/bin/ld: (.text+0x176793): undefined reference to `fd_fdstat_get'
/usr/bin/ld: (.text+0x185e73): undefined reference to `fd_prestat_get'
/usr/bin/ld: (.text+0x185f98): undefined reference to `fd_prestat_dir_name'
/usr/bin/ld: vwasm-build/sandboxed-libjpeg-turbo-conv.o: in function `libjpeg_main':
(.text+0x18ef82): undefined reference to `wasi_initialize_context'
/usr/bin/ld: vwasm-build/sandboxed-netpbm-conv.o: in function `netpbm_new_databuf':
(.text+0x1d005): undefined reference to `proc_exit'
/usr/bin/ld: (.text+0x1d0dd): undefined reference to `environ_sizes_get'
/usr/bin/ld: (.text+0x1d2f2): undefined reference to `environ_get'
/usr/bin/ld: (.text+0x1f83c): undefined reference to `fd_seek'
/usr/bin/ld: (.text+0x217ba): undefined reference to `fd_write'
/usr/bin/ld: (.text+0x31fac): undefined reference to `fd_read'
/usr/bin/ld: (.text+0x32146): undefined reference to `fd_read'
/usr/bin/ld: (.text+0x32791): undefined reference to `fd_close'
/usr/bin/ld: (.text+0x3286b): undefined reference to `fd_fdstat_get'
/usr/bin/ld: (.text+0x330dd): undefined reference to `fd_prestat_get'
/usr/bin/ld: (.text+0x33202): undefined reference to `fd_prestat_dir_name'
/usr/bin/ld: vwasm-build/sandboxed-netpbm-conv.o: in function `netpbm_main':
(.text+0x38393): undefined reference to `wasi_initialize_context'
collect2: error: ld returned 1 exit status

 */
