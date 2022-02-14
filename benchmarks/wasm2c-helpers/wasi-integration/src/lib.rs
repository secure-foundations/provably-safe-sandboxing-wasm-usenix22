#![allow(unused_variables, dead_code)]

mod guest_mem_wrapper;

use crate::guest_mem_wrapper::GuestMemWrapper;

/// The `WasiCtx` required by `wasi_common` for all of its calls.
static mut WASI_CTX: Option<wasi_common::WasiCtx> = None;
/// Pointer to Wasm memory.
static mut PTR_PTR_MEMORY: Option<*mut *mut u8> = None;
/// Pointer to number of Wasm 64K pages currently active in Wasm memory.
static mut PTR_MEM_PAGES: Option<*mut u32> = None;

/// Initialize the global context for all the WASI calls in this
/// library. Must be called exactly once before any other WASI call.
///
/// Arguments:
///
/// + `ptr_ptr_memory`: Pointer to a pointer to the main Wasm linear memory.
/// + `ptr_mem_pages`: Pointer to a `u32` keeping track of number of
///    active pages in linear memory.
#[no_mangle]
pub extern "C" fn wasi_initialize_context(ptr_ptr_memory: *mut *mut u8, ptr_mem_pages: *mut u32) {
    let ctx =
        wasi_common::WasiCtx::new(std::env::args()).expect("Unable to initialize WASI context");
    let old = unsafe { WASI_CTX.replace(ctx) };
    assert_eq!(old.is_none(), true);
    let old = unsafe { PTR_PTR_MEMORY.replace(ptr_ptr_memory) };
    assert_eq!(old, None);
    let old = unsafe { PTR_MEM_PAGES.replace(ptr_mem_pages) };
    assert_eq!(old, None);
}

/// Get access to a wrapped version of memory that supports all the
/// operations needed by `wasi_common` to perform operations on the
/// memory. Automatically picks up the memory location and memory size
/// from the relevant globals.
///
/// Expects: `wasi_initialize_context` to have been called first.
fn get_memory() -> GuestMemWrapper<'static> {
    GuestMemWrapper::new(unsafe {
        const IMPOSSIBLE: &str = "wasi_initialize_context not called?";
        let ptr_mem_addr: *mut *mut u8 = PTR_PTR_MEMORY.expect(IMPOSSIBLE);
        let mem_addr: *mut u8 = *ptr_mem_addr;
        let mem_pages: u32 = *PTR_MEM_PAGES.expect(IMPOSSIBLE);
        std::slice::from_raw_parts_mut(mem_addr, 65536 * mem_pages as usize)
    })
}

macro_rules! wasi_fn {
    ($name:ident($($argname:ident : $type:ty),*) -> $ret:ty { $body:expr }) => {
        #[no_mangle]
        pub extern "C" fn $name($($argname:$type),*) -> $ret {
            let should_trace_calls = std::env::var("WASI_TRACE_CALLS").is_ok();
            if should_trace_calls {
                eprintln!("[WASI_TRACE_CALLS] {}", stringify!($name));
                eprintln!("                   called with {:?}", ($($argname),*));
            }
            let ret = $body;
            if should_trace_calls {
                eprintln!("                   returned with {:?}", ret);
            }
            ret
        }
    };
    ($name:ident($($argname:ident : $type:ty),*) -> $ret:ty) => {
        wasi_fn!($name($($argname:$type),*) -> $ret {
            wasi_common::wasi::wasi_snapshot_preview1::$name(
                unsafe { WASI_CTX.as_ref() }.expect("wasi_initialize_context not called?"),
                &get_memory(),
                $($argname),*
            )
        });
    };
}

wasi_fn! { args_get(argv: i32, argv_buf: i32) -> i32 }

wasi_fn! { args_sizes_get(argc_ptr: i32, argv_buf_size_ptr: i32) -> i32 }

wasi_fn! { clock_res_get(id: i32, resolution_ptr: i32) -> i32 }

wasi_fn! { clock_time_get(id: i32, precision: i64, time_ptr: i32) -> i32 }

wasi_fn! { environ_get(environ: i32, environ_buf: i32) -> i32 }

wasi_fn! { environ_sizes_get(environc_ptr: i32, environ_buf_size_ptr: i32) -> i32 }

wasi_fn! { fd_advise(fd: i32, offset: i64, len: i64, advice: i32) -> i32 }

wasi_fn! { fd_allocate(fd: i32, offset: i64, len: i64) -> i32 }

wasi_fn! { fd_close(fd: i32) -> i32 }

wasi_fn! { fd_datasync(fd: i32) -> i32 }

wasi_fn! { fd_fdstat_get(fd: i32, stat_ptr: i32) -> i32 }

wasi_fn! { fd_fdstat_set_flags(fd: i32, flags: i32) -> i32 }

wasi_fn! { fd_fdstat_set_rights(fd: i32, fs_rights_base: i64, fs_rights_inheriting: i64) -> i32 }

wasi_fn! { fd_filestat_get(fd: i32, buf_ptr: i32) -> i32 }

wasi_fn! { fd_filestat_set_size(fd: i32, size: i64) -> i32 }

wasi_fn! { fd_filestat_set_times(fd: i32, atim: i64, mtim: i64, fst_flags: i32) -> i32 }

wasi_fn! { fd_pread(fd: i32, iovs_ptr: i32, iovs_len: i32, offset: i64, nread_ptr: i32) -> i32 }

wasi_fn! { fd_prestat_dir_name(fd: i32, path: i32, path_len: i32) -> i32 }

wasi_fn! { fd_prestat_get(fd: i32, buf_ptr: i32) -> i32 }

wasi_fn! { fd_pwrite(fd: i32, iovs_ptr: i32, iovs_len: i32, offset: i64, nwritten_ptr: i32) -> i32 }

wasi_fn! { fd_readdir(fd: i32, buf: i32, buf_len: i32, cookie: i64, bufused_ptr: i32) -> i32 }

wasi_fn! { fd_read(fd: i32, iovs_ptr: i32, iovs_len: i32, nread_ptr: i32) -> i32 }

wasi_fn! { fd_renumber(fd: i32, to: i32) -> i32 }

wasi_fn! { fd_seek(fd: i32, offset: i64, whence: i32, newoffset_ptr: i32) -> i32 }

wasi_fn! { fd_sync(fd: i32) -> i32 }

wasi_fn! { fd_tell(fd: i32, offset_ptr: i32) -> i32 }

wasi_fn! { fd_write(fd: i32, iovs_ptr: i32, iovs_len: i32, nwritten_ptr: i32) -> i32 }

wasi_fn! { path_create_directory(fd: i32, path_ptr: i32, path_len: i32) -> i32 }

wasi_fn! { path_filestat_get(fd: i32, flags: i32, path_ptr: i32, path_len: i32, buf_ptr: i32) -> i32 }

wasi_fn! { path_filestat_set_times(fd: i32, flags: i32, path_ptr: i32, path_len: i32, atim: i64, mtim: i64, fst_flags: i32) -> i32 }

wasi_fn! { path_link(old_fd: i32, old_flags: i32, old_path_ptr: i32, old_path_len: i32, new_fd: i32, new_path_ptr: i32, new_path_len: i32) -> i32 }

wasi_fn! { path_open(fd: i32, dirflags: i32, path_ptr: i32, path_len: i32, oflags: i32, fs_rights_base: i64, fs_rights_inherting: i64, fdflags: i32, opened_fd_ptr: i32) -> i32 }

wasi_fn! { path_readlink(fd: i32, path_ptr: i32, path_len: i32, buf: i32, buf_len: i32, bufused_ptr: i32) -> i32 }

wasi_fn! { path_remove_directory(fd: i32, path_ptr: i32, path_len: i32) -> i32 }

wasi_fn! { path_rename(fd: i32, old_path_ptr: i32, old_path_len: i32, new_fd: i32, new_path_ptr: i32, new_path_len: i32) -> i32 }

wasi_fn! { path_symlink(old_path_ptr: i32, old_path_len: i32, fd: i32, new_path_ptr: i32, new_path_len: i32) -> i32 }

wasi_fn! { path_unlink_file(fd: i32, path_ptr: i32, path_len: i32) -> i32 }

wasi_fn! { poll_oneoff(in_: i32, out: i32, nsubscriptions: i32, nevents_ptr: i32) -> i32 }

// Turns out `wasi_common` requires us to manually implement this one
// by explicitly marking it unimplemented. We simply want the whole
// process to exit at this point.
fn exit_process_with(rval: i32) -> () {
    // We perform this indirection of going to `exit_process_with` to
    // prevent warnings about unreachable code for the tracing
    // functionality. It can be removed and the overall macro can have
    // a `#[allow(unreachable_code)] but that adds the warning at more
    // places than we want to, so instead it is good to simply
    // restrict it just to this one function.
    std::process::exit(rval)
}
wasi_fn! { proc_exit(rval: i32) -> () {
    exit_process_with(rval)
} }

wasi_fn! { proc_raise(sig: i32) -> i32 }

wasi_fn! { random_get(buf: i32, buf_len: i32) -> i32 }

wasi_fn! { sched_yield() -> i32 }

wasi_fn! { sock_recv(fd: i32, ri_data_ptr: i32, ri_data_len: i32, ri_flags: i32, ro_datalen_ptr: i32, ro_flags_ptr: i32) -> i32 }

wasi_fn! { sock_send(fd: i32, si_data_ptr: i32, si_data_len: i32, si_flags: i32, so_datalen_ptr: i32) -> i32 }

wasi_fn! { sock_shutdown(fd: i32, how: i32) -> i32 }
