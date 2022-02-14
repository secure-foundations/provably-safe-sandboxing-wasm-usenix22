use std::convert::TryInto;

type LibJpeg = sandboxed_libjpeg_turbo_conv::WasmModule;
type NetPBM = sandboxed_netpbm_conv::WasmModule;

#[inline]
fn read_mem_u32(memory: &[u8], addr: usize) -> Option<u32> {
    Some(u32::from_le_bytes(
        memory
            .get(addr..addr + std::mem::size_of::<u32>())?
            .try_into()
            .ok()?,
    ))
}

fn main() {
    let mut libjpeg: LibJpeg = sandboxed_libjpeg_turbo_conv::init_module();
    let mut netpbm: NetPBM = sandboxed_netpbm_conv::init_module();

    let argv = std::env::args().collect::<Vec<_>>();

    if argv.len() != 3 {
        println!("Usage: {} imagein.gif imageout.jpg", argv[0]);
        std::process::exit(1);
    }

    let inp_bytes = std::fs::read(&argv[1]).unwrap();
    println!(">>> read");

    let imagein_p = netpbm.new_databuf().unwrap();
    netpbm
        .create_databuf(imagein_p, inp_bytes.len() as i32)
        .unwrap();

    let imagein_p_data_p = read_mem_u32(netpbm.get_memory(), imagein_p as usize).unwrap();
    // let imagein_p_len = read_mem_u32(netpbm.get_memory(), imagein_p as usize + 4).unwrap();
    // assert_eq!(imagein_p_len as usize, inp_bytes.len());

    netpbm.get_memory()[imagein_p_data_p as usize..imagein_p_data_p as usize + inp_bytes.len()]
        .copy_from_slice(&inp_bytes);
    // println!(">>> copied data");

    let pnmimage_p = netpbm.new_databuf().unwrap();
    match netpbm.gif2pnm(pnmimage_p, imagein_p) {
        Some(()) => {}
        None => {
            panic!("Caught a sandbox escape attempt in netpbm");
        }
    }
    let pnmimage_p_data_p = read_mem_u32(netpbm.get_memory(), pnmimage_p as usize).unwrap();
    let pnmimage_p_len = read_mem_u32(netpbm.get_memory(), pnmimage_p as usize + 4).unwrap();
    let pnmimage = &netpbm.get_memory()
        [pnmimage_p_data_p as usize..pnmimage_p_data_p as usize + pnmimage_p_len as usize];
    println!(">>> conv gif");

    assert_eq!(pnmimage[0], 'P' as u8);
    assert_eq!(pnmimage[1], '6' as u8);
    assert_eq!(pnmimage[2], '\n' as u8);

    let line0e = 2;
    let line1e = (line0e + 1)
        + pnmimage[line0e + 1..]
            .iter()
            .position(|&c| c == '\n' as u8)
            .unwrap();
    let line1 = String::from_utf8(pnmimage[line0e + 1..line1e].to_vec()).unwrap();
    let line2e = (line1e + 1)
        + pnmimage[line1e + 1..]
            .iter()
            .position(|&c| c == '\n' as u8)
            .unwrap();
    let line2 = String::from_utf8(pnmimage[line1e + 1..line2e].to_vec()).unwrap();

    let width: i32 = line1
        .split_ascii_whitespace()
        .next()
        .unwrap()
        .parse()
        .unwrap();
    let height: i32 = line1
        .split_ascii_whitespace()
        .skip(1)
        .next()
        .unwrap()
        .parse()
        .unwrap();
    let max_color_value: i32 = line2.parse().unwrap();
    assert_eq!(max_color_value, 255);
    let data = &pnmimage[line2e + 1..];
    // assert_eq!(data.len(), (width * height * 3) as usize);
    println!(">>> grabbed pnm data");

    let pxls_p = libjpeg.new_pixels().unwrap();
    libjpeg
        .create_pixels(pxls_p, data.len() as i32, width, height)
        .unwrap();
    let pxls_p_data_p = read_mem_u32(libjpeg.get_memory(), pxls_p as usize).unwrap();
    // let pxls_p_width = read_mem_u32(libjpeg.get_memory(), pxls_p as usize + 4).unwrap();
    // let pxls_p_height = read_mem_u32(libjpeg.get_memory(), pxls_p as usize + 8).unwrap();
    // assert_eq!(pxls_p_width as i32, width);
    // assert_eq!(pxls_p_height as i32, height);

    libjpeg.get_memory()[pxls_p_data_p as usize..pxls_p_data_p as usize + data.len()]
        .copy_from_slice(data);
    // println!(">>> copied into libjpeg space");

    let imageout_p = libjpeg.new_databuf().unwrap();
    match libjpeg.pixels2jpg(imageout_p, pxls_p) {
        Some(()) => {}
        None => {
            panic!("Caught a sandbox escape attempt in libjpeg")
        }
    }
    let imageout_p_data_p = read_mem_u32(libjpeg.get_memory(), imageout_p as usize).unwrap();
    let imageout_p_len = read_mem_u32(libjpeg.get_memory(), imageout_p as usize + 4).unwrap();
    let imageout = &libjpeg.get_memory()
        [imageout_p_data_p as usize..imageout_p_data_p as usize + imageout_p_len as usize];
    println!(">>> conv jpg");

    std::fs::write(&argv[2], imageout).unwrap();
    println!(">>> write");
}
