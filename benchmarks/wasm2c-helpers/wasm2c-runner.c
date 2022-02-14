/* Runner that introduces everything necessary for running code from
   wasm2c compiled WASI modules.

   Author: Jay Bosamiya <jaybosamiya@gmail.com> */

#include <stdio.h>
#include <stdint.h>
#include "wasm-rt.h"

typedef uint8_t u8;
typedef int8_t s8;
typedef uint16_t u16;
typedef int16_t s16;
typedef uint32_t u32;
typedef int32_t s32;
typedef uint64_t u64;
typedef int64_t s64;
typedef float f32;
typedef double f64;

#ifndef WASM_RT_MODULE_PREFIX
#error WASM_RT_MODULE_PREFIX must be defined as WASMMODULE_
#endif

#define WASM_RT_PASTE_(x, y) x ## y
#define WASM_RT_PASTE(x, y) WASM_RT_PASTE_(x, y)
#define WASM_RT_ADD_PREFIX(x) WASM_RT_PASTE(WASM_RT_MODULE_PREFIX, x)

extern void WASM_RT_ADD_PREFIX(init)(void);
extern void (*WASM_RT_ADD_PREFIX(Z__startZ_vv))(void);
extern wasm_rt_memory_t (*WASM_RT_ADD_PREFIX(Z_memory));

extern void wasi_initialize_context(u8** ptr_ptr_memory, u32* ptr_mem_pages);

int main() {
  WASM_RT_ADD_PREFIX(init)();
  wasi_initialize_context(&WASM_RT_ADD_PREFIX(Z_memory)->data,
                          &WASM_RT_ADD_PREFIX(Z_memory)->pages);
  WASM_RT_ADD_PREFIX(Z__startZ_vv)();
  return 0;
}

//
// Set up function pointers as required for WASI. These all are made
// to point to a modified version of `libwasi.a` that was made for
// WASI integration in vWasm. Requires linking against
// `libwasi_wasm2c.a`, which tweaks things regarding initialization
// context to be able to support the output of wasm2c.
//

u32 args_get(u32, u32);
u32 (*Z_wasi_snapshot_preview1Z_args_getZ_iii)(u32, u32) = args_get;

u32 args_sizes_get(u32, u32);
u32 (*Z_wasi_snapshot_preview1Z_args_sizes_getZ_iii)(u32, u32) = args_sizes_get;

u32 clock_res_get(u32, u32);
u32 (*Z_wasi_snapshot_preview1Z_clock_res_getZ_iii)(u32, u32) = clock_res_get;

u32 clock_time_get(u32, u64, u32);
u32 (*Z_wasi_snapshot_preview1Z_clock_time_getZ_iiji)(u32, u64, u32) = clock_time_get;

u32 environ_get(u32, u32);
u32 (*Z_wasi_snapshot_preview1Z_environ_getZ_iii)(u32, u32) = environ_get;

u32 environ_sizes_get(u32, u32);
u32 (*Z_wasi_snapshot_preview1Z_environ_sizes_getZ_iii)(u32, u32) = environ_sizes_get;

u32 fd_advise(u32, u64, u64, u32);
u32 (*Z_wasi_snapshot_preview1Z_fd_adviseZ_iijji)(u32, u64, u64, u32) = fd_advise;

u32 fd_allocate(u32, u64, u64);
u32 (*Z_wasi_snapshot_preview1Z_fd_allocateZ_iijj)(u32, u64, u64) = fd_allocate;

u32 fd_close(u32);
u32 (*Z_wasi_snapshot_preview1Z_fd_closeZ_ii)(u32) = fd_close;

u32 fd_datasync(u32);
u32 (*Z_wasi_snapshot_preview1Z_fd_datasyncZ_ii)(u32) = fd_datasync;

u32 fd_fdstat_get(u32, u32);
u32 (*Z_wasi_snapshot_preview1Z_fd_fdstat_getZ_iii)(u32, u32) = fd_fdstat_get;

u32 fd_fdstat_set_flags(u32, u32);
u32 (*Z_wasi_snapshot_preview1Z_fd_fdstat_set_flagsZ_iii)(u32, u32) = fd_fdstat_set_flags;

u32 fd_fdstat_set_rights(u32, u64, u64);
u32 (*Z_wasi_snapshot_preview1Z_fd_fdstat_set_rightsZ_iijj)(u32, u64, u64) = fd_fdstat_set_rights;

u32 fd_filestat_get(u32, u32);
u32 (*Z_wasi_snapshot_preview1Z_fd_filestat_getZ_iii)(u32, u32) = fd_filestat_get;

u32 fd_filestat_set_size(u32, u64);
u32 (*Z_wasi_snapshot_preview1Z_fd_filestat_set_sizeZ_iij)(u32, u64) = fd_filestat_set_size;

u32 fd_filestat_set_times(u32, u64, u64, u32);
u32 (*Z_wasi_snapshot_preview1Z_fd_filestat_set_timesZ_iijji)(u32, u64, u64, u32) = fd_filestat_set_times;

u32 fd_pread(u32, u32, u32, u64, u32);
u32 (*Z_wasi_snapshot_preview1Z_fd_preadZ_iiiiji)(u32, u32, u32, u64, u32) = fd_pread;

u32 fd_prestat_dir_name(u32, u32, u32);
u32 (*Z_wasi_snapshot_preview1Z_fd_prestat_dir_nameZ_iiii)(u32, u32, u32) = fd_prestat_dir_name;

u32 fd_prestat_get(u32, u32);
u32 (*Z_wasi_snapshot_preview1Z_fd_prestat_getZ_iii)(u32, u32) = fd_prestat_get;

u32 fd_pwrite(u32, u32, u32, u64, u32);
u32 (*Z_wasi_snapshot_preview1Z_fd_pwriteZ_iiiiji)(u32, u32, u32, u64, u32) = fd_pwrite;

u32 fd_readdir(u32, u32, u32, u64, u32);
u32 (*Z_wasi_snapshot_preview1Z_fd_readdirZ_iiiiji)(u32, u32, u32, u64, u32) = fd_readdir;

u32 fd_read(u32, u32, u32, u32);
u32 (*Z_wasi_snapshot_preview1Z_fd_readZ_iiiii)(u32, u32, u32, u32) = fd_read;

u32 fd_renumber(u32, u32);
u32 (*Z_wasi_snapshot_preview1Z_fd_renumberZ_iii)(u32, u32) = fd_renumber;

u32 fd_seek(u32, u64, u32, u32);
u32 (*Z_wasi_snapshot_preview1Z_fd_seekZ_iijii)(u32, u64, u32, u32) = fd_seek;

u32 fd_sync(u32);
u32 (*Z_wasi_snapshot_preview1Z_fd_syncZ_ii)(u32) = fd_sync;

u32 fd_tell(u32, u32);
u32 (*Z_wasi_snapshot_preview1Z_fd_tellZ_iii)(u32, u32) = fd_tell;

u32 fd_write(u32, u32, u32, u32);
u32 (*Z_wasi_snapshot_preview1Z_fd_writeZ_iiiii)(u32, u32, u32, u32) = fd_write;

u32 path_create_directory(u32, u32, u32);
u32 (*Z_wasi_snapshot_preview1Z_path_create_directoryZ_iiii)(u32, u32, u32) = path_create_directory;

u32 path_filestat_get(u32, u32, u32, u32, u32);
u32 (*Z_wasi_snapshot_preview1Z_path_filestat_getZ_iiiiii)(u32, u32, u32, u32, u32) = path_filestat_get;

u32 path_filestat_set_times(u32, u32, u32, u32, u64, u64, u32);
u32 (*Z_wasi_snapshot_preview1Z_path_filestat_set_timesZ_iiiiijji)(u32, u32, u32, u32, u64, u64, u32) = path_filestat_set_times;

u32 path_link(u32, u32, u32, u32, u32, u32, u32);
u32 (*Z_wasi_snapshot_preview1Z_path_linkZ_iiiiiiii)(u32, u32, u32, u32, u32, u32, u32) = path_link;

u32 path_open(u32, u32, u32, u32, u32, u64, u64, u32, u32);
u32 (*Z_wasi_snapshot_preview1Z_path_openZ_iiiiiijjii)(u32, u32, u32, u32, u32, u64, u64, u32, u32) = path_open;

u32 path_readlink(u32, u32, u32, u32, u32, u32);
u32 (*Z_wasi_snapshot_preview1Z_path_readlinkZ_iiiiiii)(u32, u32, u32, u32, u32, u32) = path_readlink;

u32 path_remove_directory(u32, u32, u32);
u32 (*Z_wasi_snapshot_preview1Z_path_remove_directoryZ_iiii)(u32, u32, u32) = path_remove_directory;

u32 path_rename(u32, u32, u32, u32, u32, u32);
u32 (*Z_wasi_snapshot_preview1Z_path_renameZ_iiiiiii)(u32, u32, u32, u32, u32, u32) = path_rename;

u32 path_symlink(u32, u32, u32, u32, u32);
u32 (*Z_wasi_snapshot_preview1Z_path_symlinkZ_iiiiii)(u32, u32, u32, u32, u32) = path_symlink;

u32 path_unlink_file(u32, u32, u32);
u32 (*Z_wasi_snapshot_preview1Z_path_unlink_fileZ_iiii)(u32, u32, u32) = path_unlink_file;

u32 poll_oneoff(u32, u32, u32, u32);
u32 (*Z_wasi_snapshot_preview1Z_poll_oneoffZ_iiiii)(u32, u32, u32, u32) = poll_oneoff;

void proc_exit(u32);
void (*Z_wasi_snapshot_preview1Z_proc_exitZ_vi)(u32) = proc_exit;

u32 proc_raise(u32);
u32 (*Z_wasi_snapshot_preview1Z_proc_raiseZ_ii)(u32) = proc_raise;

u32 random_get(u32, u32);
u32 (*Z_wasi_snapshot_preview1Z_random_getZ_iii)(u32, u32) = random_get;

u32 sched_yield();
u32 (*Z_wasi_snapshot_preview1Z_sched_yieldZ_i)() = sched_yield;

u32 sock_recv(u32, u32, u32, u32, u32, u32);
u32 (*Z_wasi_snapshot_preview1Z_sock_recvZ_iiiiiii)(u32, u32, u32, u32, u32, u32) = sock_recv;

u32 sock_send(u32, u32, u32, u32, u32);
u32 (*Z_wasi_snapshot_preview1Z_sock_sendZ_iiiiii)(u32, u32, u32, u32, u32) = sock_send;

u32 sock_shutdown(u32, u32);
u32 (*Z_wasi_snapshot_preview1Z_sock_shutdownZ_iii)(u32, u32) = sock_shutdown;
