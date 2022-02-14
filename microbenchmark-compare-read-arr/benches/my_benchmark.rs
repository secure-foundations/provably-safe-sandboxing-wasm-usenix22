use criterion::{black_box, criterion_group, criterion_main, BenchmarkId, Criterion};
use std::convert::TryInto;

#[inline]
pub fn direct(memory: &[u8], addr: usize) -> Option<u64> {
    let lower = addr;
    let upper = lower + std::mem::size_of::<u64>();

    let limit = lower..upper;

    let l = memory.get(limit)?;
    let l2 = l.try_into().ok()?;

    Some(<u64>::from_le_bytes(l2))
}

#[inline]
pub fn direct_unsafe(memory: &[u8], addr: usize) -> Option<u64> {
    let lower = addr;
    let upper = lower + std::mem::size_of::<u64>();

    let limit = lower..upper;

    let l = unsafe { memory.get_unchecked(limit) };
    let l2 = l.try_into().ok()?;

    Some(<u64>::from_le_bytes(l2))
}

#[inline]
pub fn wrapping_v0(memory: &[u8], addr: usize) -> Option<u64> {
    let lower = addr & (memory.len() - 1);
    let upper = (lower + std::mem::size_of::<u64>()) & (memory.len() - 1);

    let limit = lower..upper;

    let l = memory.get(limit)?;
    let l2 = l.try_into().ok()?;

    Some(<u64>::from_le_bytes(l2))
}

#[inline]
pub fn wrapping_v0_unsafe(memory: &[u8], addr: usize) -> Option<u64> {
    let lower = addr & (memory.len() - 1);
    let upper = (lower + std::mem::size_of::<u64>()) & (memory.len() - 1);

    let limit = lower..upper;

    let l = unsafe { memory.get_unchecked(limit) };
    let l2 = l.try_into().ok()?;

    Some(<u64>::from_le_bytes(l2))
}

#[inline]
pub fn wrapping_v0_xqword(memory: &[u8], addr: usize) -> Option<u64> {
    let lower = addr & (memory.len() - 8 - 1);
    let upper = (lower + std::mem::size_of::<u64>()) & (memory.len() - 8 - 1);

    let limit = lower..upper;

    let l = memory.get(limit)?;
    let l2 = l.try_into().ok()?;

    Some(<u64>::from_le_bytes(l2))
}

#[inline]
pub fn wrapping_v0_xqword_unsafe(memory: &[u8], addr: usize) -> Option<u64> {
    let lower = addr & (memory.len() - 8 - 1);
    let upper = (lower + std::mem::size_of::<u64>()) & (memory.len() - 8 - 1);

    let limit = lower..upper;

    let l = unsafe { memory.get_unchecked(limit) };
    let l2 = l.try_into().ok()?;

    Some(<u64>::from_le_bytes(l2))
}

#[inline]
pub fn wrapping_v1(memory: &[u8], addr: usize) -> Option<u64> {
    let lower = addr & (memory.len() - 1 - 8);
    let upper = lower + std::mem::size_of::<u64>();

    let limit = lower..upper;

    let l = memory.get(limit)?;
    let l2 = l.try_into().ok()?;

    Some(<u64>::from_le_bytes(l2))
}

#[inline]
pub fn wrapping_v1_unsafe(memory: &[u8], addr: usize) -> Option<u64> {
    let lower = addr & (memory.len() - 1 - 8);
    let upper = lower + std::mem::size_of::<u64>();

    let limit = lower..upper;

    let l = unsafe { memory.get_unchecked(limit) };
    let l2 = l.try_into().ok()?;

    Some(<u64>::from_le_bytes(l2))
}

#[inline]
pub fn wrapping_v1_xqword(memory: &[u8], addr: usize) -> Option<u64> {
    let lower = addr & (memory.len() - 1 - 8);
    let upper = lower + std::mem::size_of::<u64>();

    let limit = lower..upper;

    let l = memory.get(limit)?;
    let l2 = l.try_into().ok()?;

    Some(<u64>::from_le_bytes(l2))
}

#[inline]
pub fn wrapping_v1_xqword_unsafe(memory: &[u8], addr: usize) -> Option<u64> {
    let lower = addr & (memory.len() - 1 - 8);
    let upper = lower + std::mem::size_of::<u64>();

    let limit = lower..upper;

    let l = unsafe { memory.get_unchecked(limit) };
    let l2 = l.try_into().ok()?;

    Some(<u64>::from_le_bytes(l2))
}

pub fn criterion_benchmark(c: &mut Criterion) {
    let mut group = c.benchmark_group("read_u64");
    macro_rules! bench {
        ($I:expr) => {{
            const I: usize = $I;
            let v: Vec<u8> = vec![0u8; I + 8];

            // var size
            let mem: &[u8] = &v[0..I];
            group.bench_with_input(BenchmarkId::new("direct", I), mem, |b, m| {
                b.iter(|| direct(black_box(m), black_box(0)))
            });
            group.bench_with_input(BenchmarkId::new("direct_unsafe", I), mem, |b, m| {
                b.iter(|| direct_unsafe(black_box(m), black_box(0)))
            });
            group.bench_with_input(BenchmarkId::new("wrapping_v0", I), mem, |b, m| {
                b.iter(|| wrapping_v0(black_box(m), black_box(0)))
            });
            group.bench_with_input(BenchmarkId::new("wrapping_v0_unsafe", I), mem, |b, m| {
                b.iter(|| wrapping_v0_unsafe(black_box(m), black_box(0)))
            });
            group.bench_with_input(BenchmarkId::new("wrapping_v1", I), mem, |b, m| {
                b.iter(|| wrapping_v1(black_box(m), black_box(0)))
            });
            group.bench_with_input(BenchmarkId::new("wrapping_v1_unsafe", I), mem, |b, m| {
                b.iter(|| wrapping_v1_unsafe(black_box(m), black_box(0)))
            });

            // fixed size
            let mem: &[u8; I] = &mem.try_into().unwrap();
            group.bench_with_input(BenchmarkId::new("fixed-direct", I), mem, |b, m| {
                b.iter(|| direct(black_box(m), black_box(0)))
            });
            group.bench_with_input(BenchmarkId::new("fixed-direct_unsafe", I), mem, |b, m| {
                b.iter(|| direct_unsafe(black_box(m), black_box(0)))
            });
            group.bench_with_input(BenchmarkId::new("fixed-wrapping_v0", I), mem, |b, m| {
                b.iter(|| wrapping_v0(black_box(m), black_box(0)))
            });
            group.bench_with_input(
                BenchmarkId::new("fixed-wrapping_v0_unsafe", I),
                mem,
                |b, m| b.iter(|| wrapping_v0_unsafe(black_box(m), black_box(0))),
            );
            group.bench_with_input(BenchmarkId::new("fixed-wrapping_v1", I), mem, |b, m| {
                b.iter(|| wrapping_v1(black_box(m), black_box(0)))
            });
            group.bench_with_input(
                BenchmarkId::new("fixed-wrapping_v1_unsafe", I),
                mem,
                |b, m| b.iter(|| wrapping_v1_unsafe(black_box(m), black_box(0))),
            );

            // larger size
            let mem: &[u8] = &v;
            group.bench_with_input(BenchmarkId::new("wrapping_v0_xqword", I), mem, |b, m| {
                b.iter(|| wrapping_v0_xqword(black_box(m), black_box(0)))
            });
            group.bench_with_input(
                BenchmarkId::new("wrapping_v0_xqword_unsafe", I),
                mem,
                |b, m| b.iter(|| wrapping_v0_xqword_unsafe(black_box(m), black_box(0))),
            );
            group.bench_with_input(BenchmarkId::new("wrapping_v1_xqword", I), mem, |b, m| {
                b.iter(|| wrapping_v1_xqword(black_box(m), black_box(0)))
            });
            group.bench_with_input(
                BenchmarkId::new("wrapping_v1_xqword_unsafe", I),
                mem,
                |b, m| b.iter(|| wrapping_v1_xqword_unsafe(black_box(m), black_box(0))),
            );

            // larger size fixed
            let mem: &[u8; I + 8] = &mem.try_into().unwrap();
            group.bench_with_input(
                BenchmarkId::new("fixed-wrapping_v0_xqword", I),
                mem,
                |b, m| b.iter(|| wrapping_v0_xqword(black_box(m), black_box(0))),
            );
            group.bench_with_input(
                BenchmarkId::new("fixed-wrapping_v0_xqword_unsafe", I),
                mem,
                |b, m| b.iter(|| wrapping_v0_xqword_unsafe(black_box(m), black_box(0))),
            );
            group.bench_with_input(
                BenchmarkId::new("fixed-wrapping_v1_xqword", I),
                mem,
                |b, m| b.iter(|| wrapping_v1_xqword(black_box(m), black_box(0))),
            );
            group.bench_with_input(
                BenchmarkId::new("fixed-wrapping_v1_xqword_unsafe", I),
                mem,
                |b, m| b.iter(|| wrapping_v1_xqword_unsafe(black_box(m), black_box(0))),
            );
        }};
    }
    bench!(1024);
    // bench!(64 * 65536);
    group.finish();
}

criterion_group!(benches, criterion_benchmark);
criterion_main!(benches);
