(module
  (type (;0;) (func (param i32 i32 i32) (result i32)))
  (type (;1;) (func (param i32) (result i32)))
  (type (;2;) (func (param i32 i32) (result i32)))
  (type (;3;) (func (param i32 i64 i32) (result i64)))
  (type (;4;) (func))
  (type (;5;) (func (param i32 i32 i32)))
  (type (;6;) (func (param i32)))
  (type (;7;) (func (param i32 i32)))
  (type (;8;) (func (result i32)))
  (type (;9;) (func (param i32 i32 i32 i32)))
  (type (;10;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;11;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;12;) (func (param i32 i64 i32) (result i32)))
  (type (;13;) (func (param i32 i64 i32 i32) (result i32)))
  (type (;14;) (func (param i64) (result i32)))
  (type (;15;) (func (param f64 i32) (result f64)))
  (import "wasi_snapshot_preview1" "proc_exit" (func (;0;) (type 6)))
  (import "wasi_snapshot_preview1" "clock_time_get" (func (;1;) (type 12)))
  (import "wasi_snapshot_preview1" "args_sizes_get" (func (;2;) (type 2)))
  (import "wasi_snapshot_preview1" "args_get" (func (;3;) (type 2)))
  (import "wasi_snapshot_preview1" "fd_seek" (func (;4;) (type 13)))
  (import "wasi_snapshot_preview1" "fd_write" (func (;5;) (type 10)))
  (import "wasi_snapshot_preview1" "fd_close" (func (;6;) (type 1)))
  (import "wasi_snapshot_preview1" "fd_fdstat_get" (func (;7;) (type 2)))
  (func (;8;) (type 4)
    (local i32)
    call 22
    local.set 0
    call 32
    local.get 0
    if  ;; label = @1
      local.get 0
      call 0
      unreachable
    end)
  (func (;9;) (type 4)
    (local i32 i32 i32 f64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 0
    global.set 0
    i32.const 4194560
    i32.const 8
    call 16
    local.set 2
    i32.const 8
    local.set 1
    loop  ;; label = @1
      local.get 3
      local.get 1
      local.get 2
      i32.add
      f64.load
      f64.add
      local.set 3
      local.get 1
      i32.const 8
      i32.add
      local.tee 1
      i32.const 33556480
      i32.ne
      br_if 0 (;@1;)
    end
    local.get 3
    f64.const 0x1.4p+3 (;=10;)
    f64.le
    if  ;; label = @1
      local.get 2
      call 15
      local.get 0
      i32.const 16
      i32.add
      call 20
      local.tee 1
      if  ;; label = @2
        local.get 0
        local.get 1
        i32.store
        i32.const 1103
        local.get 0
        call 28
      end
      i32.const 3888
      local.get 0
      i64.load offset=24
      f64.convert_i64_s
      f64.const 0x1.0c6f7a0b5ed8dp-20 (;=1e-06;)
      f64.mul
      local.get 0
      i64.load offset=16
      f64.convert_i64_s
      f64.add
      f64.store
      local.get 0
      i32.const 32
      i32.add
      global.set 0
      return
    end
    call 24
    unreachable)
  (func (;10;) (type 4)
    (local i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 16
    i32.add
    call 20
    local.tee 1
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.store
      i32.const 1103
      local.get 0
      call 28
    end
    i32.const 3896
    local.get 0
    i64.load offset=24
    f64.convert_i64_s
    f64.const 0x1.0c6f7a0b5ed8dp-20 (;=1e-06;)
    f64.mul
    local.get 0
    i64.load offset=16
    f64.convert_i64_s
    f64.add
    f64.store
    local.get 0
    i32.const 32
    i32.add
    global.set 0)
  (func (;11;) (type 4)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 3896
    f64.load
    i32.const 3888
    f64.load
    f64.sub
    f64.store
    i32.const 1096
    local.get 0
    call 28
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;12;) (type 14) (param i64) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i32.const 0
    i32.store offset=12
    block  ;; label = @1
      local.get 1
      i32.const 12
      i32.add
      local.get 0
      i32.wrap_i64
      i32.const 3
      i32.shl
      call 18
      i32.eqz
      if  ;; label = @2
        local.get 1
        i32.load offset=12
        local.tee 2
        br_if 1 (;@1;)
      end
      i32.const 1138
      i32.const 50
      i32.const 1
      i32.const 1232
      i32.load
      call 27
      call 32
      i32.const 1
      call 21
      unreachable
    end
    local.get 1
    i32.const 16
    i32.add
    global.set 0
    local.get 2)
  (func (;13;) (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 f64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 11
    global.set 0
    i64.const 1000000
    call 12
    local.set 7
    i64.const 1000000
    call 12
    local.set 9
    i64.const 1000
    call 12
    local.set 10
    i64.const 1000
    call 12
    local.set 12
    local.get 7
    local.set 3
    loop  ;; label = @1
      i32.const 0
      local.set 2
      f64.const 0x0p+0 (;=0;)
      local.set 16
      loop  ;; label = @2
        local.get 2
        local.get 3
        i32.add
        local.get 17
        local.get 16
        f64.mul
        f64.const 0x1.f4p+9 (;=1000;)
        f64.div
        f64.store
        local.get 16
        f64.const 0x1p+0 (;=1;)
        f64.add
        local.set 16
        local.get 2
        i32.const 8
        i32.add
        local.tee 2
        i32.const 8000
        i32.ne
        br_if 0 (;@2;)
      end
      local.get 3
      i32.const 8000
      i32.add
      local.set 3
      local.get 17
      f64.const 0x1p+0 (;=1;)
      f64.add
      local.set 17
      local.get 4
      i32.const 1
      i32.add
      local.tee 4
      i32.const 1000
      i32.ne
      br_if 0 (;@1;)
    end
    call 9
    local.get 7
    local.set 3
    loop  ;; label = @1
      local.get 10
      local.get 5
      i32.const 3
      i32.shl
      i32.add
      local.tee 4
      i64.const 0
      i64.store
      f64.const 0x0p+0 (;=0;)
      local.set 16
      i32.const 0
      local.set 2
      loop  ;; label = @2
        local.get 4
        local.get 16
        local.get 2
        local.get 3
        i32.add
        f64.load
        f64.add
        local.tee 16
        f64.store
        local.get 2
        i32.const 8000
        i32.add
        local.tee 2
        i32.const 8000000
        i32.ne
        br_if 0 (;@2;)
      end
      local.get 4
      local.get 16
      f64.const 0x1.3333333333333p+0 (;=1.2;)
      f64.div
      f64.store
      local.get 3
      i32.const 8
      i32.add
      local.set 3
      local.get 5
      i32.const 1
      i32.add
      local.tee 5
      i32.const 1000
      i32.ne
      br_if 0 (;@1;)
    end
    local.get 7
    local.set 3
    loop  ;; label = @1
      local.get 12
      local.get 6
      i32.const 3
      i32.shl
      local.tee 5
      i32.add
      local.tee 4
      i64.const 0
      i64.store
      local.get 5
      local.get 10
      i32.add
      local.set 5
      f64.const 0x0p+0 (;=0;)
      local.set 16
      i32.const 0
      local.set 2
      loop  ;; label = @2
        local.get 4
        local.get 16
        local.get 2
        local.get 3
        i32.add
        f64.load
        local.get 5
        f64.load
        f64.sub
        local.tee 16
        local.get 16
        f64.mul
        f64.add
        local.tee 16
        f64.store
        local.get 2
        i32.const 8000
        i32.add
        local.tee 2
        i32.const 8000000
        i32.ne
        br_if 0 (;@2;)
      end
      local.get 4
      f64.const 0x1p+0 (;=1;)
      local.get 16
      f64.const 0x1.3333333333333p+0 (;=1.2;)
      f64.div
      f64.sqrt
      local.tee 16
      local.get 16
      f64.const 0x1.99999ap-4 (;=0.1;)
      f64.le
      select
      f64.store
      local.get 3
      i32.const 8
      i32.add
      local.set 3
      local.get 6
      i32.const 1
      i32.add
      local.tee 6
      i32.const 1000
      i32.ne
      br_if 0 (;@1;)
    end
    i32.const 0
    local.set 5
    local.get 7
    local.set 4
    loop  ;; label = @1
      i32.const 0
      local.set 2
      loop  ;; label = @2
        local.get 2
        local.get 4
        i32.add
        local.tee 3
        local.get 3
        f64.load
        local.get 2
        local.get 10
        i32.add
        f64.load
        f64.sub
        local.tee 16
        f64.store
        local.get 3
        local.get 16
        local.get 2
        local.get 12
        i32.add
        f64.load
        f64.const 0x1.186f174f88472p+0 (;=1.09545;)
        f64.mul
        f64.div
        f64.store
        local.get 2
        i32.const 8
        i32.add
        local.tee 2
        i32.const 8000
        i32.ne
        br_if 0 (;@2;)
      end
      local.get 4
      i32.const 8000
      i32.add
      local.set 4
      local.get 5
      i32.const 1
      i32.add
      local.tee 5
      i32.const 1000
      i32.ne
      br_if 0 (;@1;)
    end
    local.get 7
    i32.const 8
    i32.add
    local.set 4
    local.get 7
    local.set 5
    loop  ;; label = @1
      local.get 9
      local.get 8
      i32.const 8000
      i32.mul
      i32.add
      local.tee 13
      local.get 8
      i32.const 3
      i32.shl
      local.tee 14
      i32.add
      i64.const 4607182418800017408
      i64.store
      local.get 4
      local.set 3
      local.get 8
      i32.const 1
      i32.add
      local.tee 8
      local.set 6
      loop  ;; label = @2
        local.get 13
        local.get 6
        i32.const 3
        i32.shl
        i32.add
        local.tee 15
        i64.const 0
        i64.store
        f64.const 0x0p+0 (;=0;)
        local.set 16
        i32.const 0
        local.set 2
        loop  ;; label = @3
          local.get 15
          local.get 16
          local.get 2
          local.get 5
          i32.add
          f64.load
          local.get 2
          local.get 3
          i32.add
          f64.load
          f64.mul
          f64.add
          local.tee 16
          f64.store
          local.get 2
          i32.const 8000
          i32.add
          local.tee 2
          i32.const 8000000
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 9
        local.get 6
        i32.const 8000
        i32.mul
        i32.add
        local.get 14
        i32.add
        local.get 16
        f64.store
        local.get 3
        i32.const 8
        i32.add
        local.set 3
        local.get 6
        i32.const 1
        i32.add
        local.tee 6
        i32.const 1000
        i32.ne
        br_if 0 (;@2;)
      end
      local.get 5
      i32.const 8
      i32.add
      local.set 5
      local.get 4
      i32.const 8
      i32.add
      local.set 4
      local.get 8
      i32.const 999
      i32.ne
      br_if 0 (;@1;)
    end
    local.get 9
    i64.const 4607182418800017408
    i64.store offset=7999992
    call 10
    call 11
    block  ;; label = @1
      local.get 0
      i32.const 43
      i32.lt_s
      br_if 0 (;@1;)
      local.get 1
      i32.load
      i32.load8_u
      br_if 0 (;@1;)
      i32.const 0
      local.set 6
      i32.const 1232
      i32.load
      local.set 1
      local.get 9
      local.set 5
      i32.const 0
      local.set 0
      i32.const 0
      local.set 8
      loop  ;; label = @2
        i32.const 0
        local.set 2
        local.get 6
        local.set 3
        local.get 0
        local.set 4
        loop  ;; label = @3
          local.get 11
          local.get 2
          local.get 5
          i32.add
          f64.load
          f64.store
          local.get 1
          i32.const 1189
          local.get 11
          call 41
          local.get 4
          local.get 3
          i32.const 20
          i32.div_u
          i32.const 20
          i32.mul
          i32.add
          i32.eqz
          if  ;; label = @4
            local.get 1
            call 36
          end
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          local.get 4
          i32.const -1
          i32.add
          local.set 4
          local.get 2
          i32.const 8
          i32.add
          local.tee 2
          i32.const 8000
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 5
        i32.const 8000
        i32.add
        local.set 5
        local.get 6
        i32.const 1000
        i32.add
        local.set 6
        local.get 0
        i32.const -1000
        i32.add
        local.set 0
        local.get 8
        i32.const 1
        i32.add
        local.tee 8
        i32.const 1000
        i32.ne
        br_if 0 (;@2;)
      end
      local.get 1
      call 36
    end
    local.get 7
    call 15
    local.get 9
    call 15
    local.get 10
    call 15
    local.get 12
    call 15
    local.get 11
    i32.const 16
    i32.add
    global.set 0
    i32.const 0)
  (func (;14;) (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 11
    global.set 0
    block  ;; label = @1
      i32.const 3928
      i32.load
      br_if 0 (;@1;)
      i32.const 0
      call 23
      i32.const 71040
      i32.sub
      local.tee 4
      i32.const 89
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 4376
      i32.load
      local.tee 3
      i32.eqz
      if  ;; label = @2
        i32.const 4388
        i64.const -1
        i64.store align=4
        i32.const 4380
        i64.const 281474976776192
        i64.store align=4
        i32.const 4376
        local.get 11
        i32.const 8
        i32.add
        i32.const -16
        i32.and
        i32.const 1431655768
        i32.xor
        local.tee 3
        i32.store
        i32.const 4396
        i32.const 0
        i32.store
        i32.const 4348
        i32.const 0
        i32.store
      end
      i32.const 4356
      local.get 4
      i32.store
      i32.const 4352
      i32.const 71040
      i32.store
      i32.const 3920
      i32.const 71040
      i32.store
      i32.const 3940
      local.get 3
      i32.store
      i32.const 3936
      i32.const -1
      i32.store
      loop  ;; label = @2
        local.get 2
        i32.const 3952
        i32.add
        local.get 2
        i32.const 3944
        i32.add
        local.tee 1
        i32.store
        local.get 2
        i32.const 3956
        i32.add
        local.get 1
        i32.store
        local.get 2
        i32.const 8
        i32.add
        local.tee 2
        i32.const 256
        i32.ne
        br_if 0 (;@2;)
      end
      i32.const 71052
      local.get 4
      i32.const -64
      i32.add
      local.tee 1
      i32.const 1
      i32.or
      i32.store
      i32.const 3932
      i32.const 4392
      i32.load
      i32.store
      i32.const 3928
      i32.const 71048
      i32.store
      i32.const 3916
      local.get 1
      i32.store
      local.get 4
      i32.const 70988
      i32.add
      i32.const 56
      i32.store
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 0
                          i32.const 236
                          i32.le_u
                          if  ;; label = @12
                            i32.const 3904
                            i32.load
                            local.tee 5
                            i32.const 16
                            local.get 0
                            i32.const 19
                            i32.add
                            i32.const -16
                            i32.and
                            local.get 0
                            i32.const 11
                            i32.lt_u
                            select
                            local.tee 7
                            i32.const 3
                            i32.shr_u
                            local.tee 2
                            i32.shr_u
                            local.tee 1
                            i32.const 3
                            i32.and
                            if  ;; label = @13
                              local.get 1
                              i32.const 1
                              i32.and
                              local.get 2
                              i32.or
                              i32.const 1
                              i32.xor
                              local.tee 3
                              i32.const 3
                              i32.shl
                              local.tee 0
                              i32.const 3952
                              i32.add
                              i32.load
                              local.tee 4
                              i32.const 8
                              i32.add
                              local.set 2
                              block  ;; label = @14
                                local.get 4
                                i32.load offset=8
                                local.tee 1
                                local.get 0
                                i32.const 3944
                                i32.add
                                local.tee 0
                                i32.eq
                                if  ;; label = @15
                                  i32.const 3904
                                  local.get 5
                                  i32.const -2
                                  local.get 3
                                  i32.rotl
                                  i32.and
                                  i32.store
                                  br 1 (;@14;)
                                end
                                i32.const 3920
                                i32.load
                                drop
                                local.get 0
                                local.get 1
                                i32.store offset=8
                                local.get 1
                                local.get 0
                                i32.store offset=12
                              end
                              local.get 4
                              local.get 3
                              i32.const 3
                              i32.shl
                              local.tee 0
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              local.get 0
                              local.get 4
                              i32.add
                              local.tee 0
                              local.get 0
                              i32.load offset=4
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              br 12 (;@1;)
                            end
                            local.get 7
                            i32.const 3912
                            i32.load
                            local.tee 8
                            i32.le_u
                            br_if 1 (;@11;)
                            local.get 1
                            if  ;; label = @13
                              block  ;; label = @14
                                i32.const 2
                                local.get 2
                                i32.shl
                                local.tee 0
                                i32.const 0
                                local.get 0
                                i32.sub
                                i32.or
                                local.get 1
                                local.get 2
                                i32.shl
                                i32.and
                                local.tee 0
                                i32.const 0
                                local.get 0
                                i32.sub
                                i32.and
                                i32.const -1
                                i32.add
                                local.tee 0
                                local.get 0
                                i32.const 12
                                i32.shr_u
                                i32.const 16
                                i32.and
                                local.tee 2
                                i32.shr_u
                                local.tee 1
                                i32.const 5
                                i32.shr_u
                                i32.const 8
                                i32.and
                                local.tee 0
                                local.get 2
                                i32.or
                                local.get 1
                                local.get 0
                                i32.shr_u
                                local.tee 1
                                i32.const 2
                                i32.shr_u
                                i32.const 4
                                i32.and
                                local.tee 0
                                i32.or
                                local.get 1
                                local.get 0
                                i32.shr_u
                                local.tee 1
                                i32.const 1
                                i32.shr_u
                                i32.const 2
                                i32.and
                                local.tee 0
                                i32.or
                                local.get 1
                                local.get 0
                                i32.shr_u
                                local.tee 1
                                i32.const 1
                                i32.shr_u
                                i32.const 1
                                i32.and
                                local.tee 0
                                i32.or
                                local.get 1
                                local.get 0
                                i32.shr_u
                                i32.add
                                local.tee 3
                                i32.const 3
                                i32.shl
                                local.tee 0
                                i32.const 3952
                                i32.add
                                i32.load
                                local.tee 4
                                i32.load offset=8
                                local.tee 1
                                local.get 0
                                i32.const 3944
                                i32.add
                                local.tee 0
                                i32.eq
                                if  ;; label = @15
                                  i32.const 3904
                                  local.get 5
                                  i32.const -2
                                  local.get 3
                                  i32.rotl
                                  i32.and
                                  local.tee 5
                                  i32.store
                                  br 1 (;@14;)
                                end
                                i32.const 3920
                                i32.load
                                drop
                                local.get 0
                                local.get 1
                                i32.store offset=8
                                local.get 1
                                local.get 0
                                i32.store offset=12
                              end
                              local.get 4
                              i32.const 8
                              i32.add
                              local.set 2
                              local.get 4
                              local.get 7
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              local.get 4
                              local.get 3
                              i32.const 3
                              i32.shl
                              local.tee 0
                              i32.add
                              local.get 0
                              local.get 7
                              i32.sub
                              local.tee 6
                              i32.store
                              local.get 4
                              local.get 7
                              i32.add
                              local.tee 3
                              local.get 6
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              local.get 8
                              if  ;; label = @14
                                local.get 8
                                i32.const 3
                                i32.shr_u
                                local.tee 1
                                i32.const 3
                                i32.shl
                                i32.const 3944
                                i32.add
                                local.set 0
                                i32.const 3924
                                i32.load
                                local.set 7
                                block (result i32)  ;; label = @15
                                  local.get 5
                                  i32.const 1
                                  local.get 1
                                  i32.shl
                                  local.tee 1
                                  i32.and
                                  i32.eqz
                                  if  ;; label = @16
                                    i32.const 3904
                                    local.get 1
                                    local.get 5
                                    i32.or
                                    i32.store
                                    local.get 0
                                    br 1 (;@15;)
                                  end
                                  local.get 0
                                  i32.load offset=8
                                end
                                local.tee 4
                                local.get 7
                                i32.store offset=12
                                local.get 0
                                local.get 7
                                i32.store offset=8
                                local.get 7
                                local.get 0
                                i32.store offset=12
                                local.get 7
                                local.get 4
                                i32.store offset=8
                              end
                              i32.const 3924
                              local.get 3
                              i32.store
                              i32.const 3912
                              local.get 6
                              i32.store
                              br 12 (;@1;)
                            end
                            i32.const 3908
                            i32.load
                            local.tee 9
                            i32.eqz
                            br_if 1 (;@11;)
                            local.get 9
                            i32.const 0
                            local.get 9
                            i32.sub
                            i32.and
                            i32.const -1
                            i32.add
                            local.tee 0
                            local.get 0
                            i32.const 12
                            i32.shr_u
                            i32.const 16
                            i32.and
                            local.tee 2
                            i32.shr_u
                            local.tee 1
                            i32.const 5
                            i32.shr_u
                            i32.const 8
                            i32.and
                            local.tee 0
                            local.get 2
                            i32.or
                            local.get 1
                            local.get 0
                            i32.shr_u
                            local.tee 1
                            i32.const 2
                            i32.shr_u
                            i32.const 4
                            i32.and
                            local.tee 0
                            i32.or
                            local.get 1
                            local.get 0
                            i32.shr_u
                            local.tee 1
                            i32.const 1
                            i32.shr_u
                            i32.const 2
                            i32.and
                            local.tee 0
                            i32.or
                            local.get 1
                            local.get 0
                            i32.shr_u
                            local.tee 1
                            i32.const 1
                            i32.shr_u
                            i32.const 1
                            i32.and
                            local.tee 0
                            i32.or
                            local.get 1
                            local.get 0
                            i32.shr_u
                            i32.add
                            i32.const 2
                            i32.shl
                            i32.const 4208
                            i32.add
                            i32.load
                            local.tee 1
                            i32.load offset=4
                            i32.const -8
                            i32.and
                            local.get 7
                            i32.sub
                            local.set 3
                            local.get 1
                            local.set 0
                            loop  ;; label = @13
                              block  ;; label = @14
                                local.get 0
                                i32.load offset=16
                                local.tee 2
                                i32.eqz
                                if  ;; label = @15
                                  local.get 0
                                  i32.const 20
                                  i32.add
                                  i32.load
                                  local.tee 2
                                  i32.eqz
                                  br_if 1 (;@14;)
                                end
                                local.get 2
                                i32.load offset=4
                                i32.const -8
                                i32.and
                                local.get 7
                                i32.sub
                                local.tee 0
                                local.get 3
                                local.get 0
                                local.get 3
                                i32.lt_u
                                local.tee 0
                                select
                                local.set 3
                                local.get 2
                                local.get 1
                                local.get 0
                                select
                                local.set 1
                                local.get 2
                                local.set 0
                                br 1 (;@13;)
                              end
                            end
                            local.get 1
                            i32.load offset=24
                            local.set 10
                            local.get 1
                            local.get 1
                            i32.load offset=12
                            local.tee 4
                            i32.ne
                            if  ;; label = @13
                              i32.const 3920
                              i32.load
                              local.get 1
                              i32.load offset=8
                              local.tee 0
                              i32.le_u
                              if  ;; label = @14
                                local.get 0
                                i32.load offset=12
                                drop
                              end
                              local.get 4
                              local.get 0
                              i32.store offset=8
                              local.get 0
                              local.get 4
                              i32.store offset=12
                              br 11 (;@2;)
                            end
                            local.get 1
                            i32.const 20
                            i32.add
                            local.tee 0
                            i32.load
                            local.tee 2
                            i32.eqz
                            if  ;; label = @13
                              local.get 1
                              i32.load offset=16
                              local.tee 2
                              i32.eqz
                              br_if 3 (;@10;)
                              local.get 1
                              i32.const 16
                              i32.add
                              local.set 0
                            end
                            loop  ;; label = @13
                              local.get 0
                              local.set 6
                              local.get 2
                              local.tee 4
                              i32.const 20
                              i32.add
                              local.tee 0
                              i32.load
                              local.tee 2
                              br_if 0 (;@13;)
                              local.get 4
                              i32.const 16
                              i32.add
                              local.set 0
                              local.get 4
                              i32.load offset=16
                              local.tee 2
                              br_if 0 (;@13;)
                            end
                            local.get 6
                            i32.const 0
                            i32.store
                            br 10 (;@2;)
                          end
                          i32.const -1
                          local.set 7
                          local.get 0
                          i32.const -65
                          i32.gt_u
                          br_if 0 (;@11;)
                          local.get 0
                          i32.const 19
                          i32.add
                          local.tee 0
                          i32.const -16
                          i32.and
                          local.set 7
                          i32.const 3908
                          i32.load
                          local.tee 9
                          i32.eqz
                          br_if 0 (;@11;)
                          block (result i32)  ;; label = @12
                            i32.const 0
                            local.get 0
                            i32.const 8
                            i32.shr_u
                            local.tee 0
                            i32.eqz
                            br_if 0 (;@12;)
                            drop
                            i32.const 31
                            local.get 7
                            i32.const 16777215
                            i32.gt_u
                            br_if 0 (;@12;)
                            drop
                            local.get 0
                            local.get 0
                            i32.const 1048320
                            i32.add
                            i32.const 16
                            i32.shr_u
                            i32.const 8
                            i32.and
                            local.tee 2
                            i32.shl
                            local.tee 0
                            local.get 0
                            i32.const 520192
                            i32.add
                            i32.const 16
                            i32.shr_u
                            i32.const 4
                            i32.and
                            local.tee 1
                            i32.shl
                            local.tee 0
                            local.get 0
                            i32.const 245760
                            i32.add
                            i32.const 16
                            i32.shr_u
                            i32.const 2
                            i32.and
                            local.tee 0
                            i32.shl
                            i32.const 15
                            i32.shr_u
                            local.get 1
                            local.get 2
                            i32.or
                            local.get 0
                            i32.or
                            i32.sub
                            local.tee 0
                            i32.const 1
                            i32.shl
                            local.get 7
                            local.get 0
                            i32.const 21
                            i32.add
                            i32.shr_u
                            i32.const 1
                            i32.and
                            i32.or
                            i32.const 28
                            i32.add
                          end
                          local.set 6
                          i32.const 0
                          local.get 7
                          i32.sub
                          local.set 0
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 6
                                i32.const 2
                                i32.shl
                                i32.const 4208
                                i32.add
                                i32.load
                                local.tee 3
                                i32.eqz
                                if  ;; label = @15
                                  i32.const 0
                                  local.set 2
                                  i32.const 0
                                  local.set 4
                                  br 1 (;@14;)
                                end
                                local.get 7
                                i32.const 0
                                i32.const 25
                                local.get 6
                                i32.const 1
                                i32.shr_u
                                i32.sub
                                local.get 6
                                i32.const 31
                                i32.eq
                                select
                                i32.shl
                                local.set 1
                                i32.const 0
                                local.set 2
                                i32.const 0
                                local.set 4
                                loop  ;; label = @15
                                  block  ;; label = @16
                                    local.get 3
                                    i32.load offset=4
                                    i32.const -8
                                    i32.and
                                    local.get 7
                                    i32.sub
                                    local.tee 5
                                    local.get 0
                                    i32.ge_u
                                    br_if 0 (;@16;)
                                    local.get 3
                                    local.set 4
                                    local.get 5
                                    local.tee 0
                                    br_if 0 (;@16;)
                                    i32.const 0
                                    local.set 0
                                    local.get 3
                                    local.set 2
                                    br 3 (;@13;)
                                  end
                                  local.get 2
                                  local.get 3
                                  i32.const 20
                                  i32.add
                                  i32.load
                                  local.tee 5
                                  local.get 5
                                  local.get 3
                                  local.get 1
                                  i32.const 29
                                  i32.shr_u
                                  i32.const 4
                                  i32.and
                                  i32.add
                                  i32.const 16
                                  i32.add
                                  i32.load
                                  local.tee 3
                                  i32.eq
                                  select
                                  local.get 2
                                  local.get 5
                                  select
                                  local.set 2
                                  local.get 1
                                  local.get 3
                                  i32.const 0
                                  i32.ne
                                  i32.shl
                                  local.set 1
                                  local.get 3
                                  br_if 0 (;@15;)
                                end
                              end
                              local.get 2
                              local.get 4
                              i32.or
                              i32.eqz
                              if  ;; label = @14
                                i32.const 2
                                local.get 6
                                i32.shl
                                local.tee 1
                                i32.const 0
                                local.get 1
                                i32.sub
                                i32.or
                                local.get 9
                                i32.and
                                local.tee 1
                                i32.eqz
                                br_if 3 (;@11;)
                                local.get 1
                                i32.const 0
                                local.get 1
                                i32.sub
                                i32.and
                                i32.const -1
                                i32.add
                                local.tee 1
                                local.get 1
                                i32.const 12
                                i32.shr_u
                                i32.const 16
                                i32.and
                                local.tee 3
                                i32.shr_u
                                local.tee 2
                                i32.const 5
                                i32.shr_u
                                i32.const 8
                                i32.and
                                local.tee 1
                                local.get 3
                                i32.or
                                local.get 2
                                local.get 1
                                i32.shr_u
                                local.tee 2
                                i32.const 2
                                i32.shr_u
                                i32.const 4
                                i32.and
                                local.tee 1
                                i32.or
                                local.get 2
                                local.get 1
                                i32.shr_u
                                local.tee 2
                                i32.const 1
                                i32.shr_u
                                i32.const 2
                                i32.and
                                local.tee 1
                                i32.or
                                local.get 2
                                local.get 1
                                i32.shr_u
                                local.tee 2
                                i32.const 1
                                i32.shr_u
                                i32.const 1
                                i32.and
                                local.tee 1
                                i32.or
                                local.get 2
                                local.get 1
                                i32.shr_u
                                i32.add
                                i32.const 2
                                i32.shl
                                i32.const 4208
                                i32.add
                                i32.load
                                local.set 2
                              end
                              local.get 2
                              i32.eqz
                              br_if 1 (;@12;)
                            end
                            loop  ;; label = @13
                              local.get 2
                              i32.load offset=4
                              i32.const -8
                              i32.and
                              local.get 7
                              i32.sub
                              local.tee 1
                              local.get 0
                              i32.lt_u
                              local.set 5
                              local.get 1
                              local.get 0
                              local.get 5
                              select
                              local.set 0
                              local.get 2
                              local.get 4
                              local.get 5
                              select
                              local.set 4
                              local.get 2
                              i32.load offset=16
                              local.tee 3
                              if (result i32)  ;; label = @14
                                local.get 3
                              else
                                local.get 2
                                i32.const 20
                                i32.add
                                i32.load
                              end
                              local.tee 2
                              br_if 0 (;@13;)
                            end
                          end
                          local.get 4
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 0
                          i32.const 3912
                          i32.load
                          local.get 7
                          i32.sub
                          i32.ge_u
                          br_if 0 (;@11;)
                          local.get 4
                          i32.load offset=24
                          local.set 6
                          local.get 4
                          local.get 4
                          i32.load offset=12
                          local.tee 1
                          i32.ne
                          if  ;; label = @12
                            i32.const 3920
                            i32.load
                            local.get 4
                            i32.load offset=8
                            local.tee 2
                            i32.le_u
                            if  ;; label = @13
                              local.get 2
                              i32.load offset=12
                              drop
                            end
                            local.get 1
                            local.get 2
                            i32.store offset=8
                            local.get 2
                            local.get 1
                            i32.store offset=12
                            br 9 (;@3;)
                          end
                          local.get 4
                          i32.const 20
                          i32.add
                          local.tee 3
                          i32.load
                          local.tee 2
                          i32.eqz
                          if  ;; label = @12
                            local.get 4
                            i32.load offset=16
                            local.tee 2
                            i32.eqz
                            br_if 3 (;@9;)
                            local.get 4
                            i32.const 16
                            i32.add
                            local.set 3
                          end
                          loop  ;; label = @12
                            local.get 3
                            local.set 5
                            local.get 2
                            local.tee 1
                            i32.const 20
                            i32.add
                            local.tee 3
                            i32.load
                            local.tee 2
                            br_if 0 (;@12;)
                            local.get 1
                            i32.const 16
                            i32.add
                            local.set 3
                            local.get 1
                            i32.load offset=16
                            local.tee 2
                            br_if 0 (;@12;)
                          end
                          local.get 5
                          i32.const 0
                          i32.store
                          br 8 (;@3;)
                        end
                        i32.const 3912
                        i32.load
                        local.tee 2
                        local.get 7
                        i32.ge_u
                        if  ;; label = @11
                          i32.const 3924
                          i32.load
                          local.set 3
                          block  ;; label = @12
                            local.get 2
                            local.get 7
                            i32.sub
                            local.tee 1
                            i32.const 16
                            i32.ge_u
                            if  ;; label = @13
                              local.get 3
                              local.get 7
                              i32.add
                              local.tee 0
                              local.get 1
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              i32.const 3912
                              local.get 1
                              i32.store
                              i32.const 3924
                              local.get 0
                              i32.store
                              local.get 2
                              local.get 3
                              i32.add
                              local.get 1
                              i32.store
                              local.get 3
                              local.get 7
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              br 1 (;@12;)
                            end
                            local.get 3
                            local.get 2
                            i32.const 3
                            i32.or
                            i32.store offset=4
                            local.get 2
                            local.get 3
                            i32.add
                            local.tee 0
                            local.get 0
                            i32.load offset=4
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            i32.const 3924
                            i32.const 0
                            i32.store
                            i32.const 3912
                            i32.const 0
                            i32.store
                          end
                          local.get 3
                          i32.const 8
                          i32.add
                          local.set 2
                          br 10 (;@1;)
                        end
                        i32.const 3916
                        i32.load
                        local.tee 9
                        local.get 7
                        i32.gt_u
                        if  ;; label = @11
                          i32.const 3928
                          i32.load
                          local.tee 2
                          local.get 7
                          i32.add
                          local.tee 1
                          local.get 9
                          local.get 7
                          i32.sub
                          local.tee 0
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          i32.const 3916
                          local.get 0
                          i32.store
                          i32.const 3928
                          local.get 1
                          i32.store
                          local.get 2
                          local.get 7
                          i32.const 3
                          i32.or
                          i32.store offset=4
                          local.get 2
                          i32.const 8
                          i32.add
                          local.set 2
                          br 10 (;@1;)
                        end
                        i32.const 0
                        local.set 2
                        local.get 7
                        i32.const 71
                        i32.add
                        local.tee 6
                        block (result i32)  ;; label = @11
                          i32.const 4376
                          i32.load
                          if  ;; label = @12
                            i32.const 4384
                            i32.load
                            br 1 (;@11;)
                          end
                          i32.const 4388
                          i64.const -1
                          i64.store align=4
                          i32.const 4380
                          i64.const 281474976776192
                          i64.store align=4
                          i32.const 4376
                          local.get 11
                          i32.const 12
                          i32.add
                          i32.const -16
                          i32.and
                          i32.const 1431655768
                          i32.xor
                          i32.store
                          i32.const 4396
                          i32.const 0
                          i32.store
                          i32.const 4348
                          i32.const 0
                          i32.store
                          i32.const 65536
                        end
                        local.tee 3
                        i32.add
                        local.tee 5
                        i32.const 0
                        local.get 3
                        i32.sub
                        local.tee 4
                        i32.and
                        local.tee 0
                        local.get 7
                        i32.le_u
                        if  ;; label = @11
                          i32.const 4400
                          i32.const 48
                          i32.store
                          br 10 (;@1;)
                        end
                        block  ;; label = @11
                          i32.const 4344
                          i32.load
                          local.tee 3
                          i32.eqz
                          br_if 0 (;@11;)
                          i32.const 4336
                          i32.load
                          local.tee 2
                          local.get 0
                          i32.add
                          local.tee 1
                          local.get 2
                          i32.gt_u
                          i32.const 0
                          local.get 1
                          local.get 3
                          i32.le_u
                          select
                          br_if 0 (;@11;)
                          i32.const 0
                          local.set 2
                          i32.const 4400
                          i32.const 48
                          i32.store
                          br 10 (;@1;)
                        end
                        i32.const 4348
                        i32.load8_u
                        i32.const 4
                        i32.and
                        br_if 4 (;@6;)
                        block  ;; label = @11
                          block  ;; label = @12
                            i32.const 3928
                            i32.load
                            local.tee 3
                            if  ;; label = @13
                              i32.const 4352
                              local.set 2
                              loop  ;; label = @14
                                local.get 2
                                i32.load
                                local.tee 1
                                local.get 3
                                i32.le_u
                                if  ;; label = @15
                                  local.get 1
                                  local.get 2
                                  i32.load offset=4
                                  i32.add
                                  local.get 3
                                  i32.gt_u
                                  br_if 3 (;@12;)
                                end
                                local.get 2
                                i32.load offset=8
                                local.tee 2
                                br_if 0 (;@14;)
                              end
                            end
                            i32.const 0
                            call 23
                            local.tee 1
                            i32.const -1
                            i32.eq
                            br_if 5 (;@7;)
                            local.get 0
                            local.set 5
                            i32.const 4380
                            i32.load
                            local.tee 3
                            i32.const -1
                            i32.add
                            local.tee 2
                            local.get 1
                            i32.and
                            if  ;; label = @13
                              local.get 0
                              local.get 1
                              i32.sub
                              local.get 1
                              local.get 2
                              i32.add
                              i32.const 0
                              local.get 3
                              i32.sub
                              i32.and
                              i32.add
                              local.set 5
                            end
                            local.get 5
                            local.get 7
                            i32.le_u
                            br_if 5 (;@7;)
                            local.get 5
                            i32.const 2147483646
                            i32.gt_u
                            br_if 5 (;@7;)
                            i32.const 4344
                            i32.load
                            local.tee 4
                            if  ;; label = @13
                              i32.const 4336
                              i32.load
                              local.tee 3
                              local.get 5
                              i32.add
                              local.tee 2
                              local.get 3
                              i32.le_u
                              br_if 6 (;@7;)
                              local.get 2
                              local.get 4
                              i32.gt_u
                              br_if 6 (;@7;)
                            end
                            local.get 5
                            call 23
                            local.tee 2
                            local.get 1
                            i32.ne
                            br_if 1 (;@11;)
                            br 7 (;@5;)
                          end
                          local.get 5
                          local.get 9
                          i32.sub
                          local.get 4
                          i32.and
                          local.tee 5
                          i32.const 2147483646
                          i32.gt_u
                          br_if 4 (;@7;)
                          local.get 5
                          call 23
                          local.tee 1
                          local.get 2
                          i32.load
                          local.get 2
                          i32.load offset=4
                          i32.add
                          i32.eq
                          br_if 3 (;@8;)
                          local.get 1
                          local.set 2
                        end
                        block  ;; label = @11
                          local.get 7
                          i32.const 72
                          i32.add
                          local.get 5
                          i32.le_u
                          br_if 0 (;@11;)
                          local.get 2
                          i32.const -1
                          i32.eq
                          br_if 0 (;@11;)
                          i32.const 4384
                          i32.load
                          local.tee 1
                          local.get 6
                          local.get 5
                          i32.sub
                          i32.add
                          i32.const 0
                          local.get 1
                          i32.sub
                          i32.and
                          local.tee 1
                          i32.const 2147483646
                          i32.gt_u
                          if  ;; label = @12
                            local.get 2
                            local.set 1
                            br 7 (;@5;)
                          end
                          local.get 1
                          call 23
                          i32.const -1
                          i32.ne
                          if  ;; label = @12
                            local.get 1
                            local.get 5
                            i32.add
                            local.set 5
                            local.get 2
                            local.set 1
                            br 7 (;@5;)
                          end
                          i32.const 0
                          local.get 5
                          i32.sub
                          call 23
                          drop
                          br 4 (;@7;)
                        end
                        local.get 2
                        local.tee 1
                        i32.const -1
                        i32.ne
                        br_if 5 (;@5;)
                        br 3 (;@7;)
                      end
                      i32.const 0
                      local.set 4
                      br 7 (;@2;)
                    end
                    i32.const 0
                    local.set 1
                    br 5 (;@3;)
                  end
                  local.get 1
                  i32.const -1
                  i32.ne
                  br_if 2 (;@5;)
                end
                i32.const 4348
                i32.const 4348
                i32.load
                i32.const 4
                i32.or
                i32.store
              end
              local.get 0
              i32.const 2147483646
              i32.gt_u
              br_if 1 (;@4;)
              local.get 0
              call 23
              local.tee 1
              i32.const 0
              call 23
              local.tee 0
              i32.ge_u
              br_if 1 (;@4;)
              local.get 1
              i32.const -1
              i32.eq
              br_if 1 (;@4;)
              local.get 0
              i32.const -1
              i32.eq
              br_if 1 (;@4;)
              local.get 0
              local.get 1
              i32.sub
              local.tee 5
              local.get 7
              i32.const 56
              i32.add
              i32.le_u
              br_if 1 (;@4;)
            end
            i32.const 4336
            i32.const 4336
            i32.load
            local.get 5
            i32.add
            local.tee 0
            i32.store
            local.get 0
            i32.const 4340
            i32.load
            i32.gt_u
            if  ;; label = @5
              i32.const 4340
              local.get 0
              i32.store
            end
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  i32.const 3928
                  i32.load
                  local.tee 6
                  if  ;; label = @8
                    i32.const 4352
                    local.set 2
                    loop  ;; label = @9
                      local.get 1
                      local.get 2
                      i32.load
                      local.tee 0
                      local.get 2
                      i32.load offset=4
                      local.tee 4
                      i32.add
                      i32.eq
                      br_if 2 (;@7;)
                      local.get 2
                      i32.load offset=8
                      local.tee 2
                      br_if 0 (;@9;)
                    end
                    br 2 (;@6;)
                  end
                  i32.const 3920
                  i32.load
                  local.tee 0
                  i32.const 0
                  local.get 1
                  local.get 0
                  i32.ge_u
                  select
                  i32.eqz
                  if  ;; label = @8
                    i32.const 3920
                    local.get 1
                    i32.store
                  end
                  i32.const 0
                  local.set 2
                  i32.const 4356
                  local.get 5
                  i32.store
                  i32.const 4352
                  local.get 1
                  i32.store
                  i32.const 3936
                  i32.const -1
                  i32.store
                  i32.const 3940
                  i32.const 4376
                  i32.load
                  i32.store
                  i32.const 4364
                  i32.const 0
                  i32.store
                  loop  ;; label = @8
                    local.get 2
                    i32.const 3952
                    i32.add
                    local.get 2
                    i32.const 3944
                    i32.add
                    local.tee 0
                    i32.store
                    local.get 2
                    i32.const 3956
                    i32.add
                    local.get 0
                    i32.store
                    local.get 2
                    i32.const 8
                    i32.add
                    local.tee 2
                    i32.const 256
                    i32.ne
                    br_if 0 (;@8;)
                  end
                  local.get 1
                  i32.const -8
                  local.get 1
                  i32.sub
                  i32.const 15
                  i32.and
                  i32.const 0
                  local.get 1
                  i32.const 8
                  i32.add
                  i32.const 15
                  i32.and
                  select
                  local.tee 0
                  i32.add
                  local.tee 3
                  local.get 5
                  i32.const -56
                  i32.add
                  local.tee 2
                  local.get 0
                  i32.sub
                  local.tee 0
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  i32.const 3932
                  i32.const 4392
                  i32.load
                  i32.store
                  i32.const 3916
                  local.get 0
                  i32.store
                  i32.const 3928
                  local.get 3
                  i32.store
                  local.get 1
                  local.get 2
                  i32.add
                  i32.const 56
                  i32.store offset=4
                  br 2 (;@5;)
                end
                local.get 2
                i32.load8_u offset=12
                i32.const 8
                i32.and
                br_if 0 (;@6;)
                local.get 1
                local.get 6
                i32.le_u
                br_if 0 (;@6;)
                local.get 0
                local.get 6
                i32.gt_u
                br_if 0 (;@6;)
                local.get 6
                i32.const -8
                local.get 6
                i32.sub
                i32.const 15
                i32.and
                i32.const 0
                local.get 6
                i32.const 8
                i32.add
                i32.const 15
                i32.and
                select
                local.tee 0
                i32.add
                local.tee 3
                i32.const 3916
                i32.load
                local.get 5
                i32.add
                local.tee 1
                local.get 0
                i32.sub
                local.tee 0
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 2
                local.get 4
                local.get 5
                i32.add
                i32.store offset=4
                i32.const 3932
                i32.const 4392
                i32.load
                i32.store
                i32.const 3916
                local.get 0
                i32.store
                i32.const 3928
                local.get 3
                i32.store
                local.get 1
                local.get 6
                i32.add
                i32.const 56
                i32.store offset=4
                br 1 (;@5;)
              end
              local.get 1
              i32.const 3920
              i32.load
              local.tee 4
              i32.lt_u
              if  ;; label = @6
                i32.const 3920
                local.get 1
                i32.store
                local.get 1
                local.set 4
              end
              local.get 1
              local.get 5
              i32.add
              local.set 0
              i32.const 4352
              local.set 2
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          loop  ;; label = @12
                            local.get 0
                            local.get 2
                            i32.load
                            i32.ne
                            if  ;; label = @13
                              local.get 2
                              i32.load offset=8
                              local.tee 2
                              br_if 1 (;@12;)
                              br 2 (;@11;)
                            end
                          end
                          local.get 2
                          i32.load8_u offset=12
                          i32.const 8
                          i32.and
                          i32.eqz
                          br_if 1 (;@10;)
                        end
                        i32.const 4352
                        local.set 2
                        loop  ;; label = @11
                          local.get 2
                          i32.load
                          local.tee 0
                          local.get 6
                          i32.le_u
                          if  ;; label = @12
                            local.get 0
                            local.get 2
                            i32.load offset=4
                            i32.add
                            local.tee 4
                            local.get 6
                            i32.gt_u
                            br_if 3 (;@9;)
                          end
                          local.get 2
                          i32.load offset=8
                          local.set 2
                          br 0 (;@11;)
                        end
                        unreachable
                      end
                      local.get 2
                      local.get 1
                      i32.store
                      local.get 2
                      local.get 2
                      i32.load offset=4
                      local.get 5
                      i32.add
                      i32.store offset=4
                      local.get 1
                      i32.const -8
                      local.get 1
                      i32.sub
                      i32.const 15
                      i32.and
                      i32.const 0
                      local.get 1
                      i32.const 8
                      i32.add
                      i32.const 15
                      i32.and
                      select
                      i32.add
                      local.tee 9
                      local.get 7
                      i32.const 3
                      i32.or
                      i32.store offset=4
                      local.get 0
                      i32.const -8
                      local.get 0
                      i32.sub
                      i32.const 15
                      i32.and
                      i32.const 0
                      local.get 0
                      i32.const 8
                      i32.add
                      i32.const 15
                      i32.and
                      select
                      i32.add
                      local.tee 1
                      local.get 9
                      i32.sub
                      local.get 7
                      i32.sub
                      local.set 2
                      local.get 7
                      local.get 9
                      i32.add
                      local.set 8
                      local.get 1
                      local.get 6
                      i32.eq
                      if  ;; label = @10
                        i32.const 3928
                        local.get 8
                        i32.store
                        i32.const 3916
                        i32.const 3916
                        i32.load
                        local.get 2
                        i32.add
                        local.tee 0
                        i32.store
                        local.get 8
                        local.get 0
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        br 3 (;@7;)
                      end
                      local.get 1
                      i32.const 3924
                      i32.load
                      i32.eq
                      if  ;; label = @10
                        i32.const 3924
                        local.get 8
                        i32.store
                        i32.const 3912
                        i32.const 3912
                        i32.load
                        local.get 2
                        i32.add
                        local.tee 0
                        i32.store
                        local.get 8
                        local.get 0
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get 0
                        local.get 8
                        i32.add
                        local.get 0
                        i32.store
                        br 3 (;@7;)
                      end
                      local.get 1
                      i32.load offset=4
                      local.tee 0
                      i32.const 3
                      i32.and
                      i32.const 1
                      i32.eq
                      if  ;; label = @10
                        local.get 0
                        i32.const -8
                        i32.and
                        local.set 6
                        block  ;; label = @11
                          local.get 0
                          i32.const 255
                          i32.le_u
                          if  ;; label = @12
                            local.get 1
                            i32.load offset=8
                            local.tee 4
                            local.get 0
                            i32.const 3
                            i32.shr_u
                            local.tee 3
                            i32.const 3
                            i32.shl
                            i32.const 3944
                            i32.add
                            i32.ne
                            drop
                            local.get 4
                            local.get 1
                            i32.load offset=12
                            local.tee 5
                            i32.eq
                            if  ;; label = @13
                              i32.const 3904
                              i32.const 3904
                              i32.load
                              i32.const -2
                              local.get 3
                              i32.rotl
                              i32.and
                              i32.store
                              br 2 (;@11;)
                            end
                            local.get 5
                            local.get 4
                            i32.store offset=8
                            local.get 4
                            local.get 5
                            i32.store offset=12
                            br 1 (;@11;)
                          end
                          local.get 1
                          i32.load offset=24
                          local.set 10
                          block  ;; label = @12
                            local.get 1
                            local.get 1
                            i32.load offset=12
                            local.tee 5
                            i32.ne
                            if  ;; label = @13
                              local.get 4
                              local.get 1
                              i32.load offset=8
                              local.tee 0
                              i32.le_u
                              if  ;; label = @14
                                local.get 0
                                i32.load offset=12
                                drop
                              end
                              local.get 5
                              local.get 0
                              i32.store offset=8
                              local.get 0
                              local.get 5
                              i32.store offset=12
                              br 1 (;@12;)
                            end
                            block  ;; label = @13
                              local.get 1
                              i32.const 20
                              i32.add
                              local.tee 3
                              i32.load
                              local.tee 7
                              br_if 0 (;@13;)
                              local.get 1
                              i32.const 16
                              i32.add
                              local.tee 3
                              i32.load
                              local.tee 7
                              br_if 0 (;@13;)
                              i32.const 0
                              local.set 5
                              br 1 (;@12;)
                            end
                            loop  ;; label = @13
                              local.get 3
                              local.set 0
                              local.get 7
                              local.tee 5
                              i32.const 20
                              i32.add
                              local.tee 3
                              i32.load
                              local.tee 7
                              br_if 0 (;@13;)
                              local.get 5
                              i32.const 16
                              i32.add
                              local.set 3
                              local.get 5
                              i32.load offset=16
                              local.tee 7
                              br_if 0 (;@13;)
                            end
                            local.get 0
                            i32.const 0
                            i32.store
                          end
                          local.get 10
                          i32.eqz
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            local.get 1
                            local.get 1
                            i32.load offset=28
                            local.tee 3
                            i32.const 2
                            i32.shl
                            i32.const 4208
                            i32.add
                            local.tee 0
                            i32.load
                            i32.eq
                            if  ;; label = @13
                              local.get 0
                              local.get 5
                              i32.store
                              local.get 5
                              br_if 1 (;@12;)
                              i32.const 3908
                              i32.const 3908
                              i32.load
                              i32.const -2
                              local.get 3
                              i32.rotl
                              i32.and
                              i32.store
                              br 2 (;@11;)
                            end
                            local.get 10
                            i32.const 16
                            i32.const 20
                            local.get 10
                            i32.load offset=16
                            local.get 1
                            i32.eq
                            select
                            i32.add
                            local.get 5
                            i32.store
                            local.get 5
                            i32.eqz
                            br_if 1 (;@11;)
                          end
                          local.get 5
                          local.get 10
                          i32.store offset=24
                          local.get 1
                          i32.load offset=16
                          local.tee 0
                          if  ;; label = @12
                            local.get 5
                            local.get 0
                            i32.store offset=16
                            local.get 0
                            local.get 5
                            i32.store offset=24
                          end
                          local.get 1
                          i32.load offset=20
                          local.tee 0
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 5
                          i32.const 20
                          i32.add
                          local.get 0
                          i32.store
                          local.get 0
                          local.get 5
                          i32.store offset=24
                        end
                        local.get 2
                        local.get 6
                        i32.add
                        local.set 2
                        local.get 1
                        local.get 6
                        i32.add
                        local.set 1
                      end
                      local.get 1
                      local.get 1
                      i32.load offset=4
                      i32.const -2
                      i32.and
                      i32.store offset=4
                      local.get 2
                      local.get 8
                      i32.add
                      local.get 2
                      i32.store
                      local.get 8
                      local.get 2
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get 2
                      i32.const 255
                      i32.le_u
                      if  ;; label = @10
                        local.get 2
                        i32.const 3
                        i32.shr_u
                        local.tee 1
                        i32.const 3
                        i32.shl
                        i32.const 3944
                        i32.add
                        local.set 0
                        block (result i32)  ;; label = @11
                          i32.const 3904
                          i32.load
                          local.tee 2
                          i32.const 1
                          local.get 1
                          i32.shl
                          local.tee 1
                          i32.and
                          i32.eqz
                          if  ;; label = @12
                            i32.const 3904
                            local.get 1
                            local.get 2
                            i32.or
                            i32.store
                            local.get 0
                            br 1 (;@11;)
                          end
                          local.get 0
                          i32.load offset=8
                        end
                        local.tee 3
                        local.get 8
                        i32.store offset=12
                        local.get 0
                        local.get 8
                        i32.store offset=8
                        local.get 8
                        local.get 0
                        i32.store offset=12
                        local.get 8
                        local.get 3
                        i32.store offset=8
                        br 3 (;@7;)
                      end
                      local.get 8
                      block (result i32)  ;; label = @10
                        i32.const 0
                        local.get 2
                        i32.const 8
                        i32.shr_u
                        local.tee 0
                        i32.eqz
                        br_if 0 (;@10;)
                        drop
                        i32.const 31
                        local.get 2
                        i32.const 16777215
                        i32.gt_u
                        br_if 0 (;@10;)
                        drop
                        local.get 0
                        local.get 0
                        i32.const 1048320
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 8
                        i32.and
                        local.tee 3
                        i32.shl
                        local.tee 0
                        local.get 0
                        i32.const 520192
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 4
                        i32.and
                        local.tee 1
                        i32.shl
                        local.tee 0
                        local.get 0
                        i32.const 245760
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 2
                        i32.and
                        local.tee 0
                        i32.shl
                        i32.const 15
                        i32.shr_u
                        local.get 1
                        local.get 3
                        i32.or
                        local.get 0
                        i32.or
                        i32.sub
                        local.tee 0
                        i32.const 1
                        i32.shl
                        local.get 2
                        local.get 0
                        i32.const 21
                        i32.add
                        i32.shr_u
                        i32.const 1
                        i32.and
                        i32.or
                        i32.const 28
                        i32.add
                      end
                      local.tee 3
                      i32.store offset=28
                      local.get 8
                      i64.const 0
                      i64.store offset=16 align=4
                      local.get 3
                      i32.const 2
                      i32.shl
                      i32.const 4208
                      i32.add
                      local.set 4
                      i32.const 3908
                      i32.load
                      local.tee 1
                      i32.const 1
                      local.get 3
                      i32.shl
                      local.tee 0
                      i32.and
                      i32.eqz
                      if  ;; label = @10
                        local.get 4
                        local.get 8
                        i32.store
                        i32.const 3908
                        local.get 0
                        local.get 1
                        i32.or
                        i32.store
                        local.get 8
                        local.get 4
                        i32.store offset=24
                        local.get 8
                        local.get 8
                        i32.store offset=8
                        local.get 8
                        local.get 8
                        i32.store offset=12
                        br 3 (;@7;)
                      end
                      local.get 2
                      i32.const 0
                      i32.const 25
                      local.get 3
                      i32.const 1
                      i32.shr_u
                      i32.sub
                      local.get 3
                      i32.const 31
                      i32.eq
                      select
                      i32.shl
                      local.set 3
                      local.get 4
                      i32.load
                      local.set 1
                      loop  ;; label = @10
                        local.get 1
                        local.tee 0
                        i32.load offset=4
                        i32.const -8
                        i32.and
                        local.get 2
                        i32.eq
                        br_if 2 (;@8;)
                        local.get 3
                        i32.const 29
                        i32.shr_u
                        local.set 1
                        local.get 3
                        i32.const 1
                        i32.shl
                        local.set 3
                        local.get 0
                        local.get 1
                        i32.const 4
                        i32.and
                        i32.add
                        i32.const 16
                        i32.add
                        local.tee 4
                        i32.load
                        local.tee 1
                        br_if 0 (;@10;)
                      end
                      local.get 4
                      local.get 8
                      i32.store
                      local.get 8
                      local.get 0
                      i32.store offset=24
                      local.get 8
                      local.get 8
                      i32.store offset=12
                      local.get 8
                      local.get 8
                      i32.store offset=8
                      br 2 (;@7;)
                    end
                    local.get 1
                    i32.const -8
                    local.get 1
                    i32.sub
                    i32.const 15
                    i32.and
                    i32.const 0
                    local.get 1
                    i32.const 8
                    i32.add
                    i32.const 15
                    i32.and
                    select
                    local.tee 2
                    i32.add
                    local.tee 3
                    local.get 5
                    i32.const -56
                    i32.add
                    local.tee 0
                    local.get 2
                    i32.sub
                    local.tee 2
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 0
                    local.get 1
                    i32.add
                    i32.const 56
                    i32.store offset=4
                    local.get 6
                    local.get 4
                    i32.const 55
                    local.get 4
                    i32.sub
                    i32.const 15
                    i32.and
                    i32.const 0
                    local.get 4
                    i32.const -55
                    i32.add
                    i32.const 15
                    i32.and
                    select
                    i32.add
                    i32.const -63
                    i32.add
                    local.tee 0
                    local.get 0
                    local.get 6
                    i32.const 16
                    i32.add
                    i32.lt_u
                    select
                    local.tee 0
                    i32.const 35
                    i32.store offset=4
                    i32.const 3932
                    i32.const 4392
                    i32.load
                    i32.store
                    i32.const 3916
                    local.get 2
                    i32.store
                    i32.const 3928
                    local.get 3
                    i32.store
                    local.get 0
                    i32.const 16
                    i32.add
                    i32.const 4360
                    i64.load align=4
                    i64.store align=4
                    local.get 0
                    i32.const 4352
                    i64.load align=4
                    i64.store offset=8 align=4
                    i32.const 4360
                    local.get 0
                    i32.const 8
                    i32.add
                    i32.store
                    i32.const 4356
                    local.get 5
                    i32.store
                    i32.const 4352
                    local.get 1
                    i32.store
                    i32.const 4364
                    i32.const 0
                    i32.store
                    local.get 0
                    i32.const 36
                    i32.add
                    local.set 2
                    loop  ;; label = @9
                      local.get 2
                      i32.const 7
                      i32.store
                      local.get 4
                      local.get 2
                      i32.const 4
                      i32.add
                      local.tee 2
                      i32.gt_u
                      br_if 0 (;@9;)
                    end
                    local.get 0
                    local.get 6
                    i32.eq
                    br_if 3 (;@5;)
                    local.get 0
                    local.get 0
                    i32.load offset=4
                    i32.const -2
                    i32.and
                    i32.store offset=4
                    local.get 0
                    local.get 0
                    local.get 6
                    i32.sub
                    local.tee 4
                    i32.store
                    local.get 6
                    local.get 4
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 4
                    i32.const 255
                    i32.le_u
                    if  ;; label = @9
                      local.get 4
                      i32.const 3
                      i32.shr_u
                      local.tee 0
                      i32.const 3
                      i32.shl
                      i32.const 3944
                      i32.add
                      local.set 1
                      block (result i32)  ;; label = @10
                        i32.const 3904
                        i32.load
                        local.tee 2
                        i32.const 1
                        local.get 0
                        i32.shl
                        local.tee 0
                        i32.and
                        i32.eqz
                        if  ;; label = @11
                          i32.const 3904
                          local.get 0
                          local.get 2
                          i32.or
                          i32.store
                          local.get 1
                          br 1 (;@10;)
                        end
                        local.get 1
                        i32.load offset=8
                      end
                      local.tee 0
                      local.get 6
                      i32.store offset=12
                      local.get 1
                      local.get 6
                      i32.store offset=8
                      local.get 6
                      local.get 1
                      i32.store offset=12
                      local.get 6
                      local.get 0
                      i32.store offset=8
                      br 4 (;@5;)
                    end
                    local.get 6
                    i64.const 0
                    i64.store offset=16 align=4
                    local.get 6
                    i32.const 28
                    i32.add
                    block (result i32)  ;; label = @9
                      i32.const 0
                      local.get 4
                      i32.const 8
                      i32.shr_u
                      local.tee 0
                      i32.eqz
                      br_if 0 (;@9;)
                      drop
                      i32.const 31
                      local.get 4
                      i32.const 16777215
                      i32.gt_u
                      br_if 0 (;@9;)
                      drop
                      local.get 0
                      local.get 0
                      i32.const 1048320
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 8
                      i32.and
                      local.tee 2
                      i32.shl
                      local.tee 0
                      local.get 0
                      i32.const 520192
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 4
                      i32.and
                      local.tee 1
                      i32.shl
                      local.tee 0
                      local.get 0
                      i32.const 245760
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 2
                      i32.and
                      local.tee 0
                      i32.shl
                      i32.const 15
                      i32.shr_u
                      local.get 1
                      local.get 2
                      i32.or
                      local.get 0
                      i32.or
                      i32.sub
                      local.tee 0
                      i32.const 1
                      i32.shl
                      local.get 4
                      local.get 0
                      i32.const 21
                      i32.add
                      i32.shr_u
                      i32.const 1
                      i32.and
                      i32.or
                      i32.const 28
                      i32.add
                    end
                    local.tee 2
                    i32.store
                    local.get 2
                    i32.const 2
                    i32.shl
                    i32.const 4208
                    i32.add
                    local.set 3
                    i32.const 3908
                    i32.load
                    local.tee 1
                    i32.const 1
                    local.get 2
                    i32.shl
                    local.tee 0
                    i32.and
                    i32.eqz
                    if  ;; label = @9
                      local.get 3
                      local.get 6
                      i32.store
                      i32.const 3908
                      local.get 0
                      local.get 1
                      i32.or
                      i32.store
                      local.get 6
                      i32.const 24
                      i32.add
                      local.get 3
                      i32.store
                      local.get 6
                      local.get 6
                      i32.store offset=8
                      local.get 6
                      local.get 6
                      i32.store offset=12
                      br 4 (;@5;)
                    end
                    local.get 4
                    i32.const 0
                    i32.const 25
                    local.get 2
                    i32.const 1
                    i32.shr_u
                    i32.sub
                    local.get 2
                    i32.const 31
                    i32.eq
                    select
                    i32.shl
                    local.set 2
                    local.get 3
                    i32.load
                    local.set 1
                    loop  ;; label = @9
                      local.get 1
                      local.tee 0
                      i32.load offset=4
                      i32.const -8
                      i32.and
                      local.get 4
                      i32.eq
                      br_if 3 (;@6;)
                      local.get 2
                      i32.const 29
                      i32.shr_u
                      local.set 1
                      local.get 2
                      i32.const 1
                      i32.shl
                      local.set 2
                      local.get 0
                      local.get 1
                      i32.const 4
                      i32.and
                      i32.add
                      i32.const 16
                      i32.add
                      local.tee 3
                      i32.load
                      local.tee 1
                      br_if 0 (;@9;)
                    end
                    local.get 3
                    local.get 6
                    i32.store
                    local.get 6
                    i32.const 24
                    i32.add
                    local.get 0
                    i32.store
                    local.get 6
                    local.get 6
                    i32.store offset=12
                    local.get 6
                    local.get 6
                    i32.store offset=8
                    br 3 (;@5;)
                  end
                  local.get 0
                  i32.load offset=8
                  local.set 1
                  local.get 0
                  local.get 8
                  i32.store offset=8
                  local.get 1
                  local.get 8
                  i32.store offset=12
                  local.get 8
                  i32.const 0
                  i32.store offset=24
                  local.get 8
                  local.get 1
                  i32.store offset=8
                  local.get 8
                  local.get 0
                  i32.store offset=12
                end
                local.get 9
                i32.const 8
                i32.add
                local.set 2
                br 5 (;@1;)
              end
              local.get 0
              i32.load offset=8
              local.set 1
              local.get 0
              local.get 6
              i32.store offset=8
              local.get 1
              local.get 6
              i32.store offset=12
              local.get 6
              i32.const 24
              i32.add
              i32.const 0
              i32.store
              local.get 6
              local.get 1
              i32.store offset=8
              local.get 6
              local.get 0
              i32.store offset=12
            end
            i32.const 3916
            i32.load
            local.tee 0
            local.get 7
            i32.le_u
            br_if 0 (;@4;)
            i32.const 3928
            i32.load
            local.tee 2
            local.get 7
            i32.add
            local.tee 1
            local.get 0
            local.get 7
            i32.sub
            local.tee 0
            i32.const 1
            i32.or
            i32.store offset=4
            i32.const 3916
            local.get 0
            i32.store
            i32.const 3928
            local.get 1
            i32.store
            local.get 2
            local.get 7
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 2
            i32.const 8
            i32.add
            local.set 2
            br 3 (;@1;)
          end
          i32.const 0
          local.set 2
          i32.const 4400
          i32.const 48
          i32.store
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 6
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 4
            i32.load offset=28
            local.tee 3
            i32.const 2
            i32.shl
            i32.const 4208
            i32.add
            local.tee 2
            i32.load
            local.get 4
            i32.eq
            if  ;; label = @5
              local.get 2
              local.get 1
              i32.store
              local.get 1
              br_if 1 (;@4;)
              i32.const 3908
              local.get 9
              i32.const -2
              local.get 3
              i32.rotl
              i32.and
              local.tee 9
              i32.store
              br 2 (;@3;)
            end
            local.get 6
            i32.const 16
            i32.const 20
            local.get 6
            i32.load offset=16
            local.get 4
            i32.eq
            select
            i32.add
            local.get 1
            i32.store
            local.get 1
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 1
          local.get 6
          i32.store offset=24
          local.get 4
          i32.load offset=16
          local.tee 2
          if  ;; label = @4
            local.get 1
            local.get 2
            i32.store offset=16
            local.get 2
            local.get 1
            i32.store offset=24
          end
          local.get 4
          i32.const 20
          i32.add
          i32.load
          local.tee 2
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.const 20
          i32.add
          local.get 2
          i32.store
          local.get 2
          local.get 1
          i32.store offset=24
        end
        block  ;; label = @3
          local.get 0
          i32.const 15
          i32.le_u
          if  ;; label = @4
            local.get 4
            local.get 0
            local.get 7
            i32.add
            local.tee 0
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 0
            local.get 4
            i32.add
            local.tee 0
            local.get 0
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            br 1 (;@3;)
          end
          local.get 4
          local.get 7
          i32.add
          local.tee 5
          local.get 0
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 4
          local.get 7
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 0
          local.get 5
          i32.add
          local.get 0
          i32.store
          local.get 0
          i32.const 255
          i32.le_u
          if  ;; label = @4
            local.get 0
            i32.const 3
            i32.shr_u
            local.tee 1
            i32.const 3
            i32.shl
            i32.const 3944
            i32.add
            local.set 0
            block (result i32)  ;; label = @5
              i32.const 3904
              i32.load
              local.tee 2
              i32.const 1
              local.get 1
              i32.shl
              local.tee 1
              i32.and
              i32.eqz
              if  ;; label = @6
                i32.const 3904
                local.get 1
                local.get 2
                i32.or
                i32.store
                local.get 0
                br 1 (;@5;)
              end
              local.get 0
              i32.load offset=8
            end
            local.tee 3
            local.get 5
            i32.store offset=12
            local.get 0
            local.get 5
            i32.store offset=8
            local.get 5
            local.get 0
            i32.store offset=12
            local.get 5
            local.get 3
            i32.store offset=8
            br 1 (;@3;)
          end
          local.get 5
          block (result i32)  ;; label = @4
            i32.const 0
            local.get 0
            i32.const 8
            i32.shr_u
            local.tee 1
            i32.eqz
            br_if 0 (;@4;)
            drop
            i32.const 31
            local.get 0
            i32.const 16777215
            i32.gt_u
            br_if 0 (;@4;)
            drop
            local.get 1
            local.get 1
            i32.const 1048320
            i32.add
            i32.const 16
            i32.shr_u
            i32.const 8
            i32.and
            local.tee 3
            i32.shl
            local.tee 1
            local.get 1
            i32.const 520192
            i32.add
            i32.const 16
            i32.shr_u
            i32.const 4
            i32.and
            local.tee 2
            i32.shl
            local.tee 1
            local.get 1
            i32.const 245760
            i32.add
            i32.const 16
            i32.shr_u
            i32.const 2
            i32.and
            local.tee 1
            i32.shl
            i32.const 15
            i32.shr_u
            local.get 2
            local.get 3
            i32.or
            local.get 1
            i32.or
            i32.sub
            local.tee 1
            i32.const 1
            i32.shl
            local.get 0
            local.get 1
            i32.const 21
            i32.add
            i32.shr_u
            i32.const 1
            i32.and
            i32.or
            i32.const 28
            i32.add
          end
          local.tee 2
          i32.store offset=28
          local.get 5
          i64.const 0
          i64.store offset=16 align=4
          local.get 2
          i32.const 2
          i32.shl
          i32.const 4208
          i32.add
          local.set 3
          local.get 9
          i32.const 1
          local.get 2
          i32.shl
          local.tee 1
          i32.and
          i32.eqz
          if  ;; label = @4
            local.get 3
            local.get 5
            i32.store
            i32.const 3908
            local.get 1
            local.get 9
            i32.or
            i32.store
            local.get 5
            local.get 3
            i32.store offset=24
            local.get 5
            local.get 5
            i32.store offset=8
            local.get 5
            local.get 5
            i32.store offset=12
            br 1 (;@3;)
          end
          local.get 0
          i32.const 0
          i32.const 25
          local.get 2
          i32.const 1
          i32.shr_u
          i32.sub
          local.get 2
          i32.const 31
          i32.eq
          select
          i32.shl
          local.set 2
          local.get 3
          i32.load
          local.set 7
          block  ;; label = @4
            loop  ;; label = @5
              local.get 7
              local.tee 1
              i32.load offset=4
              i32.const -8
              i32.and
              local.get 0
              i32.eq
              br_if 1 (;@4;)
              local.get 2
              i32.const 29
              i32.shr_u
              local.set 3
              local.get 2
              i32.const 1
              i32.shl
              local.set 2
              local.get 1
              local.get 3
              i32.const 4
              i32.and
              i32.add
              i32.const 16
              i32.add
              local.tee 3
              i32.load
              local.tee 7
              br_if 0 (;@5;)
            end
            local.get 3
            local.get 5
            i32.store
            local.get 5
            local.get 1
            i32.store offset=24
            local.get 5
            local.get 5
            i32.store offset=12
            local.get 5
            local.get 5
            i32.store offset=8
            br 1 (;@3;)
          end
          local.get 1
          i32.load offset=8
          local.set 0
          local.get 1
          local.get 5
          i32.store offset=8
          local.get 0
          local.get 5
          i32.store offset=12
          local.get 5
          i32.const 0
          i32.store offset=24
          local.get 5
          local.get 0
          i32.store offset=8
          local.get 5
          local.get 1
          i32.store offset=12
        end
        local.get 4
        i32.const 8
        i32.add
        local.set 2
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 10
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 1
          i32.load offset=28
          local.tee 2
          i32.const 2
          i32.shl
          i32.const 4208
          i32.add
          local.tee 0
          i32.load
          local.get 1
          i32.eq
          if  ;; label = @4
            local.get 0
            local.get 4
            i32.store
            local.get 4
            br_if 1 (;@3;)
            i32.const 3908
            local.get 9
            i32.const -2
            local.get 2
            i32.rotl
            i32.and
            i32.store
            br 2 (;@2;)
          end
          local.get 10
          i32.const 16
          i32.const 20
          local.get 10
          i32.load offset=16
          local.get 1
          i32.eq
          select
          i32.add
          local.get 4
          i32.store
          local.get 4
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 4
        local.get 10
        i32.store offset=24
        local.get 1
        i32.load offset=16
        local.tee 0
        if  ;; label = @3
          local.get 4
          local.get 0
          i32.store offset=16
          local.get 0
          local.get 4
          i32.store offset=24
        end
        local.get 1
        i32.const 20
        i32.add
        i32.load
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        i32.const 20
        i32.add
        local.get 0
        i32.store
        local.get 0
        local.get 4
        i32.store offset=24
      end
      block  ;; label = @2
        local.get 3
        i32.const 15
        i32.le_u
        if  ;; label = @3
          local.get 1
          local.get 3
          local.get 7
          i32.add
          local.tee 0
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 0
          local.get 1
          i32.add
          local.tee 0
          local.get 0
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          br 1 (;@2;)
        end
        local.get 1
        local.get 7
        i32.add
        local.tee 6
        local.get 3
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 1
        local.get 7
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 3
        local.get 6
        i32.add
        local.get 3
        i32.store
        local.get 8
        if  ;; label = @3
          local.get 8
          i32.const 3
          i32.shr_u
          local.tee 2
          i32.const 3
          i32.shl
          i32.const 3944
          i32.add
          local.set 0
          i32.const 3924
          i32.load
          local.set 7
          block (result i32)  ;; label = @4
            i32.const 1
            local.get 2
            i32.shl
            local.tee 2
            local.get 5
            i32.and
            i32.eqz
            if  ;; label = @5
              i32.const 3904
              local.get 2
              local.get 5
              i32.or
              i32.store
              local.get 0
              br 1 (;@4;)
            end
            local.get 0
            i32.load offset=8
          end
          local.tee 4
          local.get 7
          i32.store offset=12
          local.get 0
          local.get 7
          i32.store offset=8
          local.get 7
          local.get 0
          i32.store offset=12
          local.get 7
          local.get 4
          i32.store offset=8
        end
        i32.const 3924
        local.get 6
        i32.store
        i32.const 3912
        local.get 3
        i32.store
      end
      local.get 1
      i32.const 8
      i32.add
      local.set 2
    end
    local.get 11
    i32.const 16
    i32.add
    global.set 0
    local.get 2)
  (func (;15;) (type 6) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const -8
      i32.add
      local.tee 3
      local.get 0
      i32.const -4
      i32.add
      i32.load
      local.tee 1
      i32.const -8
      i32.and
      local.tee 0
      i32.add
      local.set 5
      block  ;; label = @2
        local.get 1
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 1
        i32.const 3
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        local.get 3
        i32.load
        local.tee 2
        i32.sub
        local.tee 3
        i32.const 3920
        i32.load
        local.tee 4
        i32.lt_u
        br_if 1 (;@1;)
        local.get 0
        local.get 2
        i32.add
        local.set 0
        local.get 3
        i32.const 3924
        i32.load
        i32.ne
        if  ;; label = @3
          local.get 2
          i32.const 255
          i32.le_u
          if  ;; label = @4
            local.get 3
            i32.load offset=8
            local.tee 4
            local.get 2
            i32.const 3
            i32.shr_u
            local.tee 2
            i32.const 3
            i32.shl
            i32.const 3944
            i32.add
            i32.ne
            drop
            local.get 4
            local.get 3
            i32.load offset=12
            local.tee 1
            i32.eq
            if  ;; label = @5
              i32.const 3904
              i32.const 3904
              i32.load
              i32.const -2
              local.get 2
              i32.rotl
              i32.and
              i32.store
              br 3 (;@2;)
            end
            local.get 1
            local.get 4
            i32.store offset=8
            local.get 4
            local.get 1
            i32.store offset=12
            br 2 (;@2;)
          end
          local.get 3
          i32.load offset=24
          local.set 6
          block  ;; label = @4
            local.get 3
            local.get 3
            i32.load offset=12
            local.tee 1
            i32.ne
            if  ;; label = @5
              local.get 4
              local.get 3
              i32.load offset=8
              local.tee 2
              i32.le_u
              if  ;; label = @6
                local.get 2
                i32.load offset=12
                drop
              end
              local.get 1
              local.get 2
              i32.store offset=8
              local.get 2
              local.get 1
              i32.store offset=12
              br 1 (;@4;)
            end
            block  ;; label = @5
              local.get 3
              i32.const 20
              i32.add
              local.tee 2
              i32.load
              local.tee 4
              br_if 0 (;@5;)
              local.get 3
              i32.const 16
              i32.add
              local.tee 2
              i32.load
              local.tee 4
              br_if 0 (;@5;)
              i32.const 0
              local.set 1
              br 1 (;@4;)
            end
            loop  ;; label = @5
              local.get 2
              local.set 7
              local.get 4
              local.tee 1
              i32.const 20
              i32.add
              local.tee 2
              i32.load
              local.tee 4
              br_if 0 (;@5;)
              local.get 1
              i32.const 16
              i32.add
              local.set 2
              local.get 1
              i32.load offset=16
              local.tee 4
              br_if 0 (;@5;)
            end
            local.get 7
            i32.const 0
            i32.store
          end
          local.get 6
          i32.eqz
          br_if 1 (;@2;)
          block  ;; label = @4
            local.get 3
            local.get 3
            i32.load offset=28
            local.tee 2
            i32.const 2
            i32.shl
            i32.const 4208
            i32.add
            local.tee 4
            i32.load
            i32.eq
            if  ;; label = @5
              local.get 4
              local.get 1
              i32.store
              local.get 1
              br_if 1 (;@4;)
              i32.const 3908
              i32.const 3908
              i32.load
              i32.const -2
              local.get 2
              i32.rotl
              i32.and
              i32.store
              br 3 (;@2;)
            end
            local.get 6
            i32.const 16
            i32.const 20
            local.get 6
            i32.load offset=16
            local.get 3
            i32.eq
            select
            i32.add
            local.get 1
            i32.store
            local.get 1
            i32.eqz
            br_if 2 (;@2;)
          end
          local.get 1
          local.get 6
          i32.store offset=24
          local.get 3
          i32.load offset=16
          local.tee 2
          if  ;; label = @4
            local.get 1
            local.get 2
            i32.store offset=16
            local.get 2
            local.get 1
            i32.store offset=24
          end
          local.get 3
          i32.load offset=20
          local.tee 2
          i32.eqz
          br_if 1 (;@2;)
          local.get 1
          i32.const 20
          i32.add
          local.get 2
          i32.store
          local.get 2
          local.get 1
          i32.store offset=24
          br 1 (;@2;)
        end
        local.get 5
        i32.load offset=4
        local.tee 1
        i32.const 3
        i32.and
        i32.const 3
        i32.ne
        br_if 0 (;@2;)
        local.get 5
        local.get 1
        i32.const -2
        i32.and
        i32.store offset=4
        i32.const 3912
        local.get 0
        i32.store
        local.get 0
        local.get 3
        i32.add
        local.get 0
        i32.store
        local.get 3
        local.get 0
        i32.const 1
        i32.or
        i32.store offset=4
        return
      end
      local.get 5
      local.get 3
      i32.le_u
      br_if 0 (;@1;)
      local.get 5
      i32.load offset=4
      local.tee 1
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 1
        i32.const 2
        i32.and
        i32.eqz
        if  ;; label = @3
          local.get 5
          i32.const 3928
          i32.load
          i32.eq
          if  ;; label = @4
            i32.const 3928
            local.get 3
            i32.store
            i32.const 3916
            i32.const 3916
            i32.load
            local.get 0
            i32.add
            local.tee 0
            i32.store
            local.get 3
            local.get 0
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 3
            i32.const 3924
            i32.load
            i32.ne
            br_if 3 (;@1;)
            i32.const 3912
            i32.const 0
            i32.store
            i32.const 3924
            i32.const 0
            i32.store
            return
          end
          local.get 5
          i32.const 3924
          i32.load
          i32.eq
          if  ;; label = @4
            i32.const 3924
            local.get 3
            i32.store
            i32.const 3912
            i32.const 3912
            i32.load
            local.get 0
            i32.add
            local.tee 0
            i32.store
            local.get 3
            local.get 0
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            local.get 3
            i32.add
            local.get 0
            i32.store
            return
          end
          local.get 1
          i32.const -8
          i32.and
          local.get 0
          i32.add
          local.set 0
          block  ;; label = @4
            local.get 1
            i32.const 255
            i32.le_u
            if  ;; label = @5
              local.get 5
              i32.load offset=12
              local.set 2
              local.get 5
              i32.load offset=8
              local.tee 4
              local.get 1
              i32.const 3
              i32.shr_u
              local.tee 1
              i32.const 3
              i32.shl
              i32.const 3944
              i32.add
              local.tee 7
              i32.ne
              if  ;; label = @6
                i32.const 3920
                i32.load
                drop
              end
              local.get 2
              local.get 4
              i32.eq
              if  ;; label = @6
                i32.const 3904
                i32.const 3904
                i32.load
                i32.const -2
                local.get 1
                i32.rotl
                i32.and
                i32.store
                br 2 (;@4;)
              end
              local.get 2
              local.get 7
              i32.ne
              if  ;; label = @6
                i32.const 3920
                i32.load
                drop
              end
              local.get 2
              local.get 4
              i32.store offset=8
              local.get 4
              local.get 2
              i32.store offset=12
              br 1 (;@4;)
            end
            local.get 5
            i32.load offset=24
            local.set 6
            block  ;; label = @5
              local.get 5
              local.get 5
              i32.load offset=12
              local.tee 1
              i32.ne
              if  ;; label = @6
                i32.const 3920
                i32.load
                local.get 5
                i32.load offset=8
                local.tee 2
                i32.le_u
                if  ;; label = @7
                  local.get 2
                  i32.load offset=12
                  drop
                end
                local.get 1
                local.get 2
                i32.store offset=8
                local.get 2
                local.get 1
                i32.store offset=12
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 5
                i32.const 20
                i32.add
                local.tee 2
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                local.get 5
                i32.const 16
                i32.add
                local.tee 2
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                i32.const 0
                local.set 1
                br 1 (;@5;)
              end
              loop  ;; label = @6
                local.get 2
                local.set 7
                local.get 4
                local.tee 1
                i32.const 20
                i32.add
                local.tee 2
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                local.get 1
                i32.const 16
                i32.add
                local.set 2
                local.get 1
                i32.load offset=16
                local.tee 4
                br_if 0 (;@6;)
              end
              local.get 7
              i32.const 0
              i32.store
            end
            local.get 6
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 5
              local.get 5
              i32.load offset=28
              local.tee 2
              i32.const 2
              i32.shl
              i32.const 4208
              i32.add
              local.tee 4
              i32.load
              i32.eq
              if  ;; label = @6
                local.get 4
                local.get 1
                i32.store
                local.get 1
                br_if 1 (;@5;)
                i32.const 3908
                i32.const 3908
                i32.load
                i32.const -2
                local.get 2
                i32.rotl
                i32.and
                i32.store
                br 2 (;@4;)
              end
              local.get 6
              i32.const 16
              i32.const 20
              local.get 6
              i32.load offset=16
              local.get 5
              i32.eq
              select
              i32.add
              local.get 1
              i32.store
              local.get 1
              i32.eqz
              br_if 1 (;@4;)
            end
            local.get 1
            local.get 6
            i32.store offset=24
            local.get 5
            i32.load offset=16
            local.tee 2
            if  ;; label = @5
              local.get 1
              local.get 2
              i32.store offset=16
              local.get 2
              local.get 1
              i32.store offset=24
            end
            local.get 5
            i32.load offset=20
            local.tee 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.const 20
            i32.add
            local.get 2
            i32.store
            local.get 2
            local.get 1
            i32.store offset=24
          end
          local.get 0
          local.get 3
          i32.add
          local.get 0
          i32.store
          local.get 3
          local.get 0
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 3
          i32.const 3924
          i32.load
          i32.ne
          br_if 1 (;@2;)
          i32.const 3912
          local.get 0
          i32.store
          return
        end
        local.get 5
        local.get 1
        i32.const -2
        i32.and
        i32.store offset=4
        local.get 0
        local.get 3
        i32.add
        local.get 0
        i32.store
        local.get 3
        local.get 0
        i32.const 1
        i32.or
        i32.store offset=4
      end
      local.get 0
      i32.const 255
      i32.le_u
      if  ;; label = @2
        local.get 0
        i32.const 3
        i32.shr_u
        local.tee 1
        i32.const 3
        i32.shl
        i32.const 3944
        i32.add
        local.set 0
        block (result i32)  ;; label = @3
          i32.const 3904
          i32.load
          local.tee 2
          i32.const 1
          local.get 1
          i32.shl
          local.tee 1
          i32.and
          i32.eqz
          if  ;; label = @4
            i32.const 3904
            local.get 1
            local.get 2
            i32.or
            i32.store
            local.get 0
            br 1 (;@3;)
          end
          local.get 0
          i32.load offset=8
        end
        local.tee 2
        local.get 3
        i32.store offset=12
        local.get 0
        local.get 3
        i32.store offset=8
        local.get 3
        local.get 0
        i32.store offset=12
        local.get 3
        local.get 2
        i32.store offset=8
        return
      end
      local.get 3
      i64.const 0
      i64.store offset=16 align=4
      local.get 3
      i32.const 28
      i32.add
      block (result i32)  ;; label = @2
        i32.const 0
        local.get 0
        i32.const 8
        i32.shr_u
        local.tee 1
        i32.eqz
        br_if 0 (;@2;)
        drop
        i32.const 31
        local.get 0
        i32.const 16777215
        i32.gt_u
        br_if 0 (;@2;)
        drop
        local.get 1
        local.get 1
        i32.const 1048320
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 8
        i32.and
        local.tee 1
        i32.shl
        local.tee 2
        local.get 2
        i32.const 520192
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 4
        i32.and
        local.tee 2
        i32.shl
        local.tee 4
        local.get 4
        i32.const 245760
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 2
        i32.and
        local.tee 4
        i32.shl
        i32.const 15
        i32.shr_u
        local.get 1
        local.get 2
        i32.or
        local.get 4
        i32.or
        i32.sub
        local.tee 1
        i32.const 1
        i32.shl
        local.get 0
        local.get 1
        i32.const 21
        i32.add
        i32.shr_u
        i32.const 1
        i32.and
        i32.or
        i32.const 28
        i32.add
      end
      local.tee 2
      i32.store
      local.get 2
      i32.const 2
      i32.shl
      i32.const 4208
      i32.add
      local.set 1
      block  ;; label = @2
        i32.const 3908
        i32.load
        local.tee 4
        i32.const 1
        local.get 2
        i32.shl
        local.tee 7
        i32.and
        i32.eqz
        if  ;; label = @3
          local.get 1
          local.get 3
          i32.store
          i32.const 3908
          local.get 4
          local.get 7
          i32.or
          i32.store
          local.get 3
          i32.const 24
          i32.add
          local.get 1
          i32.store
          local.get 3
          local.get 3
          i32.store offset=8
          local.get 3
          local.get 3
          i32.store offset=12
          br 1 (;@2;)
        end
        local.get 0
        i32.const 0
        i32.const 25
        local.get 2
        i32.const 1
        i32.shr_u
        i32.sub
        local.get 2
        i32.const 31
        i32.eq
        select
        i32.shl
        local.set 2
        local.get 1
        i32.load
        local.set 1
        block  ;; label = @3
          loop  ;; label = @4
            local.get 1
            local.tee 4
            i32.load offset=4
            i32.const -8
            i32.and
            local.get 0
            i32.eq
            br_if 1 (;@3;)
            local.get 2
            i32.const 29
            i32.shr_u
            local.set 1
            local.get 2
            i32.const 1
            i32.shl
            local.set 2
            local.get 4
            local.get 1
            i32.const 4
            i32.and
            i32.add
            i32.const 16
            i32.add
            local.tee 7
            i32.load
            local.tee 1
            br_if 0 (;@4;)
          end
          local.get 7
          local.get 3
          i32.store
          local.get 3
          i32.const 24
          i32.add
          local.get 4
          i32.store
          local.get 3
          local.get 3
          i32.store offset=12
          local.get 3
          local.get 3
          i32.store offset=8
          br 1 (;@2;)
        end
        local.get 4
        i32.load offset=8
        local.set 0
        local.get 4
        local.get 3
        i32.store offset=8
        local.get 0
        local.get 3
        i32.store offset=12
        local.get 3
        i32.const 24
        i32.add
        i32.const 0
        i32.store
        local.get 3
        local.get 0
        i32.store offset=8
        local.get 3
        local.get 4
        i32.store offset=12
      end
      i32.const 3936
      i32.const 3936
      i32.load
      i32.const -1
      i32.add
      local.tee 0
      i32.store
      local.get 0
      br_if 0 (;@1;)
      i32.const 4360
      local.set 3
      loop  ;; label = @2
        local.get 3
        i32.load
        local.tee 0
        i32.const 8
        i32.add
        local.set 3
        local.get 0
        br_if 0 (;@2;)
      end
      i32.const 3936
      i32.const -1
      i32.store
    end)
  (func (;16;) (type 2) (param i32 i32) (result i32)
    (local i32 i64)
    block  ;; label = @1
      block (result i32)  ;; label = @2
        i32.const 0
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        drop
        local.get 0
        i64.extend_i32_u
        local.get 1
        i64.extend_i32_u
        i64.mul
        local.tee 3
        i32.wrap_i64
        local.tee 2
        local.get 0
        local.get 1
        i32.or
        i32.const 65536
        i32.lt_u
        br_if 0 (;@2;)
        drop
        i32.const -1
        local.get 2
        local.get 3
        i64.const 32
        i64.shr_u
        i32.wrap_i64
        select
      end
      local.tee 2
      call 14
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const -4
      i32.add
      i32.load8_u
      i32.const 3
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      local.get 2
      call 46
    end
    local.get 0)
  (func (;17;) (type 7) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 0
    local.get 1
    i32.add
    local.set 5
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=4
        local.tee 2
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 2
        i32.const 3
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load
        local.tee 3
        local.get 1
        i32.add
        local.set 1
        local.get 0
        local.get 3
        i32.sub
        local.tee 0
        i32.const 3924
        i32.load
        i32.ne
        if  ;; label = @3
          i32.const 3920
          i32.load
          local.set 4
          local.get 3
          i32.const 255
          i32.le_u
          if  ;; label = @4
            local.get 0
            i32.load offset=8
            local.tee 4
            local.get 3
            i32.const 3
            i32.shr_u
            local.tee 3
            i32.const 3
            i32.shl
            i32.const 3944
            i32.add
            i32.ne
            drop
            local.get 4
            local.get 0
            i32.load offset=12
            local.tee 2
            i32.eq
            if  ;; label = @5
              i32.const 3904
              i32.const 3904
              i32.load
              i32.const -2
              local.get 3
              i32.rotl
              i32.and
              i32.store
              br 3 (;@2;)
            end
            local.get 2
            local.get 4
            i32.store offset=8
            local.get 4
            local.get 2
            i32.store offset=12
            br 2 (;@2;)
          end
          local.get 0
          i32.load offset=24
          local.set 6
          block  ;; label = @4
            local.get 0
            local.get 0
            i32.load offset=12
            local.tee 2
            i32.ne
            if  ;; label = @5
              local.get 4
              local.get 0
              i32.load offset=8
              local.tee 3
              i32.le_u
              if  ;; label = @6
                local.get 3
                i32.load offset=12
                drop
              end
              local.get 2
              local.get 3
              i32.store offset=8
              local.get 3
              local.get 2
              i32.store offset=12
              br 1 (;@4;)
            end
            block  ;; label = @5
              local.get 0
              i32.const 20
              i32.add
              local.tee 3
              i32.load
              local.tee 4
              br_if 0 (;@5;)
              local.get 0
              i32.const 16
              i32.add
              local.tee 3
              i32.load
              local.tee 4
              br_if 0 (;@5;)
              i32.const 0
              local.set 2
              br 1 (;@4;)
            end
            loop  ;; label = @5
              local.get 3
              local.set 7
              local.get 4
              local.tee 2
              i32.const 20
              i32.add
              local.tee 3
              i32.load
              local.tee 4
              br_if 0 (;@5;)
              local.get 2
              i32.const 16
              i32.add
              local.set 3
              local.get 2
              i32.load offset=16
              local.tee 4
              br_if 0 (;@5;)
            end
            local.get 7
            i32.const 0
            i32.store
          end
          local.get 6
          i32.eqz
          br_if 1 (;@2;)
          block  ;; label = @4
            local.get 0
            local.get 0
            i32.load offset=28
            local.tee 3
            i32.const 2
            i32.shl
            i32.const 4208
            i32.add
            local.tee 4
            i32.load
            i32.eq
            if  ;; label = @5
              local.get 4
              local.get 2
              i32.store
              local.get 2
              br_if 1 (;@4;)
              i32.const 3908
              i32.const 3908
              i32.load
              i32.const -2
              local.get 3
              i32.rotl
              i32.and
              i32.store
              br 3 (;@2;)
            end
            local.get 6
            i32.const 16
            i32.const 20
            local.get 6
            i32.load offset=16
            local.get 0
            i32.eq
            select
            i32.add
            local.get 2
            i32.store
            local.get 2
            i32.eqz
            br_if 2 (;@2;)
          end
          local.get 2
          local.get 6
          i32.store offset=24
          local.get 0
          i32.load offset=16
          local.tee 3
          if  ;; label = @4
            local.get 2
            local.get 3
            i32.store offset=16
            local.get 3
            local.get 2
            i32.store offset=24
          end
          local.get 0
          i32.load offset=20
          local.tee 3
          i32.eqz
          br_if 1 (;@2;)
          local.get 2
          i32.const 20
          i32.add
          local.get 3
          i32.store
          local.get 3
          local.get 2
          i32.store offset=24
          br 1 (;@2;)
        end
        local.get 5
        i32.load offset=4
        local.tee 2
        i32.const 3
        i32.and
        i32.const 3
        i32.ne
        br_if 0 (;@2;)
        local.get 5
        local.get 2
        i32.const -2
        i32.and
        i32.store offset=4
        i32.const 3912
        local.get 1
        i32.store
        local.get 5
        local.get 1
        i32.store
        local.get 0
        local.get 1
        i32.const 1
        i32.or
        i32.store offset=4
        return
      end
      block  ;; label = @2
        local.get 5
        i32.load offset=4
        local.tee 2
        i32.const 2
        i32.and
        i32.eqz
        if  ;; label = @3
          local.get 5
          i32.const 3928
          i32.load
          i32.eq
          if  ;; label = @4
            i32.const 3928
            local.get 0
            i32.store
            i32.const 3916
            i32.const 3916
            i32.load
            local.get 1
            i32.add
            local.tee 1
            i32.store
            local.get 0
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            i32.const 3924
            i32.load
            i32.ne
            br_if 3 (;@1;)
            i32.const 3912
            i32.const 0
            i32.store
            i32.const 3924
            i32.const 0
            i32.store
            return
          end
          local.get 5
          i32.const 3924
          i32.load
          i32.eq
          if  ;; label = @4
            i32.const 3924
            local.get 0
            i32.store
            i32.const 3912
            i32.const 3912
            i32.load
            local.get 1
            i32.add
            local.tee 1
            i32.store
            local.get 0
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            local.get 1
            i32.add
            local.get 1
            i32.store
            return
          end
          i32.const 3920
          i32.load
          local.set 3
          local.get 2
          i32.const -8
          i32.and
          local.get 1
          i32.add
          local.set 1
          block  ;; label = @4
            local.get 2
            i32.const 255
            i32.le_u
            if  ;; label = @5
              local.get 5
              i32.load offset=8
              local.tee 4
              local.get 2
              i32.const 3
              i32.shr_u
              local.tee 2
              i32.const 3
              i32.shl
              i32.const 3944
              i32.add
              i32.ne
              drop
              local.get 4
              local.get 5
              i32.load offset=12
              local.tee 3
              i32.eq
              if  ;; label = @6
                i32.const 3904
                i32.const 3904
                i32.load
                i32.const -2
                local.get 2
                i32.rotl
                i32.and
                i32.store
                br 2 (;@4;)
              end
              local.get 3
              local.get 4
              i32.store offset=8
              local.get 4
              local.get 3
              i32.store offset=12
              br 1 (;@4;)
            end
            local.get 5
            i32.load offset=24
            local.set 6
            block  ;; label = @5
              local.get 5
              local.get 5
              i32.load offset=12
              local.tee 2
              i32.ne
              if  ;; label = @6
                local.get 3
                local.get 5
                i32.load offset=8
                local.tee 3
                i32.le_u
                if  ;; label = @7
                  local.get 3
                  i32.load offset=12
                  drop
                end
                local.get 2
                local.get 3
                i32.store offset=8
                local.get 3
                local.get 2
                i32.store offset=12
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 5
                i32.const 20
                i32.add
                local.tee 3
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                local.get 5
                i32.const 16
                i32.add
                local.tee 3
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                i32.const 0
                local.set 2
                br 1 (;@5;)
              end
              loop  ;; label = @6
                local.get 3
                local.set 7
                local.get 4
                local.tee 2
                i32.const 20
                i32.add
                local.tee 3
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                local.get 2
                i32.const 16
                i32.add
                local.set 3
                local.get 2
                i32.load offset=16
                local.tee 4
                br_if 0 (;@6;)
              end
              local.get 7
              i32.const 0
              i32.store
            end
            local.get 6
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 5
              local.get 5
              i32.load offset=28
              local.tee 3
              i32.const 2
              i32.shl
              i32.const 4208
              i32.add
              local.tee 4
              i32.load
              i32.eq
              if  ;; label = @6
                local.get 4
                local.get 2
                i32.store
                local.get 2
                br_if 1 (;@5;)
                i32.const 3908
                i32.const 3908
                i32.load
                i32.const -2
                local.get 3
                i32.rotl
                i32.and
                i32.store
                br 2 (;@4;)
              end
              local.get 6
              i32.const 16
              i32.const 20
              local.get 6
              i32.load offset=16
              local.get 5
              i32.eq
              select
              i32.add
              local.get 2
              i32.store
              local.get 2
              i32.eqz
              br_if 1 (;@4;)
            end
            local.get 2
            local.get 6
            i32.store offset=24
            local.get 5
            i32.load offset=16
            local.tee 3
            if  ;; label = @5
              local.get 2
              local.get 3
              i32.store offset=16
              local.get 3
              local.get 2
              i32.store offset=24
            end
            local.get 5
            i32.load offset=20
            local.tee 3
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            i32.const 20
            i32.add
            local.get 3
            i32.store
            local.get 3
            local.get 2
            i32.store offset=24
          end
          local.get 0
          local.get 1
          i32.add
          local.get 1
          i32.store
          local.get 0
          local.get 1
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 0
          i32.const 3924
          i32.load
          i32.ne
          br_if 1 (;@2;)
          i32.const 3912
          local.get 1
          i32.store
          return
        end
        local.get 5
        local.get 2
        i32.const -2
        i32.and
        i32.store offset=4
        local.get 0
        local.get 1
        i32.add
        local.get 1
        i32.store
        local.get 0
        local.get 1
        i32.const 1
        i32.or
        i32.store offset=4
      end
      local.get 1
      i32.const 255
      i32.le_u
      if  ;; label = @2
        local.get 1
        i32.const 3
        i32.shr_u
        local.tee 2
        i32.const 3
        i32.shl
        i32.const 3944
        i32.add
        local.set 1
        block (result i32)  ;; label = @3
          i32.const 3904
          i32.load
          local.tee 3
          i32.const 1
          local.get 2
          i32.shl
          local.tee 2
          i32.and
          i32.eqz
          if  ;; label = @4
            i32.const 3904
            local.get 2
            local.get 3
            i32.or
            i32.store
            local.get 1
            br 1 (;@3;)
          end
          local.get 1
          i32.load offset=8
        end
        local.tee 3
        local.get 0
        i32.store offset=12
        local.get 1
        local.get 0
        i32.store offset=8
        local.get 0
        local.get 1
        i32.store offset=12
        local.get 0
        local.get 3
        i32.store offset=8
        return
      end
      local.get 0
      i64.const 0
      i64.store offset=16 align=4
      local.get 0
      i32.const 28
      i32.add
      block (result i32)  ;; label = @2
        i32.const 0
        local.get 1
        i32.const 8
        i32.shr_u
        local.tee 2
        i32.eqz
        br_if 0 (;@2;)
        drop
        i32.const 31
        local.get 1
        i32.const 16777215
        i32.gt_u
        br_if 0 (;@2;)
        drop
        local.get 2
        local.get 2
        i32.const 1048320
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 8
        i32.and
        local.tee 2
        i32.shl
        local.tee 3
        local.get 3
        i32.const 520192
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 4
        i32.and
        local.tee 3
        i32.shl
        local.tee 4
        local.get 4
        i32.const 245760
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 2
        i32.and
        local.tee 4
        i32.shl
        i32.const 15
        i32.shr_u
        local.get 2
        local.get 3
        i32.or
        local.get 4
        i32.or
        i32.sub
        local.tee 2
        i32.const 1
        i32.shl
        local.get 1
        local.get 2
        i32.const 21
        i32.add
        i32.shr_u
        i32.const 1
        i32.and
        i32.or
        i32.const 28
        i32.add
      end
      local.tee 3
      i32.store
      local.get 3
      i32.const 2
      i32.shl
      i32.const 4208
      i32.add
      local.set 2
      i32.const 3908
      i32.load
      local.tee 4
      i32.const 1
      local.get 3
      i32.shl
      local.tee 7
      i32.and
      i32.eqz
      if  ;; label = @2
        local.get 2
        local.get 0
        i32.store
        i32.const 3908
        local.get 4
        local.get 7
        i32.or
        i32.store
        local.get 0
        i32.const 24
        i32.add
        local.get 2
        i32.store
        local.get 0
        local.get 0
        i32.store offset=8
        local.get 0
        local.get 0
        i32.store offset=12
        return
      end
      local.get 1
      i32.const 0
      i32.const 25
      local.get 3
      i32.const 1
      i32.shr_u
      i32.sub
      local.get 3
      i32.const 31
      i32.eq
      select
      i32.shl
      local.set 3
      local.get 2
      i32.load
      local.set 2
      block  ;; label = @2
        loop  ;; label = @3
          local.get 2
          local.tee 4
          i32.load offset=4
          i32.const -8
          i32.and
          local.get 1
          i32.eq
          br_if 1 (;@2;)
          local.get 3
          i32.const 29
          i32.shr_u
          local.set 2
          local.get 3
          i32.const 1
          i32.shl
          local.set 3
          local.get 4
          local.get 2
          i32.const 4
          i32.and
          i32.add
          i32.const 16
          i32.add
          local.tee 7
          i32.load
          local.tee 2
          br_if 0 (;@3;)
        end
        local.get 7
        local.get 0
        i32.store
        local.get 0
        i32.const 24
        i32.add
        local.get 4
        i32.store
        local.get 0
        local.get 0
        i32.store offset=12
        local.get 0
        local.get 0
        i32.store offset=8
        return
      end
      local.get 4
      i32.load offset=8
      local.set 1
      local.get 4
      local.get 0
      i32.store offset=8
      local.get 1
      local.get 0
      i32.store offset=12
      local.get 0
      i32.const 24
      i32.add
      i32.const 0
      i32.store
      local.get 0
      local.get 1
      i32.store offset=8
      local.get 0
      local.get 4
      i32.store offset=12
    end)
  (func (;18;) (type 2) (param i32 i32) (result i32)
    block (result i32)  ;; label = @1
      i32.const 48
      i32.const -96
      local.get 1
      i32.lt_u
      br_if 0 (;@1;)
      drop
      local.get 1
      call 19
      local.tee 1
      i32.eqz
      if  ;; label = @2
        i32.const 48
        return
      end
      local.get 0
      local.get 1
      i32.store
      i32.const 0
    end)
  (func (;19;) (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    i32.const -64
    i32.const 32
    local.tee 1
    i32.sub
    local.get 0
    i32.le_u
    if  ;; label = @1
      i32.const 4400
      i32.const 48
      i32.store
      i32.const 0
      return
    end
    i32.const 16
    local.get 0
    i32.const 19
    i32.add
    i32.const -16
    i32.and
    local.get 0
    i32.const 11
    i32.lt_u
    select
    local.tee 3
    i32.const 12
    i32.or
    i32.const 32
    i32.add
    call 14
    local.tee 2
    i32.eqz
    if  ;; label = @1
      i32.const 0
      return
    end
    local.get 2
    i32.const -8
    i32.add
    local.set 0
    block  ;; label = @1
      local.get 2
      i32.const 31
      i32.and
      i32.eqz
      if  ;; label = @2
        local.get 0
        local.set 1
        br 1 (;@1;)
      end
      local.get 2
      i32.const -4
      i32.add
      local.tee 5
      i32.load
      local.tee 6
      i32.const -8
      i32.and
      local.get 2
      i32.const 31
      i32.add
      i32.const -32
      i32.and
      i32.const -8
      i32.add
      local.tee 2
      local.get 2
      i32.const 32
      i32.add
      local.get 2
      local.get 0
      i32.sub
      i32.const 15
      i32.gt_u
      select
      local.tee 1
      local.get 0
      i32.sub
      local.tee 2
      i32.sub
      local.set 4
      local.get 6
      i32.const 3
      i32.and
      i32.eqz
      if  ;; label = @2
        local.get 1
        local.get 4
        i32.store offset=4
        local.get 1
        local.get 0
        i32.load
        local.get 2
        i32.add
        i32.store
        br 1 (;@1;)
      end
      local.get 1
      local.get 4
      local.get 1
      i32.load offset=4
      i32.const 1
      i32.and
      i32.or
      i32.const 2
      i32.or
      i32.store offset=4
      local.get 1
      local.get 4
      i32.add
      local.tee 4
      local.get 4
      i32.load offset=4
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 5
      local.get 2
      local.get 5
      i32.load
      i32.const 1
      i32.and
      i32.or
      i32.const 2
      i32.or
      i32.store
      local.get 1
      local.get 1
      i32.load offset=4
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 0
      local.get 2
      call 17
    end
    block  ;; label = @1
      local.get 1
      i32.load offset=4
      local.tee 0
      i32.const 3
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const -8
      i32.and
      local.tee 2
      local.get 3
      i32.const 16
      i32.add
      i32.le_u
      br_if 0 (;@1;)
      local.get 1
      local.get 3
      local.get 0
      i32.const 1
      i32.and
      i32.or
      i32.const 2
      i32.or
      i32.store offset=4
      local.get 1
      local.get 3
      i32.add
      local.tee 0
      local.get 2
      local.get 3
      i32.sub
      local.tee 3
      i32.const 3
      i32.or
      i32.store offset=4
      local.get 1
      local.get 2
      i32.add
      local.tee 2
      local.get 2
      i32.load offset=4
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 0
      local.get 3
      call 17
    end
    local.get 1
    i32.const 8
    i32.add)
  (func (;20;) (type 1) (param i32) (result i32)
    (local i32 i64 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i64.const 0
    i64.store offset=8
    i32.const 0
    i64.const 1000
    local.get 1
    i32.const 8
    i32.add
    call 1
    drop
    local.get 0
    local.get 1
    i64.load offset=8
    local.tee 2
    i64.const 1000000000
    i64.div_u
    local.tee 3
    i64.store
    local.get 0
    local.get 2
    local.get 3
    i64.const 1000000000
    i64.mul
    i64.sub
    i32.wrap_i64
    i32.const 1000
    i32.div_u
    i64.extend_i32_u
    i64.store offset=8
    local.get 1
    i32.const 16
    i32.add
    global.set 0
    i32.const 0)
  (func (;21;) (type 6) (param i32)
    local.get 0
    call 0
    unreachable)
  (func (;22;) (type 8) (result i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 8
            i32.add
            local.get 1
            i32.const 12
            i32.add
            call 2
            i32.eqz
            if  ;; label = @5
              local.get 1
              i32.load offset=8
              local.tee 0
              i32.const 1
              i32.add
              local.tee 2
              local.get 0
              i32.lt_u
              br_if 1 (;@4;)
              local.get 1
              i32.load offset=12
              call 14
              local.tee 0
              i32.eqz
              br_if 2 (;@3;)
              local.get 2
              i32.const 4
              call 16
              local.tee 2
              i32.eqz
              br_if 3 (;@2;)
              local.get 2
              local.get 0
              call 3
              br_if 4 (;@1;)
              local.get 1
              i32.load offset=8
              local.get 2
              call 13
              local.get 1
              i32.const 16
              i32.add
              global.set 0
              return
            end
            i32.const 71
            call 21
            unreachable
          end
          i32.const 70
          call 21
          unreachable
        end
        i32.const 70
        call 21
        unreachable
      end
      local.get 0
      call 15
      i32.const 70
      call 21
      unreachable
    end
    local.get 0
    call 15
    local.get 2
    call 15
    i32.const 71
    call 21
    unreachable)
  (func (;23;) (type 1) (param i32) (result i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      memory.size
      i32.const 16
      i32.shl
      return
    end
    block  ;; label = @1
      local.get 0
      i32.const 65535
      i32.and
      br_if 0 (;@1;)
      local.get 0
      i32.const -1
      i32.le_s
      br_if 0 (;@1;)
      local.get 0
      i32.const 16
      i32.shr_u
      memory.grow
      local.tee 0
      i32.const -1
      i32.eq
      if  ;; label = @2
        i32.const 4400
        i32.const 48
        i32.store
        i32.const -1
        return
      end
      local.get 0
      i32.const 16
      i32.shl
      return
    end
    unreachable)
  (func (;24;) (type 4)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 96
    i32.store offset=12
    local.get 0
    i32.const 1074
    i32.store offset=8
    local.get 0
    i32.const 1036
    i32.store offset=4
    local.get 0
    i32.const 1024
    i32.store
    i32.const 3640
    i32.const 1197
    local.get 0
    call 41
    i32.const 0
    call 31
    drop
    unreachable)
  (func (;25;) (type 1) (param i32) (result i32)
    (local i32)
    local.get 0
    local.get 0
    i32.load offset=60
    local.tee 1
    i32.const -1
    i32.add
    local.get 1
    i32.or
    i32.store offset=60
    local.get 0
    i32.load
    local.tee 1
    i32.const 8
    i32.and
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.const 32
      i32.or
      i32.store
      i32.const -1
      return
    end
    local.get 0
    i64.const 0
    i64.store offset=4 align=4
    local.get 0
    local.get 0
    i32.load offset=40
    local.tee 1
    i32.store offset=24
    local.get 0
    local.get 1
    i32.store offset=20
    local.get 0
    local.get 1
    local.get 0
    i32.load offset=44
    i32.add
    i32.store offset=16
    i32.const 0)
  (func (;26;) (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 2
      i32.load offset=16
      local.tee 3
      if (result i32)  ;; label = @2
        local.get 3
      else
        local.get 2
        call 25
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=16
      end
      local.get 2
      i32.load offset=20
      local.tee 5
      i32.sub
      local.get 1
      i32.lt_u
      if  ;; label = @2
        local.get 2
        local.get 0
        local.get 1
        local.get 2
        i32.load offset=32
        call_indirect (type 0)
        drop
        return
      end
      block  ;; label = @2
        local.get 2
        i32.load offset=64
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        local.get 0
        local.set 3
        loop  ;; label = @3
          local.get 1
          local.get 4
          i32.eq
          br_if 1 (;@2;)
          local.get 4
          i32.const 1
          i32.add
          local.set 4
          local.get 1
          local.get 3
          i32.add
          local.get 3
          i32.const -1
          i32.add
          local.tee 7
          local.set 3
          i32.const -1
          i32.add
          i32.load8_u
          i32.const 10
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 2
        local.get 0
        local.get 1
        local.get 4
        i32.sub
        i32.const 1
        i32.add
        local.tee 0
        local.get 2
        i32.load offset=32
        call_indirect (type 0)
        local.get 0
        i32.lt_u
        br_if 1 (;@1;)
        local.get 1
        local.get 7
        i32.add
        i32.const 1
        i32.add
        local.set 0
        local.get 2
        i32.load offset=20
        local.set 5
        local.get 4
        i32.const -1
        i32.add
        local.set 1
      end
      local.get 5
      local.get 0
      local.get 1
      call 45
      local.get 2
      local.get 2
      i32.load offset=20
      local.get 1
      i32.add
      i32.store offset=20
    end)
  (func (;27;) (type 9) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 1
    local.get 2
    i32.mul
    local.set 4
    block  ;; label = @1
      local.get 3
      i32.load offset=16
      local.tee 2
      if (result i32)  ;; label = @2
        local.get 2
      else
        i32.const 0
        local.set 2
        local.get 3
        call 25
        br_if 1 (;@1;)
        local.get 3
        i32.load offset=16
      end
      local.get 3
      i32.load offset=20
      local.tee 6
      i32.sub
      local.get 4
      i32.lt_u
      if  ;; label = @2
        local.get 3
        local.get 0
        local.get 4
        local.get 3
        i32.load offset=32
        call_indirect (type 0)
        local.set 2
        br 1 (;@1;)
      end
      block (result i32)  ;; label = @2
        local.get 4
        local.get 3
        i32.load offset=64
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        drop
        local.get 0
        local.get 4
        i32.add
        local.set 7
        i32.const 0
        local.set 2
        loop  ;; label = @3
          local.get 4
          local.get 2
          local.get 4
          i32.add
          i32.eqz
          br_if 1 (;@2;)
          drop
          local.get 2
          local.get 7
          i32.add
          local.get 2
          i32.const -1
          i32.add
          local.tee 5
          local.set 2
          i32.const -1
          i32.add
          i32.load8_u
          i32.const 10
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 3
        local.get 0
        local.get 4
        local.get 5
        i32.add
        i32.const 1
        i32.add
        local.tee 8
        local.get 3
        i32.load offset=32
        call_indirect (type 0)
        local.tee 2
        local.get 8
        i32.lt_u
        br_if 1 (;@1;)
        local.get 5
        local.get 7
        i32.add
        i32.const 1
        i32.add
        local.set 0
        local.get 3
        i32.load offset=20
        local.set 6
        local.get 5
        i32.const -1
        i32.xor
      end
      local.set 2
      local.get 6
      local.get 0
      local.get 2
      call 45
      local.get 3
      local.get 3
      i32.load offset=20
      local.get 2
      i32.add
      i32.store offset=20
      local.get 2
      local.get 8
      i32.add
      local.set 2
    end
    local.get 2
    local.get 4
    i32.eq
    if  ;; label = @1
      return
    end
    local.get 2
    local.get 1
    i32.div_u
    drop)
  (func (;28;) (type 7) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.store offset=12
    i32.const 3760
    local.get 0
    local.get 1
    call 38
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;29;) (type 3) (param i32 i64 i32) (result i64)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    block (result i64)  ;; label = @1
      local.get 0
      local.get 1
      local.get 2
      i32.const 255
      i32.and
      local.get 3
      i32.const 8
      i32.add
      call 4
      local.tee 0
      if  ;; label = @2
        i32.const 4400
        i32.const 70
        local.get 0
        local.get 0
        i32.const 76
        i32.eq
        select
        i32.store
        i64.const -1
        br 1 (;@1;)
      end
      local.get 3
      i64.load offset=8
    end
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func (;30;) (type 3) (param i32 i64 i32) (result i64)
    local.get 0
    i32.load offset=56
    local.get 1
    local.get 2
    call 29)
  (func (;31;) (type 1) (param i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 3872
      i32.load
      if  ;; label = @2
        i32.const 3872
        i32.load
        call 31
        local.set 1
      end
      i32.const 3752
      i32.load
      if  ;; label = @2
        i32.const 3752
        i32.load
        call 31
        local.get 1
        i32.or
        local.set 1
      end
      i32.const 4416
      i32.load
      local.tee 0
      if  ;; label = @2
        loop  ;; label = @3
          local.get 0
          i32.load offset=20
          local.get 0
          i32.load offset=24
          i32.ne
          if  ;; label = @4
            local.get 0
            i32.const 0
            i32.const 0
            local.get 0
            i32.load offset=32
            call_indirect (type 0)
            drop
            block (result i32)  ;; label = @5
              i32.const -1
              local.get 0
              i32.load offset=20
              i32.eqz
              br_if 0 (;@5;)
              drop
              local.get 0
              i32.load offset=4
              local.tee 2
              local.get 0
              i32.load offset=8
              local.tee 3
              i32.ne
              if  ;; label = @6
                local.get 0
                local.get 2
                local.get 3
                i32.sub
                i64.extend_i32_s
                i32.const 1
                local.get 0
                i32.load offset=36
                call_indirect (type 3)
                drop
              end
              local.get 0
              i32.const 0
              i32.store offset=24
              local.get 0
              i64.const 0
              i64.store offset=16
              local.get 0
              i64.const 0
              i64.store offset=4 align=4
              i32.const 0
            end
            local.get 1
            i32.or
            local.set 1
          end
          local.get 0
          i32.load offset=52
          local.tee 0
          br_if 0 (;@3;)
        end
      end
      local.get 1
      return
    end
    block  ;; label = @1
      local.get 0
      i32.load offset=20
      local.get 0
      i32.load offset=24
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.const 0
      local.get 0
      i32.load offset=32
      call_indirect (type 0)
      drop
      local.get 0
      i32.load offset=20
      br_if 0 (;@1;)
      i32.const -1
      return
    end
    local.get 0
    i32.load offset=4
    local.tee 1
    local.get 0
    i32.load offset=8
    local.tee 2
    i32.ne
    if  ;; label = @1
      local.get 0
      local.get 1
      local.get 2
      i32.sub
      i64.extend_i32_s
      i32.const 1
      local.get 0
      i32.load offset=36
      call_indirect (type 3)
      drop
    end
    local.get 0
    i32.const 0
    i32.store offset=24
    local.get 0
    i64.const 0
    i64.store offset=16
    local.get 0
    i64.const 0
    i64.store offset=4 align=4
    i32.const 0)
  (func (;32;) (type 4)
    (local i32 i32 i32)
    i32.const 4416
    i32.load
    local.tee 0
    if  ;; label = @1
      loop  ;; label = @2
        local.get 0
        i32.load offset=20
        local.get 0
        i32.load offset=24
        i32.ne
        if  ;; label = @3
          local.get 0
          i32.const 0
          i32.const 0
          local.get 0
          i32.load offset=32
          call_indirect (type 0)
          drop
        end
        local.get 0
        i32.load offset=4
        local.tee 1
        local.get 0
        i32.load offset=8
        local.tee 2
        i32.ne
        if  ;; label = @3
          local.get 0
          local.get 1
          local.get 2
          i32.sub
          i64.extend_i32_s
          i32.const 1
          local.get 0
          i32.load offset=36
          call_indirect (type 3)
          drop
        end
        local.get 0
        i32.load offset=52
        local.tee 0
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      i32.const 4412
      i32.load
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=20
      local.get 0
      i32.load offset=24
      i32.ne
      if  ;; label = @2
        local.get 0
        i32.const 0
        i32.const 0
        local.get 0
        i32.load offset=32
        call_indirect (type 0)
        drop
      end
      local.get 0
      i32.load offset=4
      local.tee 1
      local.get 0
      i32.load offset=8
      local.tee 2
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 2
      i32.sub
      i64.extend_i32_s
      i32.const 1
      local.get 0
      i32.load offset=36
      call_indirect (type 3)
      drop
    end
    block  ;; label = @1
      i32.const 3872
      i32.load
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=20
      local.get 0
      i32.load offset=24
      i32.ne
      if  ;; label = @2
        local.get 0
        i32.const 0
        i32.const 0
        local.get 0
        i32.load offset=32
        call_indirect (type 0)
        drop
      end
      local.get 0
      i32.load offset=4
      local.tee 1
      local.get 0
      i32.load offset=8
      local.tee 2
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 2
      i32.sub
      i64.extend_i32_s
      i32.const 1
      local.get 0
      i32.load offset=36
      call_indirect (type 3)
      drop
    end
    block  ;; label = @1
      i32.const 3752
      i32.load
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=20
      local.get 0
      i32.load offset=24
      i32.ne
      if  ;; label = @2
        local.get 0
        i32.const 0
        i32.const 0
        local.get 0
        i32.load offset=32
        call_indirect (type 0)
        drop
      end
      local.get 0
      i32.load offset=4
      local.tee 1
      local.get 0
      i32.load offset=8
      local.tee 2
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 2
      i32.sub
      i64.extend_i32_s
      i32.const 1
      local.get 0
      i32.load offset=36
      call_indirect (type 3)
      drop
    end)
  (func (;33;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    i32.const -1
    local.set 4
    block  ;; label = @1
      local.get 2
      i32.const -1
      i32.le_s
      if  ;; label = @2
        i32.const 4400
        i32.const 28
        i32.store
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      local.get 2
      local.get 3
      i32.const 12
      i32.add
      call 5
      local.tee 0
      if  ;; label = @2
        i32.const 4400
        local.get 0
        i32.store
        br 1 (;@1;)
      end
      local.get 3
      i32.load offset=12
      local.set 4
    end
    local.get 3
    i32.const 16
    i32.add
    global.set 0
    local.get 4)
  (func (;34;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 2
    i32.store offset=12
    local.get 3
    local.get 1
    i32.store offset=8
    local.get 3
    local.get 0
    i32.load offset=24
    local.tee 1
    i32.store
    local.get 3
    local.get 0
    i32.load offset=20
    local.get 1
    i32.sub
    local.tee 1
    i32.store offset=4
    i32.const 2
    local.set 6
    block (result i32)  ;; label = @1
      local.get 1
      local.get 2
      i32.add
      local.tee 9
      local.get 0
      i32.load offset=56
      local.get 3
      i32.const 2
      call 33
      local.tee 4
      i32.ne
      if  ;; label = @2
        local.get 3
        local.set 1
        loop  ;; label = @3
          local.get 4
          i32.const -1
          i32.le_s
          if  ;; label = @4
            local.get 0
            i32.const 0
            i32.store offset=24
            local.get 0
            i64.const 0
            i64.store offset=16
            local.get 0
            local.get 0
            i32.load
            i32.const 32
            i32.or
            i32.store
            i32.const 0
            local.get 6
            i32.const 2
            i32.eq
            br_if 3 (;@1;)
            drop
            local.get 2
            local.get 1
            i32.load offset=4
            i32.sub
            br 3 (;@1;)
          end
          local.get 1
          local.get 4
          local.get 1
          i32.load offset=4
          local.tee 7
          i32.gt_u
          local.tee 5
          i32.const 3
          i32.shl
          i32.add
          local.tee 8
          local.get 4
          local.get 7
          i32.const 0
          local.get 5
          select
          i32.sub
          local.tee 7
          local.get 8
          i32.load
          i32.add
          i32.store
          local.get 1
          i32.const 12
          i32.const 4
          local.get 5
          select
          i32.add
          local.tee 8
          local.get 8
          i32.load
          local.get 7
          i32.sub
          i32.store
          local.get 9
          local.get 4
          i32.sub
          local.tee 9
          local.get 0
          i32.load offset=56
          local.get 1
          i32.const 8
          i32.add
          local.get 1
          local.get 5
          select
          local.tee 1
          local.get 6
          local.get 5
          i32.sub
          local.tee 6
          call 33
          local.tee 4
          i32.ne
          br_if 0 (;@3;)
        end
      end
      local.get 0
      local.get 0
      i32.load offset=40
      local.tee 1
      i32.store offset=24
      local.get 0
      local.get 1
      i32.store offset=20
      local.get 0
      local.get 1
      local.get 0
      i32.load offset=44
      i32.add
      i32.store offset=16
      local.get 2
    end
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func (;35;) (type 6) (param i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i32.const 10
    i32.store8 offset=15
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=16
        local.tee 2
        if (result i32)  ;; label = @3
          local.get 2
        else
          local.get 0
          call 25
          br_if 2 (;@1;)
          local.get 0
          i32.load offset=16
        end
        local.get 0
        i32.load offset=20
        local.tee 2
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=64
        i32.const 10
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        local.get 2
        i32.const 1
        i32.add
        i32.store offset=20
        local.get 2
        i32.const 10
        i32.store8
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      i32.const 15
      i32.add
      i32.const 1
      local.get 0
      i32.load offset=32
      call_indirect (type 0)
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      i32.load8_u offset=15
      drop
    end
    local.get 1
    i32.const 16
    i32.add
    global.set 0)
  (func (;36;) (type 6) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load offset=64
      i32.const 10
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=20
      local.tee 1
      local.get 0
      i32.load offset=16
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.const 1
      i32.add
      i32.store offset=20
      local.get 1
      i32.const 10
      i32.store8
      return
    end
    local.get 0
    call 35)
  (func (;37;) (type 1) (param i32) (result i32)
    (local i32)
    i32.const 5488
    i32.load
    local.tee 1
    if (result i32)  ;; label = @1
      local.get 1
    else
      i32.const 5488
      i32.const 5464
      i32.store
      i32.const 5464
    end
    i32.load offset=20
    drop
    i32.const 0
    local.get 0
    local.get 0
    i32.const 76
    i32.gt_u
    select
    i32.const 1
    i32.shl
    i32.const 2800
    i32.add
    i32.load16_u
    i32.const 1236
    i32.add)
  (func (;38;) (type 5) (param i32 i32 i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 208
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 2
    i32.store offset=204
    local.get 3
    i32.const 192
    i32.add
    i64.const 0
    i64.store
    local.get 3
    i32.const 184
    i32.add
    i64.const 0
    i64.store
    local.get 3
    i32.const 176
    i32.add
    i64.const 0
    i64.store
    local.get 3
    i64.const 0
    i64.store offset=168
    local.get 3
    i64.const 0
    i64.store offset=160
    local.get 3
    local.get 2
    i32.store offset=200
    i32.const 0
    local.get 1
    local.get 3
    i32.const 200
    i32.add
    local.get 3
    i32.const 80
    i32.add
    local.get 3
    i32.const 160
    i32.add
    call 39
    i32.const 0
    i32.ge_s
    if  ;; label = @1
      local.get 0
      i32.load
      local.set 4
      local.get 0
      i32.load offset=60
      i32.const 0
      i32.le_s
      if  ;; label = @2
        local.get 0
        local.get 4
        i32.const -33
        i32.and
        i32.store
      end
      block (result i32)  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load offset=44
            i32.eqz
            if  ;; label = @5
              local.get 0
              i32.const 80
              i32.store offset=44
              local.get 0
              i32.const 0
              i32.store offset=24
              local.get 0
              i64.const 0
              i64.store offset=16
              local.get 0
              i32.load offset=40
              local.set 5
              local.get 0
              local.get 3
              i32.store offset=40
              br 1 (;@4;)
            end
            local.get 0
            i32.load offset=16
            br_if 1 (;@3;)
          end
          i32.const -1
          local.get 0
          call 25
          br_if 1 (;@2;)
          drop
        end
        local.get 0
        local.get 1
        local.get 3
        i32.const 200
        i32.add
        local.get 3
        i32.const 80
        i32.add
        local.get 3
        i32.const 160
        i32.add
        call 39
      end
      local.set 2
      local.get 5
      if (result i32)  ;; label = @2
        local.get 0
        i32.const 0
        i32.const 0
        local.get 0
        i32.load offset=32
        call_indirect (type 0)
        drop
        local.get 0
        i32.const 0
        i32.store offset=44
        local.get 0
        local.get 5
        i32.store offset=40
        local.get 0
        i32.const 0
        i32.store offset=24
        local.get 0
        i32.const 0
        i32.store offset=16
        local.get 0
        i32.load offset=20
        local.set 1
        local.get 0
        i32.const 0
        i32.store offset=20
        i32.const 0
      else
        local.get 2
      end
      drop
      local.get 0
      local.get 0
      i32.load
      local.get 4
      i32.const 32
      i32.and
      i32.or
      i32.store
    end
    local.get 3
    i32.const 208
    i32.add
    global.set 0)
  (func (;39;) (type 11) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 f64 f64)
    global.get 0
    i32.const 880
    i32.sub
    local.tee 9
    global.set 0
    local.get 9
    i32.const 55
    i32.add
    local.set 32
    i32.const -338
    local.get 9
    i32.sub
    local.set 33
    local.get 9
    i32.const 336
    i32.add
    i32.const 9
    i32.or
    local.set 30
    local.get 9
    i32.const 660
    i32.add
    local.set 34
    local.get 9
    i32.const 368
    i32.add
    i32.const 4
    i32.or
    local.set 35
    local.get 9
    i32.const 656
    i32.add
    local.set 36
    local.get 9
    i32.const 336
    i32.add
    local.set 26
    i32.const 0
    local.get 9
    i32.const 336
    i32.add
    i32.sub
    local.set 31
    local.get 9
    i32.const 56
    i32.add
    local.set 25
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          block  ;; label = @4
            local.get 1
            local.set 6
            local.get 5
            i32.const 2147483647
            local.get 20
            i32.sub
            i32.gt_s
            br_if 0 (;@4;)
            local.get 5
            local.get 20
            i32.add
            local.set 20
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 6
                        i32.load8_u
                        local.tee 5
                        if  ;; label = @11
                          loop  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 5
                                i32.const 255
                                i32.and
                                local.tee 5
                                if  ;; label = @15
                                  local.get 5
                                  i32.const 37
                                  i32.ne
                                  br_if 2 (;@13;)
                                  local.get 1
                                  local.tee 7
                                  local.set 5
                                  loop  ;; label = @16
                                    local.get 5
                                    i32.const 1
                                    i32.add
                                    i32.load8_u
                                    i32.const 37
                                    i32.ne
                                    if  ;; label = @17
                                      local.get 5
                                      local.set 1
                                      br 3 (;@14;)
                                    end
                                    local.get 7
                                    i32.const 1
                                    i32.add
                                    local.set 7
                                    local.get 5
                                    i32.load8_u offset=2
                                    local.get 5
                                    i32.const 2
                                    i32.add
                                    local.tee 1
                                    local.set 5
                                    i32.const 37
                                    i32.eq
                                    br_if 0 (;@16;)
                                  end
                                  br 1 (;@14;)
                                end
                                local.get 1
                                local.set 7
                              end
                              local.get 7
                              local.get 6
                              i32.sub
                              local.tee 5
                              i32.const 2147483647
                              local.get 20
                              i32.sub
                              local.tee 19
                              i32.gt_s
                              br_if 9 (;@4;)
                              block  ;; label = @14
                                local.get 0
                                i32.eqz
                                br_if 0 (;@14;)
                                local.get 0
                                i32.load8_u
                                i32.const 32
                                i32.and
                                br_if 0 (;@14;)
                                local.get 6
                                local.get 5
                                local.get 0
                                call 26
                              end
                              local.get 5
                              br_if 10 (;@3;)
                              local.get 1
                              i32.const 1
                              i32.add
                              local.set 5
                              block (result i32)  ;; label = @14
                                i32.const -1
                                local.get 1
                                i32.load8_s offset=1
                                local.tee 10
                                i32.const -48
                                i32.add
                                local.tee 7
                                i32.const 9
                                i32.gt_u
                                br_if 0 (;@14;)
                                drop
                                local.get 1
                                i32.const 3
                                i32.add
                                local.get 5
                                local.get 1
                                i32.load8_u offset=2
                                i32.const 36
                                i32.eq
                                local.tee 8
                                select
                                local.set 5
                                i32.const 1
                                local.get 27
                                local.get 8
                                select
                                local.set 27
                                local.get 1
                                i32.const 3
                                i32.const 1
                                local.get 8
                                select
                                i32.add
                                i32.load8_s
                                local.set 10
                                local.get 7
                                i32.const -1
                                local.get 8
                                select
                              end
                              local.set 11
                              i32.const 0
                              local.set 7
                              block  ;; label = @14
                                local.get 10
                                i32.const -32
                                i32.add
                                local.tee 1
                                i32.const 31
                                i32.gt_u
                                if  ;; label = @15
                                  local.get 5
                                  local.set 1
                                  br 1 (;@14;)
                                end
                                i32.const 1
                                local.get 1
                                i32.shl
                                local.tee 12
                                i32.const 75913
                                i32.and
                                i32.eqz
                                if  ;; label = @15
                                  local.get 5
                                  local.set 1
                                  br 1 (;@14;)
                                end
                                loop  ;; label = @15
                                  local.get 5
                                  i32.const 1
                                  i32.add
                                  local.set 1
                                  local.get 7
                                  local.get 12
                                  i32.or
                                  local.set 7
                                  local.get 5
                                  i32.load8_s offset=1
                                  local.tee 10
                                  i32.const -32
                                  i32.add
                                  local.tee 8
                                  i32.const 31
                                  i32.gt_u
                                  br_if 1 (;@14;)
                                  local.get 1
                                  local.set 5
                                  i32.const 1
                                  local.get 8
                                  i32.shl
                                  local.tee 12
                                  i32.const 75913
                                  i32.and
                                  br_if 0 (;@15;)
                                end
                              end
                              local.get 10
                              i32.const 42
                              i32.eq
                              if  ;; label = @14
                                block (result i32)  ;; label = @15
                                  block  ;; label = @16
                                    local.get 1
                                    i32.load8_s offset=1
                                    i32.const -48
                                    i32.add
                                    local.tee 5
                                    i32.const 9
                                    i32.gt_u
                                    br_if 0 (;@16;)
                                    local.get 1
                                    i32.load8_u offset=2
                                    i32.const 36
                                    i32.ne
                                    br_if 0 (;@16;)
                                    local.get 4
                                    local.get 5
                                    i32.const 2
                                    i32.shl
                                    i32.add
                                    i32.const 10
                                    i32.store
                                    local.get 1
                                    i32.const 3
                                    i32.add
                                    local.set 12
                                    i32.const 1
                                    local.set 27
                                    local.get 1
                                    i32.load8_s offset=1
                                    i32.const 3
                                    i32.shl
                                    local.get 3
                                    i32.add
                                    i32.const -384
                                    i32.add
                                    i32.load
                                    br 1 (;@15;)
                                  end
                                  local.get 27
                                  br_if 6 (;@9;)
                                  local.get 1
                                  i32.const 1
                                  i32.add
                                  local.set 12
                                  local.get 0
                                  i32.eqz
                                  if  ;; label = @16
                                    i32.const 0
                                    local.set 27
                                    i32.const 0
                                    local.set 13
                                    br 6 (;@10;)
                                  end
                                  local.get 2
                                  local.get 2
                                  i32.load
                                  local.tee 1
                                  i32.const 4
                                  i32.add
                                  i32.store
                                  i32.const 0
                                  local.set 27
                                  local.get 1
                                  i32.load
                                end
                                local.tee 13
                                i32.const -1
                                i32.gt_s
                                br_if 4 (;@10;)
                                i32.const 0
                                local.get 13
                                i32.sub
                                local.set 13
                                local.get 7
                                i32.const 8192
                                i32.or
                                local.set 7
                                br 4 (;@10;)
                              end
                              i32.const 0
                              local.set 13
                              local.get 10
                              i32.const -48
                              i32.add
                              local.tee 5
                              i32.const 9
                              i32.gt_u
                              if  ;; label = @14
                                local.get 1
                                local.set 12
                                br 4 (;@10;)
                              end
                              loop  ;; label = @14
                                local.get 13
                                i32.const 214748364
                                i32.le_u
                                if  ;; label = @15
                                  i32.const -1
                                  local.get 13
                                  i32.const 10
                                  i32.mul
                                  local.tee 8
                                  local.get 5
                                  i32.add
                                  local.get 5
                                  i32.const 2147483647
                                  local.get 8
                                  i32.sub
                                  i32.gt_s
                                  select
                                  local.set 13
                                  local.get 1
                                  i32.load8_s offset=1
                                  local.get 1
                                  i32.const 1
                                  i32.add
                                  local.tee 12
                                  local.set 1
                                  i32.const -48
                                  i32.add
                                  local.tee 5
                                  i32.const 10
                                  i32.lt_u
                                  br_if 1 (;@14;)
                                  local.get 13
                                  i32.const 0
                                  i32.lt_s
                                  br_if 11 (;@4;)
                                  br 5 (;@10;)
                                end
                                local.get 1
                                i32.load8_s offset=1
                                i32.const -1
                                local.set 13
                                local.get 1
                                i32.const 1
                                i32.add
                                local.set 1
                                i32.const -48
                                i32.add
                                local.tee 5
                                i32.const 10
                                i32.lt_u
                                br_if 0 (;@14;)
                              end
                              br 9 (;@4;)
                            end
                            local.get 1
                            i32.load8_u offset=1
                            local.set 5
                            local.get 1
                            i32.const 1
                            i32.add
                            local.set 1
                            br 0 (;@12;)
                          end
                          unreachable
                        end
                        local.get 0
                        br_if 9 (;@1;)
                        local.get 27
                        i32.eqz
                        if  ;; label = @11
                          i32.const 0
                          local.set 20
                          br 10 (;@1;)
                        end
                        block  ;; label = @11
                          local.get 4
                          i32.load offset=4
                          local.tee 0
                          i32.eqz
                          if  ;; label = @12
                            i32.const 1
                            local.set 1
                            br 1 (;@11;)
                          end
                          local.get 3
                          i32.const 8
                          i32.add
                          local.get 0
                          local.get 2
                          call 40
                          local.get 4
                          i32.load offset=8
                          local.tee 0
                          i32.eqz
                          if  ;; label = @12
                            i32.const 2
                            local.set 1
                            br 1 (;@11;)
                          end
                          local.get 3
                          i32.const 16
                          i32.add
                          local.get 0
                          local.get 2
                          call 40
                          local.get 4
                          i32.load offset=12
                          local.tee 0
                          i32.eqz
                          if  ;; label = @12
                            i32.const 3
                            local.set 1
                            br 1 (;@11;)
                          end
                          local.get 3
                          i32.const 24
                          i32.add
                          local.get 0
                          local.get 2
                          call 40
                          local.get 4
                          i32.load offset=16
                          local.tee 0
                          i32.eqz
                          if  ;; label = @12
                            i32.const 4
                            local.set 1
                            br 1 (;@11;)
                          end
                          local.get 3
                          i32.const 32
                          i32.add
                          local.get 0
                          local.get 2
                          call 40
                          local.get 4
                          i32.load offset=20
                          local.tee 0
                          i32.eqz
                          if  ;; label = @12
                            i32.const 5
                            local.set 1
                            br 1 (;@11;)
                          end
                          local.get 3
                          i32.const 40
                          i32.add
                          local.get 0
                          local.get 2
                          call 40
                          local.get 4
                          i32.load offset=24
                          local.tee 0
                          i32.eqz
                          if  ;; label = @12
                            i32.const 6
                            local.set 1
                            br 1 (;@11;)
                          end
                          local.get 3
                          i32.const 48
                          i32.add
                          local.get 0
                          local.get 2
                          call 40
                          local.get 4
                          i32.load offset=28
                          local.tee 0
                          i32.eqz
                          if  ;; label = @12
                            i32.const 7
                            local.set 1
                            br 1 (;@11;)
                          end
                          local.get 3
                          i32.const 56
                          i32.add
                          local.get 0
                          local.get 2
                          call 40
                          local.get 4
                          i32.load offset=32
                          local.tee 0
                          i32.eqz
                          if  ;; label = @12
                            i32.const 8
                            local.set 1
                            br 1 (;@11;)
                          end
                          local.get 3
                          i32.const -64
                          i32.sub
                          local.get 0
                          local.get 2
                          call 40
                          local.get 4
                          i32.load offset=36
                          local.tee 0
                          i32.eqz
                          if  ;; label = @12
                            i32.const 9
                            local.set 1
                            br 1 (;@11;)
                          end
                          local.get 3
                          i32.const 72
                          i32.add
                          local.get 0
                          local.get 2
                          call 40
                          i32.const 1
                          local.set 20
                          br 10 (;@1;)
                        end
                        local.get 1
                        i32.const 2
                        i32.shl
                        local.set 1
                        loop  ;; label = @11
                          local.get 1
                          local.get 4
                          i32.add
                          i32.load
                          br_if 2 (;@9;)
                          local.get 1
                          i32.const 4
                          i32.add
                          local.tee 1
                          i32.const 40
                          i32.ne
                          br_if 0 (;@11;)
                        end
                        i32.const 1
                        local.set 20
                        br 9 (;@1;)
                      end
                      i32.const 0
                      local.set 5
                      i32.const -1
                      local.set 10
                      block  ;; label = @10
                        local.get 12
                        i32.load8_u
                        i32.const 46
                        i32.ne
                        if  ;; label = @11
                          local.get 12
                          local.set 1
                          i32.const 0
                          local.set 21
                          br 1 (;@10;)
                        end
                        local.get 12
                        i32.load8_s offset=1
                        local.tee 8
                        i32.const 42
                        i32.eq
                        if  ;; label = @11
                          block (result i32)  ;; label = @12
                            block  ;; label = @13
                              local.get 12
                              i32.load8_s offset=2
                              i32.const -48
                              i32.add
                              local.tee 1
                              i32.const 9
                              i32.gt_u
                              br_if 0 (;@13;)
                              local.get 12
                              i32.load8_u offset=3
                              i32.const 36
                              i32.ne
                              br_if 0 (;@13;)
                              local.get 4
                              local.get 1
                              i32.const 2
                              i32.shl
                              i32.add
                              i32.const 10
                              i32.store
                              local.get 12
                              i32.const 4
                              i32.add
                              local.set 1
                              local.get 12
                              i32.load8_s offset=2
                              i32.const 3
                              i32.shl
                              local.get 3
                              i32.add
                              i32.const -384
                              i32.add
                              i32.load
                              br 1 (;@12;)
                            end
                            local.get 27
                            br_if 3 (;@9;)
                            local.get 12
                            i32.const 2
                            i32.add
                            local.set 1
                            i32.const 0
                            local.get 0
                            i32.eqz
                            br_if 0 (;@12;)
                            drop
                            local.get 2
                            local.get 2
                            i32.load
                            local.tee 8
                            i32.const 4
                            i32.add
                            i32.store
                            local.get 8
                            i32.load
                          end
                          local.tee 10
                          i32.const -1
                          i32.xor
                          i32.const 31
                          i32.shr_u
                          local.set 21
                          br 1 (;@10;)
                        end
                        local.get 12
                        i32.const 1
                        i32.add
                        local.set 1
                        local.get 8
                        i32.const -48
                        i32.add
                        local.tee 14
                        i32.const 9
                        i32.gt_u
                        if  ;; label = @11
                          i32.const 1
                          local.set 21
                          i32.const 0
                          local.set 10
                          br 1 (;@10;)
                        end
                        i32.const 0
                        local.set 15
                        local.get 1
                        local.set 12
                        loop  ;; label = @11
                          i32.const -1
                          local.set 10
                          local.get 15
                          i32.const 214748364
                          i32.le_u
                          if  ;; label = @12
                            i32.const -1
                            local.get 15
                            i32.const 10
                            i32.mul
                            local.tee 1
                            local.get 14
                            i32.add
                            local.get 14
                            i32.const 2147483647
                            local.get 1
                            i32.sub
                            i32.gt_s
                            select
                            local.set 10
                          end
                          i32.const 1
                          local.set 21
                          local.get 12
                          i32.load8_s offset=1
                          local.get 12
                          i32.const 1
                          i32.add
                          local.tee 1
                          local.set 12
                          local.get 10
                          local.set 15
                          i32.const -48
                          i32.add
                          local.tee 14
                          i32.const 10
                          i32.lt_u
                          br_if 0 (;@11;)
                        end
                      end
                      loop  ;; label = @10
                        local.get 5
                        local.set 8
                        local.get 1
                        i32.load8_s
                        i32.const -65
                        i32.add
                        local.tee 5
                        i32.const 57
                        i32.gt_u
                        br_if 1 (;@9;)
                        local.get 1
                        i32.const 1
                        i32.add
                        local.set 1
                        local.get 8
                        i32.const 58
                        i32.mul
                        local.get 5
                        i32.add
                        i32.const 2976
                        i32.add
                        i32.load8_u
                        local.tee 5
                        i32.const -1
                        i32.add
                        i32.const 8
                        i32.lt_u
                        br_if 0 (;@10;)
                      end
                      local.get 5
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const 27
                      i32.ne
                      br_if 1 (;@8;)
                      local.get 11
                      i32.const -1
                      i32.le_s
                      br_if 2 (;@7;)
                    end
                    i32.const 4400
                    i32.const 28
                    i32.store
                    br 6 (;@2;)
                  end
                  local.get 11
                  i32.const 0
                  i32.lt_s
                  br_if 1 (;@6;)
                  local.get 4
                  local.get 11
                  i32.const 2
                  i32.shl
                  i32.add
                  local.get 5
                  i32.store
                  local.get 9
                  local.get 3
                  local.get 11
                  i32.const 3
                  i32.shl
                  i32.add
                  i64.load
                  i64.store offset=56
                end
                i32.const 0
                local.set 5
                local.get 0
                i32.eqz
                br_if 3 (;@3;)
                br 1 (;@5;)
              end
              local.get 0
              i32.eqz
              if  ;; label = @6
                i32.const 0
                local.set 20
                br 5 (;@1;)
              end
              local.get 9
              i32.const 56
              i32.add
              local.get 5
              local.get 2
              call 40
            end
            local.get 7
            i32.const -65537
            i32.and
            local.tee 11
            local.get 7
            local.get 7
            i32.const 8192
            i32.and
            select
            local.set 16
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block (result i32)  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block (result i32)  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block (result i32)  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          local.get 1
                                                          i32.const -1
                                                          i32.add
                                                          i32.load8_s
                                                          local.tee 5
                                                          i32.const -33
                                                          i32.and
                                                          local.get 5
                                                          local.get 5
                                                          i32.const 15
                                                          i32.and
                                                          i32.const 3
                                                          i32.eq
                                                          select
                                                          local.get 5
                                                          local.get 8
                                                          select
                                                          local.tee 24
                                                          i32.const -65
                                                          i32.add
                                                          br_table 16 (;@11;) 17 (;@10;) 13 (;@14;) 17 (;@10;) 16 (;@11;) 16 (;@11;) 16 (;@11;) 17 (;@10;) 17 (;@10;) 17 (;@10;) 17 (;@10;) 17 (;@10;) 17 (;@10;) 17 (;@10;) 17 (;@10;) 17 (;@10;) 17 (;@10;) 17 (;@10;) 12 (;@15;) 17 (;@10;) 17 (;@10;) 17 (;@10;) 17 (;@10;) 3 (;@24;) 17 (;@10;) 17 (;@10;) 17 (;@10;) 17 (;@10;) 17 (;@10;) 17 (;@10;) 17 (;@10;) 17 (;@10;) 16 (;@11;) 17 (;@10;) 8 (;@19;) 5 (;@22;) 16 (;@11;) 16 (;@11;) 16 (;@11;) 17 (;@10;) 5 (;@22;) 17 (;@10;) 17 (;@10;) 17 (;@10;) 9 (;@18;) 1 (;@26;) 4 (;@23;) 2 (;@25;) 17 (;@10;) 17 (;@10;) 10 (;@17;) 17 (;@10;) 0 (;@27;) 17 (;@10;) 17 (;@10;) 3 (;@24;) 17 (;@10;)
                                                        end
                                                        i32.const 0
                                                        local.set 14
                                                        local.get 9
                                                        i64.load offset=56
                                                        local.set 37
                                                        i32.const 2954
                                                        br 5 (;@21;)
                                                      end
                                                      i32.const 0
                                                      local.set 5
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                block  ;; label = @31
                                                                  block  ;; label = @32
                                                                    local.get 8
                                                                    i32.const 255
                                                                    i32.and
                                                                    br_table 0 (;@32;) 1 (;@31;) 2 (;@30;) 3 (;@29;) 4 (;@28;) 29 (;@3;) 5 (;@27;) 6 (;@26;) 29 (;@3;)
                                                                  end
                                                                  local.get 9
                                                                  i32.load offset=56
                                                                  local.get 20
                                                                  i32.store
                                                                  br 28 (;@3;)
                                                                end
                                                                local.get 9
                                                                i32.load offset=56
                                                                local.get 20
                                                                i32.store
                                                                br 27 (;@3;)
                                                              end
                                                              local.get 9
                                                              i32.load offset=56
                                                              local.get 20
                                                              i64.extend_i32_s
                                                              i64.store
                                                              br 26 (;@3;)
                                                            end
                                                            local.get 9
                                                            i32.load offset=56
                                                            local.get 20
                                                            i32.store16
                                                            br 25 (;@3;)
                                                          end
                                                          local.get 9
                                                          i32.load offset=56
                                                          local.get 20
                                                          i32.store8
                                                          br 24 (;@3;)
                                                        end
                                                        local.get 9
                                                        i32.load offset=56
                                                        local.get 20
                                                        i32.store
                                                        br 23 (;@3;)
                                                      end
                                                      local.get 9
                                                      i32.load offset=56
                                                      local.get 20
                                                      i64.extend_i32_s
                                                      i64.store
                                                      br 22 (;@3;)
                                                    end
                                                    local.get 10
                                                    i32.const 8
                                                    local.get 10
                                                    i32.const 8
                                                    i32.gt_u
                                                    select
                                                    local.set 10
                                                    local.get 16
                                                    i32.const 8
                                                    i32.or
                                                    local.set 16
                                                    i32.const 120
                                                    local.set 24
                                                  end
                                                  i32.const 0
                                                  local.set 14
                                                  i32.const 2954
                                                  local.set 17
                                                  local.get 9
                                                  i64.load offset=56
                                                  local.tee 37
                                                  i64.eqz
                                                  if  ;; label = @24
                                                    local.get 25
                                                    local.set 6
                                                    br 4 (;@20;)
                                                  end
                                                  local.get 24
                                                  i32.const 32
                                                  i32.and
                                                  local.set 5
                                                  local.get 25
                                                  local.set 6
                                                  loop  ;; label = @24
                                                    local.get 6
                                                    i32.const -1
                                                    i32.add
                                                    local.tee 6
                                                    local.get 37
                                                    i32.wrap_i64
                                                    i32.const 15
                                                    i32.and
                                                    i32.const 3584
                                                    i32.add
                                                    i32.load8_u
                                                    local.get 5
                                                    i32.or
                                                    i32.store8
                                                    local.get 37
                                                    i64.const 4
                                                    i64.shr_u
                                                    local.tee 37
                                                    i64.const 0
                                                    i64.ne
                                                    br_if 0 (;@24;)
                                                  end
                                                  local.get 16
                                                  i32.const 8
                                                  i32.and
                                                  i32.eqz
                                                  br_if 3 (;@20;)
                                                  local.get 9
                                                  i64.load offset=56
                                                  i64.eqz
                                                  br_if 3 (;@20;)
                                                  local.get 24
                                                  i32.const 4
                                                  i32.shr_s
                                                  i32.const 2954
                                                  i32.add
                                                  local.set 17
                                                  i32.const 2
                                                  local.set 14
                                                  br 3 (;@20;)
                                                end
                                                local.get 25
                                                local.set 6
                                                local.get 9
                                                i64.load offset=56
                                                local.tee 37
                                                i64.eqz
                                                i32.eqz
                                                if  ;; label = @23
                                                  loop  ;; label = @24
                                                    local.get 6
                                                    i32.const -1
                                                    i32.add
                                                    local.tee 6
                                                    local.get 37
                                                    i32.wrap_i64
                                                    i32.const 7
                                                    i32.and
                                                    i32.const 48
                                                    i32.or
                                                    i32.store8
                                                    local.get 37
                                                    i64.const 3
                                                    i64.shr_u
                                                    local.tee 37
                                                    i64.const 0
                                                    i64.ne
                                                    br_if 0 (;@24;)
                                                  end
                                                end
                                                i32.const 0
                                                local.set 14
                                                i32.const 2954
                                                local.set 17
                                                local.get 16
                                                i32.const 8
                                                i32.and
                                                i32.eqz
                                                br_if 2 (;@20;)
                                                local.get 10
                                                local.get 25
                                                local.get 6
                                                i32.sub
                                                local.tee 5
                                                i32.const 1
                                                i32.add
                                                local.get 10
                                                local.get 5
                                                i32.gt_s
                                                select
                                                local.set 10
                                                br 2 (;@20;)
                                              end
                                              local.get 9
                                              i64.load offset=56
                                              local.tee 37
                                              i64.const -1
                                              i64.le_s
                                              if  ;; label = @22
                                                local.get 9
                                                i64.const 0
                                                local.get 37
                                                i64.sub
                                                local.tee 37
                                                i64.store offset=56
                                                i32.const 1
                                                local.set 14
                                                i32.const 2954
                                                br 1 (;@21;)
                                              end
                                              local.get 16
                                              i32.const 2048
                                              i32.and
                                              if  ;; label = @22
                                                i32.const 1
                                                local.set 14
                                                i32.const 2955
                                                br 1 (;@21;)
                                              end
                                              i32.const 2956
                                              i32.const 2954
                                              local.get 16
                                              i32.const 1
                                              i32.and
                                              local.tee 14
                                              select
                                            end
                                            local.set 17
                                            block  ;; label = @21
                                              local.get 37
                                              i64.const 4294967296
                                              i64.lt_u
                                              if  ;; label = @22
                                                local.get 37
                                                local.set 38
                                                local.get 25
                                                local.set 6
                                                br 1 (;@21;)
                                              end
                                              local.get 25
                                              local.set 6
                                              loop  ;; label = @22
                                                local.get 6
                                                i32.const -1
                                                i32.add
                                                local.tee 6
                                                local.get 37
                                                local.get 37
                                                i64.const 10
                                                i64.div_u
                                                local.tee 38
                                                i64.const 10
                                                i64.mul
                                                i64.sub
                                                i32.wrap_i64
                                                i32.const 48
                                                i32.or
                                                i32.store8
                                                local.get 37
                                                i64.const 42949672959
                                                i64.gt_u
                                                local.get 38
                                                local.set 37
                                                br_if 0 (;@22;)
                                              end
                                            end
                                            local.get 38
                                            i32.wrap_i64
                                            local.tee 5
                                            i32.eqz
                                            br_if 0 (;@20;)
                                            loop  ;; label = @21
                                              local.get 6
                                              i32.const -1
                                              i32.add
                                              local.tee 6
                                              local.get 5
                                              local.get 5
                                              i32.const 10
                                              i32.div_u
                                              local.tee 7
                                              i32.const 10
                                              i32.mul
                                              i32.sub
                                              i32.const 48
                                              i32.or
                                              i32.store8
                                              local.get 5
                                              i32.const 9
                                              i32.gt_u
                                              local.get 7
                                              local.set 5
                                              br_if 0 (;@21;)
                                            end
                                          end
                                          local.get 21
                                          i32.const 0
                                          local.get 10
                                          i32.const 0
                                          i32.lt_s
                                          select
                                          br_if 15 (;@4;)
                                          local.get 16
                                          i32.const -65537
                                          i32.and
                                          local.get 16
                                          local.get 21
                                          select
                                          local.set 11
                                          local.get 9
                                          i64.load offset=56
                                          local.set 38
                                          block  ;; label = @20
                                            local.get 10
                                            br_if 0 (;@20;)
                                            i32.const 0
                                            local.set 15
                                            local.get 38
                                            i64.eqz
                                            i32.eqz
                                            br_if 0 (;@20;)
                                            local.get 25
                                            local.tee 6
                                            local.set 5
                                            br 11 (;@9;)
                                          end
                                          local.get 10
                                          local.get 38
                                          i64.eqz
                                          local.get 25
                                          local.get 6
                                          i32.sub
                                          i32.add
                                          local.tee 5
                                          local.get 10
                                          local.get 5
                                          i32.gt_s
                                          select
                                          local.set 15
                                          local.get 25
                                          local.set 5
                                          br 10 (;@9;)
                                        end
                                        local.get 9
                                        local.get 9
                                        i64.load offset=56
                                        i64.store8 offset=55
                                        i32.const 0
                                        local.set 14
                                        i32.const 2954
                                        local.set 17
                                        i32.const 1
                                        local.set 15
                                        local.get 32
                                        local.set 6
                                        local.get 25
                                        local.set 5
                                        br 9 (;@9;)
                                      end
                                      i32.const 4400
                                      i32.load
                                      call 37
                                      br 1 (;@16;)
                                    end
                                    local.get 9
                                    i32.load offset=56
                                    local.tee 5
                                    i32.const 2964
                                    local.get 5
                                    select
                                  end
                                  local.set 6
                                  i32.const 0
                                  local.set 14
                                  local.get 6
                                  local.get 6
                                  i32.const 2147483647
                                  local.get 10
                                  local.get 10
                                  i32.const 0
                                  i32.lt_s
                                  select
                                  local.tee 7
                                  call 48
                                  local.tee 5
                                  local.get 6
                                  i32.sub
                                  local.get 7
                                  local.get 5
                                  select
                                  local.tee 15
                                  i32.add
                                  local.set 5
                                  i32.const 2954
                                  local.set 17
                                  local.get 10
                                  i32.const -1
                                  i32.gt_s
                                  br_if 6 (;@9;)
                                  local.get 5
                                  i32.load8_u
                                  i32.eqz
                                  br_if 6 (;@9;)
                                  br 11 (;@4;)
                                end
                                local.get 9
                                i32.load offset=56
                                local.tee 6
                                local.get 10
                                br_if 1 (;@13;)
                                drop
                                i32.const 0
                                local.set 5
                                br 2 (;@12;)
                              end
                              local.get 9
                              i32.const 0
                              i32.store offset=12
                              local.get 9
                              local.get 9
                              i64.load offset=56
                              i64.store32 offset=8
                              local.get 9
                              local.get 9
                              i32.const 8
                              i32.add
                              i32.store offset=56
                              i32.const -1
                              local.set 10
                              local.get 9
                              i32.const 8
                              i32.add
                            end
                            local.set 6
                            i32.const 0
                            local.set 5
                            local.get 6
                            local.set 7
                            block  ;; label = @13
                              loop  ;; label = @14
                                local.get 7
                                i32.load
                                local.tee 8
                                i32.eqz
                                br_if 1 (;@13;)
                                block  ;; label = @15
                                  local.get 9
                                  i32.const 4
                                  i32.add
                                  local.get 8
                                  call 49
                                  local.tee 11
                                  i32.const 0
                                  i32.lt_s
                                  local.tee 8
                                  br_if 0 (;@15;)
                                  local.get 11
                                  local.get 10
                                  local.get 5
                                  i32.sub
                                  i32.gt_u
                                  br_if 0 (;@15;)
                                  local.get 7
                                  i32.const 4
                                  i32.add
                                  local.set 7
                                  local.get 10
                                  local.get 5
                                  local.get 11
                                  i32.add
                                  local.tee 5
                                  i32.gt_u
                                  br_if 1 (;@14;)
                                  br 2 (;@13;)
                                end
                              end
                              local.get 8
                              br_if 11 (;@2;)
                            end
                            local.get 5
                            i32.const 0
                            i32.lt_s
                            br_if 8 (;@4;)
                          end
                          block  ;; label = @12
                            local.get 16
                            i32.const 73728
                            i32.and
                            local.tee 10
                            br_if 0 (;@12;)
                            local.get 13
                            local.get 5
                            i32.le_s
                            br_if 0 (;@12;)
                            local.get 9
                            i32.const -64
                            i32.sub
                            i32.const 32
                            local.get 13
                            local.get 5
                            i32.sub
                            local.tee 7
                            i32.const 256
                            local.get 7
                            i32.const 256
                            i32.lt_u
                            local.tee 11
                            select
                            call 46
                            local.get 0
                            i32.load
                            local.tee 12
                            i32.const 32
                            i32.and
                            i32.eqz
                            local.set 8
                            local.get 11
                            i32.eqz
                            if  ;; label = @13
                              loop  ;; label = @14
                                local.get 8
                                i32.const 1
                                i32.and
                                if  ;; label = @15
                                  local.get 9
                                  i32.const -64
                                  i32.sub
                                  i32.const 256
                                  local.get 0
                                  call 26
                                  local.get 0
                                  i32.load
                                  local.set 12
                                end
                                local.get 12
                                i32.const 32
                                i32.and
                                i32.eqz
                                local.set 8
                                local.get 7
                                i32.const -256
                                i32.add
                                local.tee 7
                                i32.const 255
                                i32.gt_u
                                br_if 0 (;@14;)
                              end
                            end
                            local.get 8
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 9
                            i32.const -64
                            i32.sub
                            local.get 7
                            local.get 0
                            call 26
                          end
                          block  ;; label = @12
                            local.get 5
                            i32.eqz
                            br_if 0 (;@12;)
                            i32.const 0
                            local.set 7
                            loop  ;; label = @13
                              local.get 6
                              i32.load
                              local.tee 8
                              i32.eqz
                              br_if 1 (;@12;)
                              local.get 9
                              i32.const 4
                              i32.add
                              local.get 8
                              call 49
                              local.tee 8
                              local.get 7
                              i32.add
                              local.tee 7
                              local.get 5
                              i32.gt_u
                              br_if 1 (;@12;)
                              local.get 0
                              i32.load8_u
                              i32.const 32
                              i32.and
                              i32.eqz
                              if  ;; label = @14
                                local.get 9
                                i32.const 4
                                i32.add
                                local.get 8
                                local.get 0
                                call 26
                              end
                              local.get 6
                              i32.const 4
                              i32.add
                              local.set 6
                              local.get 7
                              local.get 5
                              i32.lt_u
                              br_if 0 (;@13;)
                            end
                          end
                          block  ;; label = @12
                            local.get 10
                            i32.const 8192
                            i32.ne
                            br_if 0 (;@12;)
                            local.get 13
                            local.get 5
                            i32.le_s
                            br_if 0 (;@12;)
                            local.get 9
                            i32.const -64
                            i32.sub
                            i32.const 32
                            local.get 13
                            local.get 5
                            i32.sub
                            local.tee 7
                            i32.const 256
                            local.get 7
                            i32.const 256
                            i32.lt_u
                            local.tee 11
                            select
                            call 46
                            local.get 0
                            i32.load
                            local.tee 6
                            i32.const 32
                            i32.and
                            i32.eqz
                            local.set 8
                            local.get 11
                            i32.eqz
                            if  ;; label = @13
                              loop  ;; label = @14
                                local.get 8
                                i32.const 1
                                i32.and
                                if  ;; label = @15
                                  local.get 9
                                  i32.const -64
                                  i32.sub
                                  i32.const 256
                                  local.get 0
                                  call 26
                                  local.get 0
                                  i32.load
                                  local.set 6
                                end
                                local.get 6
                                i32.const 32
                                i32.and
                                i32.eqz
                                local.set 8
                                local.get 7
                                i32.const -256
                                i32.add
                                local.tee 7
                                i32.const 255
                                i32.gt_u
                                br_if 0 (;@14;)
                              end
                            end
                            local.get 8
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 9
                            i32.const -64
                            i32.sub
                            local.get 7
                            local.get 0
                            call 26
                          end
                          local.get 13
                          local.get 5
                          local.get 13
                          local.get 5
                          i32.gt_s
                          select
                          local.set 5
                          br 8 (;@3;)
                        end
                        local.get 10
                        i32.const -1
                        i32.le_s
                        i32.const 0
                        local.get 21
                        select
                        br_if 6 (;@4;)
                        local.get 9
                        f64.load offset=56
                        local.set 40
                        local.get 9
                        i32.const 0
                        i32.store offset=364
                        block (result i32)  ;; label = @11
                          local.get 40
                          i64.reinterpret_f64
                          i64.const -1
                          i64.le_s
                          if  ;; label = @12
                            local.get 40
                            f64.neg
                            local.set 40
                            i32.const 1
                            local.set 21
                            i32.const 3600
                            local.set 28
                            i32.const 0
                            br 1 (;@11;)
                          end
                          local.get 16
                          i32.const 2048
                          i32.and
                          if  ;; label = @12
                            i32.const 1
                            local.set 21
                            i32.const 3603
                            local.set 28
                            i32.const 0
                            br 1 (;@11;)
                          end
                          i32.const 3606
                          i32.const 3601
                          local.get 16
                          i32.const 1
                          i32.and
                          local.tee 21
                          select
                          local.set 28
                          local.get 21
                          i32.eqz
                        end
                        local.set 22
                        local.get 40
                        f64.abs
                        f64.const inf (;=inf;)
                        f64.lt
                        i32.eqz
                        if  ;; label = @11
                          local.get 21
                          i32.const 3
                          i32.add
                          local.set 11
                          block  ;; label = @12
                            local.get 16
                            i32.const 8192
                            i32.and
                            br_if 0 (;@12;)
                            local.get 13
                            local.get 11
                            i32.le_s
                            br_if 0 (;@12;)
                            local.get 9
                            i32.const -64
                            i32.sub
                            i32.const 32
                            local.get 13
                            local.get 11
                            i32.sub
                            local.tee 5
                            i32.const 256
                            local.get 5
                            i32.const 256
                            i32.lt_u
                            local.tee 6
                            select
                            call 46
                            local.get 0
                            i32.load
                            local.tee 8
                            i32.const 32
                            i32.and
                            i32.eqz
                            local.set 7
                            local.get 6
                            i32.eqz
                            if  ;; label = @13
                              loop  ;; label = @14
                                local.get 7
                                i32.const 1
                                i32.and
                                if  ;; label = @15
                                  local.get 9
                                  i32.const -64
                                  i32.sub
                                  i32.const 256
                                  local.get 0
                                  call 26
                                  local.get 0
                                  i32.load
                                  local.set 8
                                end
                                local.get 8
                                i32.const 32
                                i32.and
                                i32.eqz
                                local.set 7
                                local.get 5
                                i32.const -256
                                i32.add
                                local.tee 5
                                i32.const 255
                                i32.gt_u
                                br_if 0 (;@14;)
                              end
                            end
                            local.get 7
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 9
                            i32.const -64
                            i32.sub
                            local.get 5
                            local.get 0
                            call 26
                          end
                          local.get 0
                          i32.load
                          local.tee 5
                          i32.const 32
                          i32.and
                          if (result i32)  ;; label = @12
                            local.get 5
                          else
                            local.get 28
                            local.get 21
                            local.get 0
                            call 26
                            local.get 0
                            i32.load
                          end
                          i32.const 32
                          i32.and
                          i32.eqz
                          if  ;; label = @12
                            i32.const 3627
                            i32.const 3631
                            local.get 24
                            i32.const 32
                            i32.and
                            local.tee 5
                            select
                            i32.const 3619
                            i32.const 3623
                            local.get 5
                            select
                            local.get 40
                            local.get 40
                            f64.ne
                            select
                            i32.const 3
                            local.get 0
                            call 26
                          end
                          block  ;; label = @12
                            local.get 16
                            i32.const 73728
                            i32.and
                            i32.const 8192
                            i32.ne
                            br_if 0 (;@12;)
                            local.get 13
                            local.get 11
                            i32.le_s
                            br_if 0 (;@12;)
                            local.get 9
                            i32.const -64
                            i32.sub
                            i32.const 32
                            local.get 13
                            local.get 11
                            i32.sub
                            local.tee 5
                            i32.const 256
                            local.get 5
                            i32.const 256
                            i32.lt_u
                            local.tee 6
                            select
                            call 46
                            local.get 0
                            i32.load
                            local.tee 8
                            i32.const 32
                            i32.and
                            i32.eqz
                            local.set 7
                            local.get 6
                            i32.eqz
                            if  ;; label = @13
                              loop  ;; label = @14
                                local.get 7
                                i32.const 1
                                i32.and
                                if  ;; label = @15
                                  local.get 9
                                  i32.const -64
                                  i32.sub
                                  i32.const 256
                                  local.get 0
                                  call 26
                                  local.get 0
                                  i32.load
                                  local.set 8
                                end
                                local.get 8
                                i32.const 32
                                i32.and
                                i32.eqz
                                local.set 7
                                local.get 5
                                i32.const -256
                                i32.add
                                local.tee 5
                                i32.const 255
                                i32.gt_u
                                br_if 0 (;@14;)
                              end
                            end
                            local.get 7
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 9
                            i32.const -64
                            i32.sub
                            local.get 5
                            local.get 0
                            call 26
                          end
                          local.get 13
                          local.get 11
                          local.get 13
                          local.get 11
                          i32.gt_s
                          select
                          local.set 5
                          br 6 (;@5;)
                        end
                        block (result i32)  ;; label = @11
                          block  ;; label = @12
                            local.get 40
                            local.get 9
                            i32.const 364
                            i32.add
                            call 51
                            local.tee 41
                            local.get 41
                            f64.add
                            local.tee 40
                            f64.const 0x0p+0 (;=0;)
                            f64.ne
                            if  ;; label = @13
                              local.get 9
                              local.get 9
                              i32.load offset=364
                              local.tee 5
                              i32.const -1
                              i32.add
                              i32.store offset=364
                              local.get 24
                              i32.const 32
                              i32.or
                              local.tee 17
                              i32.const 97
                              i32.ne
                              br_if 1 (;@12;)
                              br 7 (;@6;)
                            end
                            local.get 24
                            i32.const 32
                            i32.or
                            local.tee 17
                            i32.const 97
                            i32.eq
                            br_if 6 (;@6;)
                            local.get 9
                            i32.load offset=364
                            local.set 6
                            i32.const 6
                            local.get 10
                            local.get 10
                            i32.const 0
                            i32.lt_s
                            select
                            br 1 (;@11;)
                          end
                          local.get 9
                          local.get 5
                          i32.const -29
                          i32.add
                          local.tee 6
                          i32.store offset=364
                          local.get 40
                          f64.const 0x1p+28 (;=2.68435e+08;)
                          f64.mul
                          local.set 40
                          i32.const 6
                          local.get 10
                          local.get 10
                          i32.const 0
                          i32.lt_s
                          select
                        end
                        local.set 11
                        local.get 9
                        i32.const 368
                        i32.add
                        local.get 36
                        local.get 6
                        i32.const 0
                        i32.lt_s
                        local.tee 29
                        select
                        local.tee 15
                        local.set 8
                        loop  ;; label = @11
                          local.get 8
                          block (result i32)  ;; label = @12
                            local.get 40
                            f64.const 0x1p+32 (;=4.29497e+09;)
                            f64.lt
                            local.get 40
                            f64.const 0x0p+0 (;=0;)
                            f64.ge
                            i32.and
                            if  ;; label = @13
                              local.get 40
                              i32.trunc_f64_u
                              br 1 (;@12;)
                            end
                            i32.const 0
                          end
                          local.tee 5
                          i32.store
                          local.get 8
                          i32.const 4
                          i32.add
                          local.set 8
                          local.get 40
                          local.get 5
                          f64.convert_i32_u
                          f64.sub
                          f64.const 0x1.dcd65p+29 (;=1e+09;)
                          f64.mul
                          local.tee 40
                          f64.const 0x0p+0 (;=0;)
                          f64.ne
                          br_if 0 (;@11;)
                        end
                        block  ;; label = @11
                          local.get 6
                          i32.const 1
                          i32.lt_s
                          if  ;; label = @12
                            local.get 8
                            local.set 5
                            local.get 15
                            local.set 7
                            br 1 (;@11;)
                          end
                          local.get 15
                          local.set 7
                          loop  ;; label = @12
                            local.get 6
                            i32.const 29
                            local.get 6
                            i32.const 29
                            i32.lt_s
                            select
                            local.set 6
                            block  ;; label = @13
                              local.get 8
                              i32.const -4
                              i32.add
                              local.tee 5
                              local.get 7
                              i32.lt_u
                              br_if 0 (;@13;)
                              local.get 6
                              i64.extend_i32_u
                              local.set 39
                              i64.const 0
                              local.set 37
                              loop  ;; label = @14
                                local.get 5
                                local.get 37
                                i64.const 4294967295
                                i64.and
                                local.get 5
                                i64.load32_u
                                local.get 39
                                i64.shl
                                i64.add
                                local.tee 38
                                local.get 38
                                i64.const 1000000000
                                i64.div_u
                                local.tee 37
                                i64.const 1000000000
                                i64.mul
                                i64.sub
                                i64.store32
                                local.get 5
                                i32.const -4
                                i32.add
                                local.tee 5
                                local.get 7
                                i32.ge_u
                                br_if 0 (;@14;)
                              end
                              local.get 37
                              i32.wrap_i64
                              local.tee 5
                              i32.eqz
                              br_if 0 (;@13;)
                              local.get 7
                              i32.const -4
                              i32.add
                              local.tee 7
                              local.get 5
                              i32.store
                            end
                            loop  ;; label = @13
                              local.get 8
                              local.tee 5
                              local.get 7
                              i32.gt_u
                              if  ;; label = @14
                                local.get 5
                                i32.const -4
                                i32.add
                                local.tee 8
                                i32.load
                                i32.eqz
                                br_if 1 (;@13;)
                              end
                            end
                            local.get 9
                            local.get 9
                            i32.load offset=364
                            local.get 6
                            i32.sub
                            local.tee 6
                            i32.store offset=364
                            local.get 5
                            local.set 8
                            local.get 6
                            i32.const 0
                            i32.gt_s
                            br_if 0 (;@12;)
                          end
                        end
                        local.get 6
                        i32.const -1
                        i32.le_s
                        if  ;; label = @11
                          local.get 11
                          i32.const 25
                          i32.add
                          i32.const 9
                          i32.div_u
                          i32.const 1
                          i32.add
                          local.set 23
                          loop  ;; label = @12
                            i32.const 9
                            i32.const 0
                            local.get 6
                            i32.sub
                            local.get 6
                            i32.const -9
                            i32.lt_s
                            select
                            local.set 18
                            block  ;; label = @13
                              local.get 7
                              local.get 5
                              i32.ge_u
                              if  ;; label = @14
                                local.get 7
                                local.get 7
                                i32.const 4
                                i32.add
                                local.get 7
                                i32.load
                                select
                                local.set 7
                                br 1 (;@13;)
                              end
                              i32.const 1000000000
                              local.get 18
                              i32.shr_u
                              local.set 19
                              i32.const -1
                              local.get 18
                              i32.shl
                              i32.const -1
                              i32.xor
                              local.set 10
                              i32.const 0
                              local.set 6
                              local.get 7
                              local.set 8
                              loop  ;; label = @14
                                local.get 8
                                local.get 6
                                local.get 8
                                i32.load
                                local.tee 12
                                local.get 18
                                i32.shr_u
                                i32.add
                                i32.store
                                local.get 10
                                local.get 12
                                i32.and
                                local.get 19
                                i32.mul
                                local.set 6
                                local.get 8
                                i32.const 4
                                i32.add
                                local.tee 8
                                local.get 5
                                i32.lt_u
                                br_if 0 (;@14;)
                              end
                              local.get 7
                              local.get 7
                              i32.const 4
                              i32.add
                              local.get 7
                              i32.load
                              select
                              local.set 7
                              local.get 6
                              i32.eqz
                              br_if 0 (;@13;)
                              local.get 5
                              local.get 6
                              i32.store
                              local.get 5
                              i32.const 4
                              i32.add
                              local.set 5
                            end
                            local.get 9
                            local.get 9
                            i32.load offset=364
                            local.get 18
                            i32.add
                            local.tee 6
                            i32.store offset=364
                            local.get 15
                            local.get 7
                            local.get 17
                            i32.const 102
                            i32.eq
                            select
                            local.tee 8
                            local.get 23
                            i32.const 2
                            i32.shl
                            i32.add
                            local.get 5
                            local.get 5
                            local.get 8
                            i32.sub
                            i32.const 2
                            i32.shr_s
                            local.get 23
                            i32.gt_s
                            select
                            local.set 5
                            local.get 6
                            i32.const 0
                            i32.lt_s
                            br_if 0 (;@12;)
                          end
                        end
                        i32.const 0
                        local.set 8
                        block  ;; label = @11
                          local.get 7
                          local.get 5
                          i32.ge_u
                          br_if 0 (;@11;)
                          local.get 15
                          local.get 7
                          i32.sub
                          i32.const 2
                          i32.shr_s
                          i32.const 9
                          i32.mul
                          local.set 8
                          local.get 7
                          i32.load
                          local.tee 12
                          i32.const 10
                          i32.lt_u
                          br_if 0 (;@11;)
                          i32.const 10
                          local.set 6
                          loop  ;; label = @12
                            local.get 8
                            i32.const 1
                            i32.add
                            local.set 8
                            local.get 12
                            local.get 6
                            i32.const 10
                            i32.mul
                            local.tee 6
                            i32.ge_u
                            br_if 0 (;@12;)
                          end
                        end
                        local.get 11
                        i32.const 0
                        local.get 8
                        local.get 17
                        i32.const 102
                        i32.eq
                        select
                        i32.sub
                        local.get 17
                        i32.const 103
                        i32.eq
                        local.tee 23
                        local.get 11
                        i32.const 0
                        i32.ne
                        i32.and
                        i32.sub
                        local.tee 6
                        local.get 5
                        local.get 15
                        i32.sub
                        i32.const 2
                        i32.shr_s
                        i32.const 9
                        i32.mul
                        i32.const -9
                        i32.add
                        i32.lt_s
                        if  ;; label = @11
                          local.get 6
                          i32.const 9216
                          i32.add
                          local.tee 10
                          i32.const 9
                          i32.div_s
                          local.tee 6
                          i32.const 2
                          i32.shl
                          local.get 35
                          local.get 34
                          local.get 29
                          select
                          i32.add
                          local.tee 29
                          i32.const -4096
                          i32.add
                          local.set 14
                          i32.const 10
                          local.set 12
                          local.get 10
                          local.get 6
                          i32.const 9
                          i32.mul
                          i32.sub
                          local.tee 6
                          i32.const 7
                          i32.le_s
                          if  ;; label = @12
                            local.get 6
                            i32.const -8
                            i32.add
                            local.set 6
                            loop  ;; label = @13
                              local.get 12
                              i32.const 10
                              i32.mul
                              local.set 12
                              local.get 6
                              i32.const 1
                              i32.add
                              local.tee 10
                              local.get 6
                              i32.ge_u
                              local.get 10
                              local.set 6
                              br_if 0 (;@13;)
                            end
                          end
                          block  ;; label = @12
                            i32.const 0
                            local.get 5
                            local.get 14
                            i32.const 4
                            i32.add
                            local.tee 10
                            i32.eq
                            local.get 14
                            i32.load
                            local.tee 19
                            local.get 19
                            local.get 12
                            i32.div_u
                            local.tee 6
                            local.get 12
                            i32.mul
                            i32.sub
                            local.tee 18
                            select
                            br_if 0 (;@12;)
                            block  ;; label = @13
                              local.get 6
                              i32.const 1
                              i32.and
                              i32.eqz
                              if  ;; label = @14
                                f64.const 0x1p+53 (;=9.0072e+15;)
                                local.set 40
                                local.get 14
                                local.get 7
                                i32.le_u
                                br_if 1 (;@13;)
                                local.get 12
                                i32.const 1000000000
                                i32.ne
                                br_if 1 (;@13;)
                                local.get 14
                                i32.const -4
                                i32.add
                                i32.load8_u
                                i32.const 1
                                i32.and
                                i32.eqz
                                br_if 1 (;@13;)
                              end
                              f64.const 0x1.0000000000001p+53 (;=9.0072e+15;)
                              local.set 40
                            end
                            f64.const 0x1p-1 (;=0.5;)
                            f64.const 0x1p+0 (;=1;)
                            f64.const 0x1.8p+0 (;=1.5;)
                            local.get 18
                            local.get 12
                            i32.const 1
                            i32.shr_u
                            local.tee 6
                            i32.eq
                            select
                            f64.const 0x1.8p+0 (;=1.5;)
                            local.get 5
                            local.get 10
                            i32.eq
                            select
                            local.get 18
                            local.get 6
                            i32.lt_u
                            select
                            local.set 41
                            block  ;; label = @13
                              local.get 22
                              br_if 0 (;@13;)
                              local.get 28
                              i32.load8_u
                              i32.const 45
                              i32.ne
                              br_if 0 (;@13;)
                              local.get 41
                              f64.neg
                              local.set 41
                              local.get 40
                              f64.neg
                              local.set 40
                            end
                            local.get 14
                            local.get 19
                            local.get 18
                            i32.sub
                            local.tee 6
                            i32.store
                            local.get 40
                            local.get 41
                            f64.add
                            local.get 40
                            f64.eq
                            br_if 0 (;@12;)
                            local.get 14
                            local.get 6
                            local.get 12
                            i32.add
                            local.tee 6
                            i32.store
                            local.get 6
                            i32.const 1000000000
                            i32.ge_u
                            if  ;; label = @13
                              local.get 29
                              i32.const -4100
                              i32.add
                              local.set 8
                              loop  ;; label = @14
                                local.get 8
                                i32.const 4
                                i32.add
                                i32.const 0
                                i32.store
                                local.get 8
                                local.get 7
                                i32.lt_u
                                if  ;; label = @15
                                  local.get 7
                                  i32.const -4
                                  i32.add
                                  local.tee 7
                                  i32.const 0
                                  i32.store
                                end
                                local.get 8
                                local.get 8
                                i32.load
                                i32.const 1
                                i32.add
                                local.tee 6
                                i32.store
                                local.get 8
                                i32.const -4
                                i32.add
                                local.set 8
                                local.get 6
                                i32.const 999999999
                                i32.gt_u
                                br_if 0 (;@14;)
                              end
                              local.get 8
                              i32.const 4
                              i32.add
                              local.set 14
                            end
                            local.get 15
                            local.get 7
                            i32.sub
                            i32.const 2
                            i32.shr_s
                            i32.const 9
                            i32.mul
                            local.set 8
                            local.get 7
                            i32.load
                            local.tee 12
                            i32.const 10
                            i32.lt_u
                            br_if 0 (;@12;)
                            i32.const 10
                            local.set 6
                            loop  ;; label = @13
                              local.get 8
                              i32.const 1
                              i32.add
                              local.set 8
                              local.get 12
                              local.get 6
                              i32.const 10
                              i32.mul
                              local.tee 6
                              i32.ge_u
                              br_if 0 (;@13;)
                            end
                          end
                          local.get 14
                          i32.const 4
                          i32.add
                          local.tee 6
                          local.get 5
                          local.get 5
                          local.get 6
                          i32.gt_u
                          select
                          local.set 5
                        end
                        block (result i32)  ;; label = @11
                          loop  ;; label = @12
                            i32.const 0
                            local.get 5
                            local.tee 19
                            local.get 7
                            i32.le_u
                            br_if 1 (;@11;)
                            drop
                            local.get 19
                            i32.const -4
                            i32.add
                            local.tee 5
                            i32.load
                            i32.eqz
                            br_if 0 (;@12;)
                          end
                          i32.const 1
                        end
                        local.set 18
                        block  ;; label = @11
                          local.get 23
                          i32.eqz
                          if  ;; label = @12
                            local.get 16
                            i32.const 8
                            i32.and
                            local.set 14
                            br 1 (;@11;)
                          end
                          local.get 8
                          i32.const -1
                          i32.xor
                          i32.const -1
                          local.get 11
                          i32.const 1
                          local.get 11
                          select
                          local.tee 6
                          local.get 8
                          i32.gt_s
                          local.get 8
                          i32.const -5
                          i32.gt_s
                          i32.and
                          local.tee 5
                          select
                          local.get 6
                          i32.add
                          local.set 11
                          i32.const -1
                          i32.const -2
                          local.get 5
                          select
                          local.get 24
                          i32.add
                          local.set 24
                          local.get 16
                          i32.const 8
                          i32.and
                          local.tee 14
                          br_if 0 (;@11;)
                          i32.const 9
                          local.set 5
                          block  ;; label = @12
                            local.get 18
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 19
                            i32.const -4
                            i32.add
                            i32.load
                            local.tee 12
                            i32.eqz
                            br_if 0 (;@12;)
                            i32.const 0
                            local.set 5
                            local.get 12
                            i32.const 10
                            i32.rem_u
                            br_if 0 (;@12;)
                            i32.const 10
                            local.set 6
                            loop  ;; label = @13
                              local.get 5
                              i32.const 1
                              i32.add
                              local.set 5
                              local.get 12
                              local.get 6
                              i32.const 10
                              i32.mul
                              local.tee 6
                              i32.rem_u
                              i32.eqz
                              br_if 0 (;@13;)
                            end
                          end
                          local.get 19
                          local.get 15
                          i32.sub
                          i32.const 2
                          i32.shr_s
                          i32.const 9
                          i32.mul
                          i32.const -9
                          i32.add
                          local.set 6
                          local.get 24
                          i32.const -33
                          i32.and
                          i32.const 70
                          i32.eq
                          if  ;; label = @12
                            i32.const 0
                            local.set 14
                            local.get 11
                            local.get 6
                            local.get 5
                            i32.sub
                            local.tee 5
                            i32.const 0
                            local.get 5
                            i32.const 0
                            i32.gt_s
                            select
                            local.tee 5
                            local.get 11
                            local.get 5
                            i32.lt_s
                            select
                            local.set 11
                            br 1 (;@11;)
                          end
                          i32.const 0
                          local.set 14
                          local.get 11
                          local.get 6
                          local.get 8
                          i32.add
                          local.get 5
                          i32.sub
                          local.tee 5
                          i32.const 0
                          local.get 5
                          i32.const 0
                          i32.gt_s
                          select
                          local.tee 5
                          local.get 11
                          local.get 5
                          i32.lt_s
                          select
                          local.set 11
                        end
                        i32.const -1
                        local.set 5
                        local.get 11
                        i32.const 2147483645
                        i32.const 2147483646
                        local.get 11
                        local.get 14
                        i32.or
                        local.tee 22
                        select
                        i32.gt_s
                        br_if 5 (;@5;)
                        local.get 11
                        local.get 22
                        i32.const 0
                        i32.ne
                        i32.add
                        i32.const 1
                        i32.add
                        local.set 17
                        block  ;; label = @11
                          local.get 24
                          i32.const -33
                          i32.and
                          i32.const 70
                          i32.ne
                          local.tee 23
                          i32.eqz
                          if  ;; label = @12
                            local.get 8
                            i32.const 2147483647
                            local.get 17
                            i32.sub
                            i32.gt_s
                            br_if 7 (;@5;)
                            local.get 8
                            i32.const 0
                            local.get 8
                            i32.const 0
                            i32.gt_s
                            select
                            local.set 8
                            br 1 (;@11;)
                          end
                          local.get 26
                          local.set 6
                          local.get 8
                          local.get 8
                          i32.const 31
                          i32.shr_s
                          local.tee 5
                          i32.add
                          local.get 5
                          i32.xor
                          local.tee 5
                          if  ;; label = @12
                            loop  ;; label = @13
                              local.get 6
                              i32.const -1
                              i32.add
                              local.tee 6
                              local.get 5
                              local.get 5
                              i32.const 10
                              i32.div_u
                              local.tee 12
                              i32.const 10
                              i32.mul
                              i32.sub
                              i32.const 48
                              i32.or
                              i32.store8
                              local.get 5
                              i32.const 9
                              i32.gt_u
                              local.get 12
                              local.set 5
                              br_if 0 (;@13;)
                            end
                          end
                          local.get 26
                          local.get 6
                          i32.sub
                          i32.const 1
                          i32.le_s
                          if  ;; label = @12
                            local.get 6
                            i32.const -1
                            i32.add
                            local.set 5
                            loop  ;; label = @13
                              local.get 5
                              i32.const 48
                              i32.store8
                              local.get 26
                              local.get 5
                              i32.sub
                              local.get 5
                              i32.const -1
                              i32.add
                              local.tee 6
                              local.set 5
                              i32.const 2
                              i32.lt_s
                              br_if 0 (;@13;)
                            end
                            local.get 6
                            i32.const 1
                            i32.add
                            local.set 6
                          end
                          local.get 6
                          i32.const -2
                          i32.add
                          local.tee 29
                          local.get 24
                          i32.store8
                          i32.const -1
                          local.set 5
                          local.get 6
                          i32.const -1
                          i32.add
                          i32.const 45
                          i32.const 43
                          local.get 8
                          i32.const 0
                          i32.lt_s
                          select
                          i32.store8
                          local.get 26
                          local.get 29
                          i32.sub
                          local.tee 8
                          i32.const 2147483647
                          local.get 17
                          i32.sub
                          i32.gt_s
                          br_if 6 (;@5;)
                        end
                        local.get 8
                        local.get 17
                        i32.add
                        local.tee 6
                        local.get 21
                        i32.const 2147483647
                        i32.xor
                        i32.gt_s
                        br_if 5 (;@5;)
                        local.get 6
                        local.get 21
                        i32.add
                        local.set 17
                        block  ;; label = @11
                          local.get 16
                          i32.const 73728
                          i32.and
                          local.tee 16
                          br_if 0 (;@11;)
                          local.get 13
                          local.get 17
                          i32.le_s
                          br_if 0 (;@11;)
                          local.get 9
                          i32.const -64
                          i32.sub
                          i32.const 32
                          local.get 13
                          local.get 17
                          i32.sub
                          local.tee 5
                          i32.const 256
                          local.get 5
                          i32.const 256
                          i32.lt_u
                          local.tee 12
                          select
                          call 46
                          local.get 0
                          i32.load
                          local.tee 6
                          i32.const 32
                          i32.and
                          i32.eqz
                          local.set 8
                          local.get 12
                          i32.eqz
                          if  ;; label = @12
                            loop  ;; label = @13
                              local.get 8
                              i32.const 1
                              i32.and
                              if  ;; label = @14
                                local.get 9
                                i32.const -64
                                i32.sub
                                i32.const 256
                                local.get 0
                                call 26
                                local.get 0
                                i32.load
                                local.set 6
                              end
                              local.get 6
                              i32.const 32
                              i32.and
                              i32.eqz
                              local.set 8
                              local.get 5
                              i32.const -256
                              i32.add
                              local.tee 5
                              i32.const 255
                              i32.gt_u
                              br_if 0 (;@13;)
                            end
                          end
                          local.get 8
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 9
                          i32.const -64
                          i32.sub
                          local.get 5
                          local.get 0
                          call 26
                        end
                        local.get 0
                        i32.load8_u
                        i32.const 32
                        i32.and
                        i32.eqz
                        if  ;; label = @11
                          local.get 28
                          local.get 21
                          local.get 0
                          call 26
                        end
                        block  ;; label = @11
                          local.get 16
                          i32.const 65536
                          i32.ne
                          br_if 0 (;@11;)
                          local.get 13
                          local.get 17
                          i32.le_s
                          br_if 0 (;@11;)
                          local.get 9
                          i32.const -64
                          i32.sub
                          i32.const 48
                          local.get 13
                          local.get 17
                          i32.sub
                          local.tee 5
                          i32.const 256
                          local.get 5
                          i32.const 256
                          i32.lt_u
                          local.tee 12
                          select
                          call 46
                          local.get 0
                          i32.load
                          local.tee 6
                          i32.const 32
                          i32.and
                          i32.eqz
                          local.set 8
                          local.get 12
                          i32.eqz
                          if  ;; label = @12
                            loop  ;; label = @13
                              local.get 8
                              i32.const 1
                              i32.and
                              if  ;; label = @14
                                local.get 9
                                i32.const -64
                                i32.sub
                                i32.const 256
                                local.get 0
                                call 26
                                local.get 0
                                i32.load
                                local.set 6
                              end
                              local.get 6
                              i32.const 32
                              i32.and
                              i32.eqz
                              local.set 8
                              local.get 5
                              i32.const -256
                              i32.add
                              local.tee 5
                              i32.const 255
                              i32.gt_u
                              br_if 0 (;@13;)
                            end
                          end
                          local.get 8
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 9
                          i32.const -64
                          i32.sub
                          local.get 5
                          local.get 0
                          call 26
                        end
                        local.get 23
                        br_if 2 (;@8;)
                        local.get 15
                        local.get 7
                        local.get 7
                        local.get 15
                        i32.gt_u
                        select
                        local.tee 12
                        local.set 10
                        loop  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 10
                                i32.load
                                local.tee 5
                                if  ;; label = @15
                                  i32.const 0
                                  local.set 7
                                  loop  ;; label = @16
                                    local.get 7
                                    local.get 9
                                    i32.add
                                    i32.const 344
                                    i32.add
                                    local.get 5
                                    local.get 5
                                    i32.const 10
                                    i32.div_u
                                    local.tee 6
                                    i32.const 10
                                    i32.mul
                                    i32.sub
                                    i32.const 48
                                    i32.or
                                    i32.store8
                                    local.get 7
                                    i32.const -1
                                    i32.add
                                    local.set 7
                                    local.get 5
                                    i32.const 9
                                    i32.gt_u
                                    local.get 6
                                    local.set 5
                                    br_if 0 (;@16;)
                                  end
                                  local.get 7
                                  local.get 9
                                  i32.add
                                  i32.const 345
                                  i32.add
                                  local.set 5
                                  local.get 10
                                  local.get 12
                                  i32.ne
                                  if  ;; label = @16
                                    local.get 5
                                    local.get 9
                                    i32.const 336
                                    i32.add
                                    i32.le_u
                                    br_if 4 (;@12;)
                                    br 3 (;@13;)
                                  end
                                  local.get 7
                                  br_if 3 (;@12;)
                                  br 1 (;@14;)
                                end
                                i32.const 0
                                local.set 7
                                local.get 30
                                local.set 5
                                local.get 10
                                local.get 12
                                i32.ne
                                br_if 1 (;@13;)
                              end
                              local.get 5
                              i32.const -1
                              i32.add
                              local.tee 5
                              i32.const 48
                              i32.store8
                              br 1 (;@12;)
                            end
                            local.get 9
                            i32.const 336
                            i32.add
                            i32.const 48
                            local.get 7
                            i32.const 9
                            i32.add
                            call 46
                            local.get 9
                            i32.const 336
                            i32.add
                            local.set 5
                          end
                          local.get 0
                          i32.load8_u
                          i32.const 32
                          i32.and
                          i32.eqz
                          if  ;; label = @12
                            local.get 5
                            local.get 30
                            local.get 5
                            i32.sub
                            local.get 0
                            call 26
                          end
                          local.get 10
                          i32.const 4
                          i32.add
                          local.tee 10
                          local.get 15
                          i32.le_u
                          br_if 0 (;@11;)
                        end
                        block  ;; label = @11
                          local.get 22
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 0
                          i32.load8_u
                          i32.const 32
                          i32.and
                          br_if 0 (;@11;)
                          i32.const 3635
                          i32.const 1
                          local.get 0
                          call 26
                        end
                        block  ;; label = @11
                          local.get 11
                          i32.const 1
                          i32.lt_s
                          if  ;; label = @12
                            local.get 11
                            local.set 5
                            br 1 (;@11;)
                          end
                          local.get 10
                          local.get 19
                          i32.ge_u
                          if  ;; label = @12
                            local.get 11
                            local.set 5
                            br 1 (;@11;)
                          end
                          loop  ;; label = @12
                            local.get 30
                            local.set 5
                            block  ;; label = @13
                              local.get 10
                              i32.load
                              local.tee 7
                              if  ;; label = @14
                                loop  ;; label = @15
                                  local.get 5
                                  i32.const -1
                                  i32.add
                                  local.tee 5
                                  local.get 7
                                  local.get 7
                                  i32.const 10
                                  i32.div_u
                                  local.tee 6
                                  i32.const 10
                                  i32.mul
                                  i32.sub
                                  i32.const 48
                                  i32.or
                                  i32.store8
                                  local.get 7
                                  i32.const 9
                                  i32.gt_u
                                  local.get 6
                                  local.set 7
                                  br_if 0 (;@15;)
                                end
                                local.get 5
                                local.get 9
                                i32.const 336
                                i32.add
                                i32.le_u
                                br_if 1 (;@13;)
                              end
                              local.get 9
                              i32.const 336
                              i32.add
                              i32.const 48
                              local.get 5
                              local.get 31
                              i32.add
                              call 46
                              loop  ;; label = @14
                                local.get 5
                                i32.const -1
                                i32.add
                                local.tee 5
                                local.get 9
                                i32.const 336
                                i32.add
                                i32.gt_u
                                br_if 0 (;@14;)
                              end
                            end
                            local.get 0
                            i32.load8_u
                            i32.const 32
                            i32.and
                            i32.eqz
                            if  ;; label = @13
                              local.get 5
                              local.get 11
                              i32.const 9
                              local.get 11
                              i32.const 9
                              i32.lt_s
                              select
                              local.get 0
                              call 26
                            end
                            local.get 11
                            i32.const -9
                            i32.add
                            local.set 5
                            local.get 11
                            i32.const 10
                            i32.lt_s
                            br_if 1 (;@11;)
                            local.get 5
                            local.set 11
                            local.get 10
                            i32.const 4
                            i32.add
                            local.tee 10
                            local.get 19
                            i32.lt_u
                            br_if 0 (;@12;)
                          end
                        end
                        local.get 5
                        i32.const 1
                        i32.lt_s
                        br_if 3 (;@7;)
                        local.get 9
                        i32.const -64
                        i32.sub
                        i32.const 48
                        local.get 5
                        i32.const 256
                        local.get 5
                        i32.const 256
                        i32.lt_u
                        local.tee 6
                        select
                        call 46
                        local.get 0
                        i32.load
                        local.tee 8
                        i32.const 32
                        i32.and
                        i32.eqz
                        local.set 7
                        local.get 6
                        i32.eqz
                        if  ;; label = @11
                          loop  ;; label = @12
                            local.get 7
                            i32.const 1
                            i32.and
                            if  ;; label = @13
                              local.get 9
                              i32.const -64
                              i32.sub
                              i32.const 256
                              local.get 0
                              call 26
                              local.get 0
                              i32.load
                              local.set 8
                            end
                            local.get 8
                            i32.const 32
                            i32.and
                            i32.eqz
                            local.set 7
                            local.get 5
                            i32.const -256
                            i32.add
                            local.tee 5
                            i32.const 255
                            i32.gt_u
                            br_if 0 (;@12;)
                          end
                        end
                        local.get 7
                        i32.eqz
                        br_if 3 (;@7;)
                        local.get 9
                        i32.const -64
                        i32.sub
                        local.get 5
                        local.get 0
                        call 26
                        br 3 (;@7;)
                      end
                      i32.const 0
                      local.set 14
                      i32.const 2954
                      local.set 17
                      local.get 25
                      local.set 5
                      local.get 16
                      local.set 11
                      local.get 10
                      local.set 15
                    end
                    local.get 5
                    local.get 6
                    i32.sub
                    local.tee 23
                    local.get 15
                    local.get 15
                    local.get 23
                    i32.lt_s
                    select
                    local.tee 16
                    i32.const 2147483647
                    local.get 14
                    i32.sub
                    i32.gt_s
                    br_if 4 (;@4;)
                    local.get 14
                    local.get 16
                    i32.add
                    local.tee 22
                    local.get 13
                    local.get 13
                    local.get 22
                    i32.lt_s
                    select
                    local.tee 5
                    local.get 19
                    i32.gt_s
                    br_if 4 (;@4;)
                    block  ;; label = @9
                      local.get 11
                      i32.const 73728
                      i32.and
                      local.tee 10
                      br_if 0 (;@9;)
                      local.get 22
                      local.get 13
                      i32.ge_s
                      br_if 0 (;@9;)
                      local.get 9
                      i32.const -64
                      i32.sub
                      i32.const 32
                      local.get 5
                      local.get 22
                      i32.sub
                      local.tee 7
                      i32.const 256
                      local.get 7
                      i32.const 256
                      i32.lt_u
                      local.tee 11
                      select
                      call 46
                      local.get 0
                      i32.load
                      local.tee 12
                      i32.const 32
                      i32.and
                      i32.eqz
                      local.set 8
                      local.get 11
                      i32.eqz
                      if  ;; label = @10
                        loop  ;; label = @11
                          local.get 8
                          i32.const 1
                          i32.and
                          if  ;; label = @12
                            local.get 9
                            i32.const -64
                            i32.sub
                            i32.const 256
                            local.get 0
                            call 26
                            local.get 0
                            i32.load
                            local.set 12
                          end
                          local.get 12
                          i32.const 32
                          i32.and
                          i32.eqz
                          local.set 8
                          local.get 7
                          i32.const -256
                          i32.add
                          local.tee 7
                          i32.const 255
                          i32.gt_u
                          br_if 0 (;@11;)
                        end
                      end
                      local.get 8
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 9
                      i32.const -64
                      i32.sub
                      local.get 7
                      local.get 0
                      call 26
                    end
                    local.get 0
                    i32.load8_u
                    i32.const 32
                    i32.and
                    i32.eqz
                    if  ;; label = @9
                      local.get 17
                      local.get 14
                      local.get 0
                      call 26
                    end
                    block  ;; label = @9
                      local.get 10
                      i32.const 65536
                      i32.ne
                      br_if 0 (;@9;)
                      local.get 22
                      local.get 13
                      i32.ge_s
                      br_if 0 (;@9;)
                      local.get 9
                      i32.const -64
                      i32.sub
                      i32.const 48
                      local.get 5
                      local.get 22
                      i32.sub
                      local.tee 7
                      i32.const 256
                      local.get 7
                      i32.const 256
                      i32.lt_u
                      local.tee 11
                      select
                      call 46
                      local.get 0
                      i32.load
                      local.tee 12
                      i32.const 32
                      i32.and
                      i32.eqz
                      local.set 8
                      local.get 11
                      i32.eqz
                      if  ;; label = @10
                        loop  ;; label = @11
                          local.get 8
                          i32.const 1
                          i32.and
                          if  ;; label = @12
                            local.get 9
                            i32.const -64
                            i32.sub
                            i32.const 256
                            local.get 0
                            call 26
                            local.get 0
                            i32.load
                            local.set 12
                          end
                          local.get 12
                          i32.const 32
                          i32.and
                          i32.eqz
                          local.set 8
                          local.get 7
                          i32.const -256
                          i32.add
                          local.tee 7
                          i32.const 255
                          i32.gt_u
                          br_if 0 (;@11;)
                        end
                      end
                      local.get 8
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 9
                      i32.const -64
                      i32.sub
                      local.get 7
                      local.get 0
                      call 26
                    end
                    block  ;; label = @9
                      local.get 23
                      local.get 15
                      i32.ge_s
                      br_if 0 (;@9;)
                      local.get 9
                      i32.const -64
                      i32.sub
                      i32.const 48
                      local.get 16
                      local.get 23
                      i32.sub
                      local.tee 7
                      i32.const 256
                      local.get 7
                      i32.const 256
                      i32.lt_u
                      local.tee 11
                      select
                      call 46
                      local.get 0
                      i32.load
                      local.tee 12
                      i32.const 32
                      i32.and
                      i32.eqz
                      local.set 8
                      local.get 11
                      i32.eqz
                      if  ;; label = @10
                        loop  ;; label = @11
                          local.get 8
                          i32.const 1
                          i32.and
                          if  ;; label = @12
                            local.get 9
                            i32.const -64
                            i32.sub
                            i32.const 256
                            local.get 0
                            call 26
                            local.get 0
                            i32.load
                            local.set 12
                          end
                          local.get 12
                          i32.const 32
                          i32.and
                          i32.eqz
                          local.set 8
                          local.get 7
                          i32.const -256
                          i32.add
                          local.tee 7
                          i32.const 255
                          i32.gt_u
                          br_if 0 (;@11;)
                        end
                      end
                      local.get 8
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 9
                      i32.const -64
                      i32.sub
                      local.get 7
                      local.get 0
                      call 26
                    end
                    local.get 0
                    i32.load8_u
                    i32.const 32
                    i32.and
                    i32.eqz
                    if  ;; label = @9
                      local.get 6
                      local.get 23
                      local.get 0
                      call 26
                    end
                    local.get 10
                    i32.const 8192
                    i32.ne
                    br_if 5 (;@3;)
                    local.get 22
                    local.get 13
                    i32.ge_s
                    br_if 5 (;@3;)
                    local.get 9
                    i32.const -64
                    i32.sub
                    i32.const 32
                    local.get 5
                    local.get 22
                    i32.sub
                    local.tee 7
                    i32.const 256
                    local.get 7
                    i32.const 256
                    i32.lt_u
                    local.tee 11
                    select
                    call 46
                    local.get 0
                    i32.load
                    local.tee 6
                    i32.const 32
                    i32.and
                    i32.eqz
                    local.set 8
                    local.get 11
                    i32.eqz
                    if  ;; label = @9
                      loop  ;; label = @10
                        local.get 8
                        i32.const 1
                        i32.and
                        if  ;; label = @11
                          local.get 9
                          i32.const -64
                          i32.sub
                          i32.const 256
                          local.get 0
                          call 26
                          local.get 0
                          i32.load
                          local.set 6
                        end
                        local.get 6
                        i32.const 32
                        i32.and
                        i32.eqz
                        local.set 8
                        local.get 7
                        i32.const -256
                        i32.add
                        local.tee 7
                        i32.const 255
                        i32.gt_u
                        br_if 0 (;@10;)
                      end
                    end
                    local.get 8
                    i32.eqz
                    br_if 5 (;@3;)
                    local.get 9
                    i32.const -64
                    i32.sub
                    local.get 7
                    local.get 0
                    call 26
                    br 5 (;@3;)
                  end
                  block  ;; label = @8
                    local.get 11
                    i32.const 0
                    i32.lt_s
                    br_if 0 (;@8;)
                    local.get 19
                    local.get 7
                    i32.const 4
                    i32.add
                    local.get 18
                    select
                    local.set 15
                    local.get 7
                    local.set 10
                    loop  ;; label = @9
                      local.get 30
                      local.set 6
                      block  ;; label = @10
                        local.get 10
                        i32.load
                        local.tee 5
                        if  ;; label = @11
                          i32.const 0
                          local.set 8
                          loop  ;; label = @12
                            local.get 8
                            local.get 9
                            i32.add
                            i32.const 344
                            i32.add
                            local.get 5
                            local.get 5
                            i32.const 10
                            i32.div_u
                            local.tee 6
                            i32.const 10
                            i32.mul
                            i32.sub
                            i32.const 48
                            i32.or
                            i32.store8
                            local.get 8
                            i32.const -1
                            i32.add
                            local.set 8
                            local.get 5
                            i32.const 9
                            i32.gt_u
                            local.get 6
                            local.set 5
                            br_if 0 (;@12;)
                          end
                          local.get 8
                          local.get 9
                          i32.add
                          i32.const 345
                          i32.add
                          local.set 6
                          local.get 8
                          br_if 1 (;@10;)
                        end
                        local.get 6
                        i32.const -1
                        i32.add
                        local.tee 6
                        i32.const 48
                        i32.store8
                      end
                      block  ;; label = @10
                        local.get 7
                        local.get 10
                        i32.ne
                        if  ;; label = @11
                          local.get 6
                          local.get 9
                          i32.const 336
                          i32.add
                          i32.le_u
                          br_if 1 (;@10;)
                          local.get 9
                          i32.const 336
                          i32.add
                          i32.const 48
                          local.get 6
                          local.get 31
                          i32.add
                          call 46
                          loop  ;; label = @12
                            local.get 6
                            i32.const -1
                            i32.add
                            local.tee 6
                            local.get 9
                            i32.const 336
                            i32.add
                            i32.gt_u
                            br_if 0 (;@12;)
                          end
                          br 1 (;@10;)
                        end
                        local.get 0
                        i32.load8_u
                        i32.const 32
                        i32.and
                        i32.eqz
                        if  ;; label = @11
                          local.get 6
                          i32.const 1
                          local.get 0
                          call 26
                        end
                        local.get 6
                        i32.const 1
                        i32.add
                        local.set 6
                        local.get 14
                        i32.eqz
                        i32.const 0
                        local.get 11
                        i32.const 1
                        i32.lt_s
                        select
                        br_if 0 (;@10;)
                        local.get 0
                        i32.load8_u
                        i32.const 32
                        i32.and
                        br_if 0 (;@10;)
                        i32.const 3635
                        i32.const 1
                        local.get 0
                        call 26
                      end
                      local.get 30
                      local.get 6
                      i32.sub
                      local.set 5
                      local.get 0
                      i32.load8_u
                      i32.const 32
                      i32.and
                      i32.eqz
                      if  ;; label = @10
                        local.get 6
                        local.get 5
                        local.get 11
                        local.get 11
                        local.get 5
                        i32.gt_s
                        select
                        local.get 0
                        call 26
                      end
                      local.get 10
                      i32.const 4
                      i32.add
                      local.tee 10
                      local.get 15
                      i32.lt_u
                      i32.const 0
                      local.get 11
                      local.get 5
                      i32.sub
                      local.tee 11
                      i32.const -1
                      i32.gt_s
                      select
                      br_if 0 (;@9;)
                    end
                    local.get 11
                    i32.const 1
                    i32.lt_s
                    br_if 0 (;@8;)
                    local.get 9
                    i32.const -64
                    i32.sub
                    i32.const 48
                    local.get 11
                    i32.const 256
                    local.get 11
                    i32.const 256
                    i32.lt_u
                    local.tee 6
                    select
                    call 46
                    local.get 0
                    i32.load
                    local.tee 7
                    i32.const 32
                    i32.and
                    i32.eqz
                    local.set 5
                    local.get 6
                    i32.eqz
                    if  ;; label = @9
                      loop  ;; label = @10
                        local.get 5
                        i32.const 1
                        i32.and
                        if  ;; label = @11
                          local.get 9
                          i32.const -64
                          i32.sub
                          i32.const 256
                          local.get 0
                          call 26
                          local.get 0
                          i32.load
                          local.set 7
                        end
                        local.get 7
                        i32.const 32
                        i32.and
                        i32.eqz
                        local.set 5
                        local.get 11
                        i32.const -256
                        i32.add
                        local.tee 11
                        i32.const 255
                        i32.gt_u
                        br_if 0 (;@10;)
                      end
                    end
                    local.get 5
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 9
                    i32.const -64
                    i32.sub
                    local.get 11
                    local.get 0
                    call 26
                  end
                  local.get 0
                  i32.load8_u
                  i32.const 32
                  i32.and
                  br_if 0 (;@7;)
                  local.get 29
                  local.get 26
                  local.get 29
                  i32.sub
                  local.get 0
                  call 26
                end
                block  ;; label = @7
                  local.get 16
                  i32.const 8192
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 13
                  local.get 17
                  i32.le_s
                  br_if 0 (;@7;)
                  local.get 9
                  i32.const -64
                  i32.sub
                  i32.const 32
                  local.get 13
                  local.get 17
                  i32.sub
                  local.tee 5
                  i32.const 256
                  local.get 5
                  i32.const 256
                  i32.lt_u
                  local.tee 6
                  select
                  call 46
                  local.get 0
                  i32.load
                  local.tee 8
                  i32.const 32
                  i32.and
                  i32.eqz
                  local.set 7
                  local.get 6
                  i32.eqz
                  if  ;; label = @8
                    loop  ;; label = @9
                      local.get 7
                      i32.const 1
                      i32.and
                      if  ;; label = @10
                        local.get 9
                        i32.const -64
                        i32.sub
                        i32.const 256
                        local.get 0
                        call 26
                        local.get 0
                        i32.load
                        local.set 8
                      end
                      local.get 8
                      i32.const 32
                      i32.and
                      i32.eqz
                      local.set 7
                      local.get 5
                      i32.const -256
                      i32.add
                      local.tee 5
                      i32.const 255
                      i32.gt_u
                      br_if 0 (;@9;)
                    end
                  end
                  local.get 7
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 9
                  i32.const -64
                  i32.sub
                  local.get 5
                  local.get 0
                  call 26
                end
                local.get 13
                local.get 17
                local.get 13
                local.get 17
                i32.gt_s
                select
                local.set 5
                br 1 (;@5;)
              end
              local.get 28
              i32.const 9
              i32.add
              local.get 28
              local.get 24
              i32.const 32
              i32.and
              local.tee 11
              select
              local.set 23
              block  ;; label = @6
                local.get 10
                i32.const 11
                i32.gt_u
                br_if 0 (;@6;)
                i32.const 12
                local.get 10
                i32.sub
                i32.eqz
                br_if 0 (;@6;)
                local.get 10
                i32.const -12
                i32.add
                local.set 5
                f64.const 0x1p+4 (;=16;)
                local.set 41
                loop  ;; label = @7
                  local.get 41
                  f64.const 0x1p+4 (;=16;)
                  f64.mul
                  local.set 41
                  local.get 5
                  i32.const 1
                  i32.add
                  local.tee 6
                  local.get 5
                  i32.ge_u
                  local.get 6
                  local.set 5
                  br_if 0 (;@7;)
                end
                local.get 23
                i32.load8_u
                i32.const 45
                i32.eq
                if  ;; label = @7
                  local.get 41
                  local.get 40
                  f64.neg
                  local.get 41
                  f64.sub
                  f64.add
                  f64.neg
                  local.set 40
                  br 1 (;@6;)
                end
                local.get 40
                local.get 41
                f64.add
                local.get 41
                f64.sub
                local.set 40
              end
              local.get 26
              local.set 8
              block  ;; label = @6
                local.get 9
                i32.load offset=364
                local.tee 12
                local.get 12
                i32.const 31
                i32.shr_s
                local.tee 5
                i32.add
                local.get 5
                i32.xor
                local.tee 5
                if  ;; label = @7
                  i32.const 0
                  local.set 7
                  loop  ;; label = @8
                    local.get 7
                    local.get 9
                    i32.add
                    i32.const 335
                    i32.add
                    local.get 5
                    local.get 5
                    i32.const 10
                    i32.div_u
                    local.tee 6
                    i32.const 10
                    i32.mul
                    i32.sub
                    i32.const 48
                    i32.or
                    i32.store8
                    local.get 7
                    i32.const -1
                    i32.add
                    local.set 7
                    local.get 5
                    i32.const 9
                    i32.gt_u
                    local.get 6
                    local.set 5
                    br_if 0 (;@8;)
                  end
                  local.get 7
                  local.get 9
                  i32.add
                  i32.const 336
                  i32.add
                  local.set 8
                  local.get 7
                  br_if 1 (;@6;)
                end
                local.get 8
                i32.const -1
                i32.add
                local.tee 8
                i32.const 48
                i32.store8
              end
              local.get 21
              i32.const 2
              i32.or
              local.set 19
              local.get 8
              i32.const -2
              i32.add
              local.tee 15
              local.get 24
              i32.const 15
              i32.add
              i32.store8
              local.get 8
              i32.const -1
              i32.add
              i32.const 45
              i32.const 43
              local.get 12
              i32.const 0
              i32.lt_s
              select
              i32.store8
              local.get 16
              i32.const 8
              i32.and
              local.set 8
              local.get 9
              i32.const 336
              i32.add
              local.set 7
              loop  ;; label = @6
                local.get 7
                local.tee 5
                block (result i32)  ;; label = @7
                  local.get 40
                  f64.abs
                  f64.const 0x1p+31 (;=2.14748e+09;)
                  f64.lt
                  if  ;; label = @8
                    local.get 40
                    i32.trunc_f64_s
                    br 1 (;@7;)
                  end
                  i32.const -2147483648
                end
                local.tee 6
                i32.const 3584
                i32.add
                i32.load8_u
                local.get 11
                i32.or
                i32.store8
                local.get 40
                local.get 6
                f64.convert_i32_s
                f64.sub
                f64.const 0x1p+4 (;=16;)
                f64.mul
                local.set 40
                block  ;; label = @7
                  local.get 5
                  i32.const 1
                  i32.add
                  local.tee 7
                  local.get 9
                  i32.const 336
                  i32.add
                  i32.sub
                  i32.const 1
                  i32.ne
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    local.get 8
                    br_if 0 (;@8;)
                    local.get 10
                    i32.const 0
                    i32.gt_s
                    br_if 0 (;@8;)
                    local.get 40
                    f64.const 0x0p+0 (;=0;)
                    f64.eq
                    br_if 1 (;@7;)
                  end
                  local.get 5
                  i32.const 46
                  i32.store8 offset=1
                  local.get 5
                  i32.const 2
                  i32.add
                  local.set 7
                end
                local.get 40
                f64.const 0x0p+0 (;=0;)
                f64.ne
                br_if 0 (;@6;)
              end
              i32.const -1
              local.set 5
              i32.const 2147483645
              local.get 19
              local.get 26
              local.get 15
              i32.sub
              local.tee 12
              i32.add
              local.tee 6
              i32.sub
              local.get 10
              i32.lt_s
              br_if 0 (;@5;)
              local.get 6
              local.get 10
              i32.const 2
              i32.add
              local.get 7
              local.get 9
              i32.const 336
              i32.add
              i32.sub
              local.tee 22
              local.get 7
              local.get 33
              i32.add
              local.get 10
              i32.lt_s
              select
              local.get 22
              local.get 10
              select
              local.tee 11
              i32.add
              local.set 18
              block  ;; label = @6
                local.get 16
                i32.const 73728
                i32.and
                local.tee 10
                br_if 0 (;@6;)
                local.get 13
                local.get 18
                i32.le_s
                br_if 0 (;@6;)
                local.get 9
                i32.const -64
                i32.sub
                i32.const 32
                local.get 13
                local.get 18
                i32.sub
                local.tee 5
                i32.const 256
                local.get 5
                i32.const 256
                i32.lt_u
                local.tee 6
                select
                call 46
                local.get 0
                i32.load
                local.tee 8
                i32.const 32
                i32.and
                i32.eqz
                local.set 7
                local.get 6
                i32.eqz
                if  ;; label = @7
                  loop  ;; label = @8
                    local.get 7
                    i32.const 1
                    i32.and
                    if  ;; label = @9
                      local.get 9
                      i32.const -64
                      i32.sub
                      i32.const 256
                      local.get 0
                      call 26
                      local.get 0
                      i32.load
                      local.set 8
                    end
                    local.get 8
                    i32.const 32
                    i32.and
                    i32.eqz
                    local.set 7
                    local.get 5
                    i32.const -256
                    i32.add
                    local.tee 5
                    i32.const 255
                    i32.gt_u
                    br_if 0 (;@8;)
                  end
                end
                local.get 7
                i32.eqz
                br_if 0 (;@6;)
                local.get 9
                i32.const -64
                i32.sub
                local.get 5
                local.get 0
                call 26
              end
              local.get 0
              i32.load8_u
              i32.const 32
              i32.and
              i32.eqz
              if  ;; label = @6
                local.get 23
                local.get 19
                local.get 0
                call 26
              end
              block  ;; label = @6
                local.get 10
                i32.const 65536
                i32.ne
                br_if 0 (;@6;)
                local.get 13
                local.get 18
                i32.le_s
                br_if 0 (;@6;)
                local.get 9
                i32.const -64
                i32.sub
                i32.const 48
                local.get 13
                local.get 18
                i32.sub
                local.tee 5
                i32.const 256
                local.get 5
                i32.const 256
                i32.lt_u
                local.tee 6
                select
                call 46
                local.get 0
                i32.load
                local.tee 8
                i32.const 32
                i32.and
                i32.eqz
                local.set 7
                local.get 6
                i32.eqz
                if  ;; label = @7
                  loop  ;; label = @8
                    local.get 7
                    i32.const 1
                    i32.and
                    if  ;; label = @9
                      local.get 9
                      i32.const -64
                      i32.sub
                      i32.const 256
                      local.get 0
                      call 26
                      local.get 0
                      i32.load
                      local.set 8
                    end
                    local.get 8
                    i32.const 32
                    i32.and
                    i32.eqz
                    local.set 7
                    local.get 5
                    i32.const -256
                    i32.add
                    local.tee 5
                    i32.const 255
                    i32.gt_u
                    br_if 0 (;@8;)
                  end
                end
                local.get 7
                i32.eqz
                br_if 0 (;@6;)
                local.get 9
                i32.const -64
                i32.sub
                local.get 5
                local.get 0
                call 26
              end
              local.get 0
              i32.load8_u
              i32.const 32
              i32.and
              i32.eqz
              if  ;; label = @6
                local.get 9
                i32.const 336
                i32.add
                local.get 22
                local.get 0
                call 26
              end
              block  ;; label = @6
                local.get 11
                local.get 22
                i32.sub
                local.tee 5
                i32.const 1
                i32.lt_s
                br_if 0 (;@6;)
                local.get 9
                i32.const -64
                i32.sub
                i32.const 48
                local.get 5
                i32.const 256
                local.get 5
                i32.const 256
                i32.lt_u
                local.tee 6
                select
                call 46
                local.get 0
                i32.load
                local.tee 8
                i32.const 32
                i32.and
                i32.eqz
                local.set 7
                local.get 6
                i32.eqz
                if  ;; label = @7
                  loop  ;; label = @8
                    local.get 7
                    i32.const 1
                    i32.and
                    if  ;; label = @9
                      local.get 9
                      i32.const -64
                      i32.sub
                      i32.const 256
                      local.get 0
                      call 26
                      local.get 0
                      i32.load
                      local.set 8
                    end
                    local.get 8
                    i32.const 32
                    i32.and
                    i32.eqz
                    local.set 7
                    local.get 5
                    i32.const -256
                    i32.add
                    local.tee 5
                    i32.const 255
                    i32.gt_u
                    br_if 0 (;@8;)
                  end
                end
                local.get 7
                i32.eqz
                br_if 0 (;@6;)
                local.get 9
                i32.const -64
                i32.sub
                local.get 5
                local.get 0
                call 26
              end
              local.get 0
              i32.load8_u
              i32.const 32
              i32.and
              i32.eqz
              if  ;; label = @6
                local.get 15
                local.get 12
                local.get 0
                call 26
              end
              block  ;; label = @6
                local.get 10
                i32.const 8192
                i32.ne
                br_if 0 (;@6;)
                local.get 13
                local.get 18
                i32.le_s
                br_if 0 (;@6;)
                local.get 9
                i32.const -64
                i32.sub
                i32.const 32
                local.get 13
                local.get 18
                i32.sub
                local.tee 5
                i32.const 256
                local.get 5
                i32.const 256
                i32.lt_u
                local.tee 6
                select
                call 46
                local.get 0
                i32.load
                local.tee 8
                i32.const 32
                i32.and
                i32.eqz
                local.set 7
                local.get 6
                i32.eqz
                if  ;; label = @7
                  loop  ;; label = @8
                    local.get 7
                    i32.const 1
                    i32.and
                    if  ;; label = @9
                      local.get 9
                      i32.const -64
                      i32.sub
                      i32.const 256
                      local.get 0
                      call 26
                      local.get 0
                      i32.load
                      local.set 8
                    end
                    local.get 8
                    i32.const 32
                    i32.and
                    i32.eqz
                    local.set 7
                    local.get 5
                    i32.const -256
                    i32.add
                    local.tee 5
                    i32.const 255
                    i32.gt_u
                    br_if 0 (;@8;)
                  end
                end
                local.get 7
                i32.eqz
                br_if 0 (;@6;)
                local.get 9
                i32.const -64
                i32.sub
                local.get 5
                local.get 0
                call 26
              end
              local.get 13
              local.get 18
              local.get 13
              local.get 18
              i32.gt_s
              select
              local.set 5
            end
            local.get 5
            i32.const 0
            i32.ge_s
            br_if 1 (;@3;)
          end
        end
        i32.const 4400
        i32.const 61
        i32.store
      end
      i32.const -1
      local.set 20
    end
    local.get 9
    i32.const 880
    i32.add
    global.set 0
    local.get 20)
  (func (;40;) (type 5) (param i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 1
                        i32.const -9
                        i32.add
                        br_table 5 (;@5;) 7 (;@3;) 8 (;@2;) 9 (;@1;) 7 (;@3;) 8 (;@2;) 0 (;@10;) 1 (;@9;) 2 (;@8;) 3 (;@7;) 9 (;@1;) 8 (;@2;) 9 (;@1;) 9 (;@1;) 7 (;@3;) 8 (;@2;) 9 (;@1;) 4 (;@6;) 6 (;@4;)
                      end
                      local.get 2
                      local.get 2
                      i32.load
                      local.tee 1
                      i32.const 4
                      i32.add
                      i32.store
                      local.get 0
                      local.get 1
                      i64.load16_s
                      i64.store
                      return
                    end
                    local.get 2
                    local.get 2
                    i32.load
                    local.tee 1
                    i32.const 4
                    i32.add
                    i32.store
                    local.get 0
                    local.get 1
                    i64.load16_u
                    i64.store
                    return
                  end
                  local.get 2
                  local.get 2
                  i32.load
                  local.tee 1
                  i32.const 4
                  i32.add
                  i32.store
                  local.get 0
                  local.get 1
                  i64.load8_s
                  i64.store
                  return
                end
                local.get 2
                local.get 2
                i32.load
                local.tee 1
                i32.const 4
                i32.add
                i32.store
                local.get 0
                local.get 1
                i64.load8_u
                i64.store
                return
              end
              i32.const 3440
              i32.const 1
              call 47
              i32.const 3640
              call 27
              unreachable
            end
            local.get 2
            local.get 2
            i32.load
            local.tee 1
            i32.const 4
            i32.add
            i32.store
            local.get 0
            local.get 1
            i32.load
            i32.store
          end
          return
        end
        local.get 2
        local.get 2
        i32.load
        local.tee 1
        i32.const 4
        i32.add
        i32.store
        local.get 0
        local.get 1
        i64.load32_s
        i64.store
        return
      end
      local.get 2
      local.get 2
      i32.load
      local.tee 1
      i32.const 4
      i32.add
      i32.store
      local.get 0
      local.get 1
      i64.load32_u
      i64.store
      return
    end
    local.get 2
    local.get 2
    i32.load
    i32.const 7
    i32.add
    i32.const -8
    i32.and
    local.tee 1
    i32.const 8
    i32.add
    i32.store
    local.get 0
    local.get 1
    i64.load
    i64.store)
  (func (;41;) (type 5) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 2
    i32.store offset=12
    local.get 0
    local.get 1
    local.get 2
    call 38
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func (;42;) (type 1) (param i32) (result i32)
    block (result i32)  ;; label = @1
      i32.const 0
      local.get 0
      i32.load offset=56
      call 6
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      drop
      i32.const 4400
      local.get 0
      i32.store
      i32.const -1
    end)
  (func (;43;) (type 1) (param i32) (result i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 1
    global.set 0
    block (result i32)  ;; label = @1
      block  ;; label = @2
        local.get 0
        local.get 1
        i32.const 8
        i32.add
        call 7
        local.tee 0
        br_if 0 (;@2;)
        i32.const 59
        local.set 0
        local.get 1
        i32.load8_u offset=8
        i32.const 2
        i32.ne
        br_if 0 (;@2;)
        local.get 1
        i32.load8_u offset=16
        i32.const 36
        i32.and
        br_if 0 (;@2;)
        i32.const 1
        br 1 (;@1;)
      end
      i32.const 4400
      local.get 0
      i32.store
      i32.const 0
    end
    local.get 1
    i32.const 32
    i32.add
    global.set 0)
  (func (;44;) (type 0) (param i32 i32 i32) (result i32)
    local.get 0
    i32.const 2
    i32.store offset=32
    block  ;; label = @1
      local.get 0
      i32.load8_u
      i32.const 64
      i32.and
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=56
      call 43
      br_if 0 (;@1;)
      local.get 0
      i32.const -1
      i32.store offset=64
    end
    local.get 0
    local.get 1
    local.get 2
    call 34)
  (func (;45;) (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 0
          local.get 1
          i32.load8_u
          i32.store8
          local.get 2
          i32.const -1
          i32.add
          local.set 3
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 2
          i32.const 1
          i32.eq
          br_if 2 (;@1;)
          local.get 3
          local.set 2
          local.get 1
          i32.const 3
          i32.and
          br_if 0 (;@3;)
        end
        br 1 (;@1;)
      end
      local.get 2
      local.set 3
    end
    block  ;; label = @1
      local.get 0
      i32.const 3
      i32.and
      local.tee 2
      i32.eqz
      if  ;; label = @2
        local.get 3
        i32.const 16
        i32.ge_u
        if  ;; label = @3
          loop  ;; label = @4
            local.get 0
            local.get 1
            i32.load
            i32.store
            local.get 0
            i32.const 4
            i32.add
            local.get 1
            i32.const 4
            i32.add
            i32.load
            i32.store
            local.get 0
            i32.const 8
            i32.add
            local.get 1
            i32.const 8
            i32.add
            i32.load
            i32.store
            local.get 0
            i32.const 12
            i32.add
            local.get 1
            i32.const 12
            i32.add
            i32.load
            i32.store
            local.get 0
            i32.const 16
            i32.add
            local.set 0
            local.get 1
            i32.const 16
            i32.add
            local.set 1
            local.get 3
            i32.const -16
            i32.add
            local.tee 3
            i32.const 15
            i32.gt_u
            br_if 0 (;@4;)
          end
        end
        local.get 3
        i32.const 8
        i32.and
        if  ;; label = @3
          local.get 0
          local.get 1
          i64.load align=4
          i64.store align=4
          local.get 1
          i32.const 8
          i32.add
          local.set 1
          local.get 0
          i32.const 8
          i32.add
          local.set 0
        end
        local.get 3
        i32.const 4
        i32.and
        if  ;; label = @3
          local.get 0
          local.get 1
          i32.load
          i32.store
          local.get 1
          i32.const 4
          i32.add
          local.set 1
          local.get 0
          i32.const 4
          i32.add
          local.set 0
        end
        local.get 3
        i32.const 2
        i32.and
        if  ;; label = @3
          local.get 0
          local.get 1
          i32.load8_u
          i32.store8
          local.get 0
          local.get 1
          i32.load8_u offset=1
          i32.store8 offset=1
          local.get 1
          i32.const 2
          i32.add
          local.set 1
          local.get 0
          i32.const 2
          i32.add
          local.set 0
        end
        local.get 3
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        local.get 1
        i32.load8_u
        i32.store8
        return
      end
      block  ;; label = @2
        local.get 3
        i32.const 32
        i32.lt_u
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.const -1
              i32.add
              br_table 0 (;@5;) 1 (;@4;) 2 (;@3;) 3 (;@2;)
            end
            local.get 0
            local.get 1
            i32.load8_u offset=1
            i32.store8 offset=1
            local.get 0
            local.get 1
            i32.load
            local.tee 4
            i32.store8
            local.get 0
            local.get 1
            i32.load8_u offset=2
            i32.store8 offset=2
            local.get 3
            i32.const -3
            i32.add
            local.set 3
            local.get 0
            i32.const 3
            i32.add
            local.set 7
            i32.const 0
            local.set 2
            loop  ;; label = @5
              local.get 2
              local.get 7
              i32.add
              local.tee 0
              local.get 1
              local.get 2
              i32.add
              local.tee 5
              i32.const 4
              i32.add
              i32.load
              local.tee 6
              i32.const 8
              i32.shl
              local.get 4
              i32.const 24
              i32.shr_u
              i32.or
              i32.store
              local.get 0
              i32.const 4
              i32.add
              local.get 5
              i32.const 8
              i32.add
              i32.load
              local.tee 4
              i32.const 8
              i32.shl
              local.get 6
              i32.const 24
              i32.shr_u
              i32.or
              i32.store
              local.get 0
              i32.const 8
              i32.add
              local.get 5
              i32.const 12
              i32.add
              i32.load
              local.tee 6
              i32.const 8
              i32.shl
              local.get 4
              i32.const 24
              i32.shr_u
              i32.or
              i32.store
              local.get 0
              i32.const 12
              i32.add
              local.get 5
              i32.const 16
              i32.add
              i32.load
              local.tee 4
              i32.const 8
              i32.shl
              local.get 6
              i32.const 24
              i32.shr_u
              i32.or
              i32.store
              local.get 2
              i32.const 16
              i32.add
              local.set 2
              local.get 3
              i32.const -16
              i32.add
              local.tee 3
              i32.const 16
              i32.gt_u
              br_if 0 (;@5;)
            end
            local.get 2
            local.get 7
            i32.add
            local.set 0
            local.get 1
            local.get 2
            i32.add
            i32.const 3
            i32.add
            local.set 1
            br 2 (;@2;)
          end
          local.get 0
          local.get 1
          i32.load
          local.tee 4
          i32.store8
          local.get 0
          local.get 1
          i32.load8_u offset=1
          i32.store8 offset=1
          local.get 3
          i32.const -2
          i32.add
          local.set 3
          local.get 0
          i32.const 2
          i32.add
          local.set 7
          i32.const 0
          local.set 2
          loop  ;; label = @4
            local.get 2
            local.get 7
            i32.add
            local.tee 0
            local.get 1
            local.get 2
            i32.add
            local.tee 5
            i32.const 4
            i32.add
            i32.load
            local.tee 6
            i32.const 16
            i32.shl
            local.get 4
            i32.const 16
            i32.shr_u
            i32.or
            i32.store
            local.get 0
            i32.const 4
            i32.add
            local.get 5
            i32.const 8
            i32.add
            i32.load
            local.tee 4
            i32.const 16
            i32.shl
            local.get 6
            i32.const 16
            i32.shr_u
            i32.or
            i32.store
            local.get 0
            i32.const 8
            i32.add
            local.get 5
            i32.const 12
            i32.add
            i32.load
            local.tee 6
            i32.const 16
            i32.shl
            local.get 4
            i32.const 16
            i32.shr_u
            i32.or
            i32.store
            local.get 0
            i32.const 12
            i32.add
            local.get 5
            i32.const 16
            i32.add
            i32.load
            local.tee 4
            i32.const 16
            i32.shl
            local.get 6
            i32.const 16
            i32.shr_u
            i32.or
            i32.store
            local.get 2
            i32.const 16
            i32.add
            local.set 2
            local.get 3
            i32.const -16
            i32.add
            local.tee 3
            i32.const 17
            i32.gt_u
            br_if 0 (;@4;)
          end
          local.get 2
          local.get 7
          i32.add
          local.set 0
          local.get 1
          local.get 2
          i32.add
          i32.const 2
          i32.add
          local.set 1
          br 1 (;@2;)
        end
        local.get 0
        local.get 1
        i32.load
        local.tee 4
        i32.store8
        local.get 3
        i32.const -1
        i32.add
        local.set 3
        local.get 0
        i32.const 1
        i32.add
        local.set 7
        i32.const 0
        local.set 2
        loop  ;; label = @3
          local.get 2
          local.get 7
          i32.add
          local.tee 0
          local.get 1
          local.get 2
          i32.add
          local.tee 5
          i32.const 4
          i32.add
          i32.load
          local.tee 6
          i32.const 24
          i32.shl
          local.get 4
          i32.const 8
          i32.shr_u
          i32.or
          i32.store
          local.get 0
          i32.const 4
          i32.add
          local.get 5
          i32.const 8
          i32.add
          i32.load
          local.tee 4
          i32.const 24
          i32.shl
          local.get 6
          i32.const 8
          i32.shr_u
          i32.or
          i32.store
          local.get 0
          i32.const 8
          i32.add
          local.get 5
          i32.const 12
          i32.add
          i32.load
          local.tee 6
          i32.const 24
          i32.shl
          local.get 4
          i32.const 8
          i32.shr_u
          i32.or
          i32.store
          local.get 0
          i32.const 12
          i32.add
          local.get 5
          i32.const 16
          i32.add
          i32.load
          local.tee 4
          i32.const 24
          i32.shl
          local.get 6
          i32.const 8
          i32.shr_u
          i32.or
          i32.store
          local.get 2
          i32.const 16
          i32.add
          local.set 2
          local.get 3
          i32.const -16
          i32.add
          local.tee 3
          i32.const 18
          i32.gt_u
          br_if 0 (;@3;)
        end
        local.get 2
        local.get 7
        i32.add
        local.set 0
        local.get 1
        local.get 2
        i32.add
        i32.const 1
        i32.add
        local.set 1
      end
      local.get 3
      i32.const 16
      i32.and
      if  ;; label = @2
        local.get 0
        local.get 1
        i32.load16_u align=1
        i32.store16 align=1
        local.get 0
        local.get 1
        i32.load8_u offset=2
        i32.store8 offset=2
        local.get 0
        local.get 1
        i32.load8_u offset=3
        i32.store8 offset=3
        local.get 0
        local.get 1
        i32.load8_u offset=4
        i32.store8 offset=4
        local.get 0
        local.get 1
        i32.load8_u offset=5
        i32.store8 offset=5
        local.get 0
        local.get 1
        i32.load8_u offset=6
        i32.store8 offset=6
        local.get 0
        local.get 1
        i32.load8_u offset=7
        i32.store8 offset=7
        local.get 0
        local.get 1
        i32.load8_u offset=8
        i32.store8 offset=8
        local.get 0
        local.get 1
        i32.load8_u offset=9
        i32.store8 offset=9
        local.get 0
        local.get 1
        i32.load8_u offset=10
        i32.store8 offset=10
        local.get 0
        local.get 1
        i32.load8_u offset=11
        i32.store8 offset=11
        local.get 0
        local.get 1
        i32.load8_u offset=12
        i32.store8 offset=12
        local.get 0
        local.get 1
        i32.load8_u offset=13
        i32.store8 offset=13
        local.get 0
        local.get 1
        i32.load8_u offset=14
        i32.store8 offset=14
        local.get 0
        local.get 1
        i32.load8_u offset=15
        i32.store8 offset=15
        local.get 1
        i32.const 16
        i32.add
        local.set 1
        local.get 0
        i32.const 16
        i32.add
        local.set 0
      end
      local.get 3
      i32.const 8
      i32.and
      if  ;; label = @2
        local.get 0
        local.get 1
        i32.load8_u
        i32.store8
        local.get 0
        local.get 1
        i32.load8_u offset=1
        i32.store8 offset=1
        local.get 0
        local.get 1
        i32.load8_u offset=2
        i32.store8 offset=2
        local.get 0
        local.get 1
        i32.load8_u offset=3
        i32.store8 offset=3
        local.get 0
        local.get 1
        i32.load8_u offset=4
        i32.store8 offset=4
        local.get 0
        local.get 1
        i32.load8_u offset=5
        i32.store8 offset=5
        local.get 0
        local.get 1
        i32.load8_u offset=6
        i32.store8 offset=6
        local.get 0
        local.get 1
        i32.load8_u offset=7
        i32.store8 offset=7
        local.get 1
        i32.const 8
        i32.add
        local.set 1
        local.get 0
        i32.const 8
        i32.add
        local.set 0
      end
      local.get 3
      i32.const 4
      i32.and
      if  ;; label = @2
        local.get 0
        local.get 1
        i32.load8_u
        i32.store8
        local.get 0
        local.get 1
        i32.load8_u offset=1
        i32.store8 offset=1
        local.get 0
        local.get 1
        i32.load8_u offset=2
        i32.store8 offset=2
        local.get 0
        local.get 1
        i32.load8_u offset=3
        i32.store8 offset=3
        local.get 1
        i32.const 4
        i32.add
        local.set 1
        local.get 0
        i32.const 4
        i32.add
        local.set 0
      end
      local.get 3
      i32.const 2
      i32.and
      if  ;; label = @2
        local.get 0
        local.get 1
        i32.load8_u
        i32.store8
        local.get 0
        local.get 1
        i32.load8_u offset=1
        i32.store8 offset=1
        local.get 1
        i32.const 2
        i32.add
        local.set 1
        local.get 0
        i32.const 2
        i32.add
        local.set 0
      end
      local.get 3
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.load8_u
      i32.store8
    end)
  (func (;46;) (type 5) (param i32 i32 i32)
    (local i32 i32 i64)
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.store8
      local.get 0
      local.get 2
      i32.add
      local.tee 3
      i32.const -1
      i32.add
      local.get 1
      i32.store8
      local.get 2
      i32.const 3
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.store8 offset=2
      local.get 0
      local.get 1
      i32.store8 offset=1
      local.get 3
      i32.const -3
      i32.add
      local.get 1
      i32.store8
      local.get 3
      i32.const -2
      i32.add
      local.get 1
      i32.store8
      local.get 2
      i32.const 7
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.store8 offset=3
      local.get 3
      i32.const -4
      i32.add
      local.get 1
      i32.store8
      local.get 2
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      local.get 0
      i32.sub
      i32.const 3
      i32.and
      local.tee 4
      i32.add
      local.tee 3
      local.get 1
      i32.const 255
      i32.and
      i32.const 16843009
      i32.mul
      local.tee 0
      i32.store
      local.get 3
      local.get 2
      local.get 4
      i32.sub
      i32.const -4
      i32.and
      local.tee 2
      i32.add
      local.tee 1
      i32.const -4
      i32.add
      local.get 0
      i32.store
      local.get 2
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      local.get 0
      i32.store offset=8
      local.get 3
      local.get 0
      i32.store offset=4
      local.get 1
      i32.const -8
      i32.add
      local.get 0
      i32.store
      local.get 1
      i32.const -12
      i32.add
      local.get 0
      i32.store
      local.get 2
      i32.const 25
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      local.get 0
      i32.store offset=24
      local.get 3
      local.get 0
      i32.store offset=20
      local.get 3
      local.get 0
      i32.store offset=16
      local.get 3
      local.get 0
      i32.store offset=12
      local.get 1
      i32.const -16
      i32.add
      local.get 0
      i32.store
      local.get 1
      i32.const -20
      i32.add
      local.get 0
      i32.store
      local.get 1
      i32.const -24
      i32.add
      local.get 0
      i32.store
      local.get 1
      i32.const -28
      i32.add
      local.get 0
      i32.store
      local.get 2
      local.get 3
      i32.const 4
      i32.and
      i32.const 24
      i32.or
      local.tee 1
      i32.sub
      local.tee 2
      i32.const 32
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i64.extend_i32_u
      local.tee 5
      i64.const 32
      i64.shl
      local.get 5
      i64.or
      local.set 5
      local.get 1
      local.get 3
      i32.add
      local.set 1
      loop  ;; label = @2
        local.get 1
        local.get 5
        i64.store
        local.get 1
        i32.const 24
        i32.add
        local.get 5
        i64.store
        local.get 1
        i32.const 16
        i32.add
        local.get 5
        i64.store
        local.get 1
        i32.const 8
        i32.add
        local.get 5
        i64.store
        local.get 1
        i32.const 32
        i32.add
        local.set 1
        local.get 2
        i32.const -32
        i32.add
        local.tee 2
        i32.const 31
        i32.gt_u
        br_if 0 (;@2;)
      end
    end)
  (func (;47;) (type 8) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          i32.const 3440
          local.tee 0
          i32.const 3
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          i32.const 3440
          i32.load8_u
          i32.eqz
          if  ;; label = @4
            i32.const 0
            return
          end
          i32.const 3441
          local.set 0
          loop  ;; label = @4
            local.get 0
            i32.const 3
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            local.get 0
            i32.load8_u
            local.get 0
            i32.const 1
            i32.add
            local.tee 2
            local.set 0
            br_if 0 (;@4;)
          end
          br 1 (;@2;)
        end
        local.get 0
        i32.const -4
        i32.add
        local.set 0
        loop  ;; label = @3
          local.get 0
          i32.const 4
          i32.add
          local.tee 0
          i32.load
          local.tee 1
          i32.const -1
          i32.xor
          local.get 1
          i32.const -16843009
          i32.add
          i32.and
          i32.const -2139062144
          i32.and
          i32.eqz
          br_if 0 (;@3;)
        end
        local.get 1
        i32.const 255
        i32.and
        i32.eqz
        if  ;; label = @3
          local.get 0
          i32.const 3440
          i32.sub
          return
        end
        loop  ;; label = @3
          local.get 0
          i32.load8_u offset=1
          local.get 0
          i32.const 1
          i32.add
          local.tee 1
          local.set 0
          br_if 0 (;@3;)
        end
        br 1 (;@1;)
      end
      local.get 2
      i32.const -1
      i32.add
      local.set 1
    end
    local.get 1
    i32.const 3440
    i32.sub)
  (func (;48;) (type 2) (param i32 i32) (result i32)
    (local i32 i32)
    local.get 1
    i32.const 0
    i32.ne
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.eqz
          if  ;; label = @4
            local.get 1
            local.set 2
            br 1 (;@3;)
          end
          local.get 0
          i32.const 3
          i32.and
          i32.eqz
          if  ;; label = @4
            local.get 1
            local.set 2
            br 1 (;@3;)
          end
          loop  ;; label = @4
            local.get 0
            i32.load8_u
            i32.eqz
            if  ;; label = @5
              local.get 1
              local.set 2
              br 3 (;@2;)
            end
            local.get 1
            i32.const 1
            i32.ne
            local.set 3
            local.get 1
            i32.const -1
            i32.add
            local.set 2
            local.get 0
            i32.const 1
            i32.add
            local.set 0
            local.get 1
            i32.const 1
            i32.eq
            br_if 1 (;@3;)
            local.get 2
            local.set 1
            local.get 0
            i32.const 3
            i32.and
            br_if 0 (;@4;)
          end
        end
        local.get 3
        i32.eqz
        br_if 1 (;@1;)
      end
      block  ;; label = @2
        local.get 0
        i32.load8_u
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.const 4
        i32.lt_u
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 0
          i32.load
          local.tee 1
          i32.const -1
          i32.xor
          local.get 1
          i32.const -16843009
          i32.add
          i32.and
          i32.const -2139062144
          i32.and
          br_if 1 (;@2;)
          local.get 0
          i32.const 4
          i32.add
          local.set 0
          local.get 2
          i32.const -4
          i32.add
          local.tee 2
          i32.const 3
          i32.gt_u
          br_if 0 (;@3;)
        end
      end
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 0
        i32.load8_u
        i32.eqz
        if  ;; label = @3
          local.get 0
          return
        end
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 2
        i32.const -1
        i32.add
        local.tee 2
        br_if 0 (;@2;)
      end
    end
    i32.const 0)
  (func (;49;) (type 2) (param i32 i32) (result i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 0
      return
    end
    local.get 0
    local.get 1
    call 50)
  (func (;50;) (type 2) (param i32 i32) (result i32)
    local.get 0
    if (result i32)  ;; label = @1
      local.get 1
      i32.const 127
      i32.le_u
      if  ;; label = @2
        local.get 0
        local.get 1
        i32.store8
        i32.const 1
        return
      end
      block  ;; label = @2
        i32.const 5464
        i32.load
        i32.eqz
        if  ;; label = @3
          local.get 1
          i32.const -128
          i32.and
          i32.const 57216
          i32.ne
          br_if 1 (;@2;)
          local.get 0
          local.get 1
          i32.store8
          i32.const 1
          return
        end
        local.get 1
        i32.const 2047
        i32.le_u
        if  ;; label = @3
          local.get 0
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=1
          local.get 0
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 192
          i32.or
          i32.store8
          i32.const 2
          return
        end
        local.get 1
        i32.const 55296
        i32.ge_u
        i32.const 0
        local.get 1
        i32.const -8192
        i32.and
        i32.const 57344
        i32.ne
        select
        i32.eqz
        if  ;; label = @3
          local.get 0
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=2
          local.get 0
          local.get 1
          i32.const 12
          i32.shr_u
          i32.const 224
          i32.or
          i32.store8
          local.get 0
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=1
          i32.const 3
          return
        end
        local.get 1
        i32.const -65536
        i32.add
        i32.const 1048575
        i32.le_u
        if  ;; label = @3
          local.get 0
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=3
          local.get 0
          local.get 1
          i32.const 18
          i32.shr_u
          i32.const 240
          i32.or
          i32.store8
          local.get 0
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=2
          local.get 0
          local.get 1
          i32.const 12
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=1
          i32.const 4
          return
        end
      end
      i32.const 4400
      i32.const 25
      i32.store
      i32.const -1
    else
      i32.const 1
    end)
  (func (;51;) (type 15) (param f64 i32) (result f64)
    (local i32 i64)
    local.get 0
    i64.reinterpret_f64
    local.tee 3
    i64.const 52
    i64.shr_u
    i32.wrap_i64
    i32.const 2047
    i32.and
    local.tee 2
    i32.const 2047
    i32.ne
    if (result f64)  ;; label = @1
      local.get 2
      i32.eqz
      if  ;; label = @2
        local.get 0
        f64.const 0x0p+0 (;=0;)
        f64.eq
        if  ;; label = @3
          local.get 1
          i32.const 0
          i32.store
          local.get 0
          return
        end
        local.get 0
        f64.const 0x1p+64 (;=1.84467e+19;)
        f64.mul
        local.get 1
        call 51
        local.get 1
        local.get 1
        i32.load
        i32.const -64
        i32.add
        i32.store
        return
      end
      local.get 1
      local.get 2
      i32.const -1022
      i32.add
      i32.store
      local.get 3
      i64.const -9218868437227405313
      i64.and
      i64.const 4602678819172646912
      i64.or
      f64.reinterpret_i64
    else
      local.get 0
    end)
  (table (;0;) 5 5 funcref)
  (memory (;0;) 2)
  (global (;0;) (mut i32) (i32.const 71040))
  (export "memory" (memory 0))
  (export "_start" (func 8))
  (elem (;0;) (i32.const 1) 42 34 30 44)
  (data (;0;) (i32.const 1024) "tmp <= 10.0\00polybench-c-3.2/utilities/polybench.c\00polybench_flush_cache\00%0.6f\0a\00Error return from gettimeofday: %d\00[PolyBench] posix_memalign: cannot allocate memory\00%0.2lf \00Assertion failed: %s (%s: %s: %d)\0a\008\0e\00\00Success\00Illegal byte sequence\00Domain error\00Result not representable\00Not a tty\00Permission denied\00Operation not permitted\00No such file or directory\00No such process\00File exists\00Value too large for data type\00No space left on device\00Out of memory\00Resource busy\00Interrupted system call\00Resource temporarily unavailable\00Invalid seek\00Cross-device link\00Read-only file system\00Directory not empty\00Connection reset by peer\00Operation timed out\00Connection refused\00Host is unreachable\00Address in use\00Broken pipe\00I/O error\00No such device or address\00No such device\00Not a directory\00Is a directory\00Text file busy\00Exec format error\00Invalid argument\00Argument list too long\00Symbolic link loop\00Filename too long\00Too many open files in system\00No file descriptors available\00Bad file descriptor\00No child process\00Bad address\00File too large\00Too many links\00No locks available\00Resource deadlock would occur\00State not recoverable\00Previous owner died\00Operation canceled\00Function not implemented\00No message of desired type\00Identifier removed\00Link has been severed\00Protocol error\00Bad message\00Not a socket\00Destination address required\00Message too large\00Protocol wrong type for socket\00Protocol not available\00Protocol not supported\00Not supported\00Address family not supported by protocol\00Address not available\00Network is down\00Network unreachable\00Connection reset by network\00Connection aborted\00No buffer space available\00Socket is connected\00Socket not connected\00Operation already in progress\00Operation in progress\00Stale file handle\00Quota exceeded\00Multihop attempted\00Capabilities insufficient")
  (data (;1;) (i32.const 2802) "u\02N\00\d6\01\e2\04\b9\04\18\01\8e\05\ed\02\16\04\f2\00\97\03\01\038\05\af\01\82\01O\03/\04\1e\00\d4\05\a2\00\12\03\1e\03\c2\01\de\03\08\00\ac\05\00\01d\02\f1\01e\054\02\8c\02\cf\02-\03L\04\e3\05\9f\02\f8\04\1c\05\08\05\b1\02K\05\15\02x\00R\02<\03\f1\03\e4\00\c3\03}\04\cc\00\aa\03y\05$\02n\01m\03\22\04\ab\04D\00\fb\01\ae\00\83\03`\00\e5\01\07\04\94\04^\04+\00X\019\01\92\00\c2\05\9b\01C\02F\01\f6\05-+   0X0x\00(null)\00\00\00\00\00\00\19\00\0a\00\19\19\19\00\00\00\00\05\00\00\00\00\00\00\09\00\00\00\00\0b\00\00\00\00\00\00\00\00\19\00\11\0a\19\19\19\03\0a\07\00\01\1b\09\0b\18\00\00\09\06\0b\00\00\0b\00\06\19\00\00\00\19\19\19")
  (data (;2;) (i32.const 3057) "\0e\00\00\00\00\00\00\00\00\19\00\0a\0d\19\19\19\00\0d\00\00\02\00\09\0e\00\00\00\09\00\0e\00\00\0e")
  (data (;3;) (i32.const 3115) "\0c")
  (data (;4;) (i32.const 3127) "\13\00\00\00\00\13\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c")
  (data (;5;) (i32.const 3173) "\10")
  (data (;6;) (i32.const 3185) "\0f\00\00\00\04\0f\00\00\00\00\09\10\00\00\00\00\00\10\00\00\10")
  (data (;7;) (i32.const 3231) "\12")
  (data (;8;) (i32.const 3243) "\11\00\00\00\00\11\00\00\00\00\09\12\00\00\00\00\00\12\00\00\12\00\00\1a\00\00\00\1a\1a\1a")
  (data (;9;) (i32.const 3298) "\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\09")
  (data (;10;) (i32.const 3347) "\14")
  (data (;11;) (i32.const 3359) "\17\00\00\00\00\17\00\00\00\00\09\14\00\00\00\00\00\14\00\00\14")
  (data (;12;) (i32.const 3405) "\16")
  (data (;13;) (i32.const 3417) "\15\00\00\00\00\15\00\00\00\00\09\16\00\00\00\00\00\16\00\00\16\00\00Support for formatting long double values is currently disabled.\0aTo enable it, add -lc-printscan-long-double to the link command.\0a")
  (data (;14;) (i32.const 3584) "0123456789ABCDEF-0X+0X 0X-0x+0x 0x\00inf\00INF\00nan\00NAN\00.")
  (data (;15;) (i32.const 3640) "\05")
  (data (;16;) (i32.const 3652) "\01")
  (data (;17;) (i32.const 3672) "\02\00\00\00\03\00\00\00<\11")
  (data (;18;) (i32.const 3696) "\02\00\00\00\00\00\00\00\ff\ff\ff\ff")
  (data (;19;) (i32.const 3752) "8\0e\00\00\00\00\00\00\05")
  (data (;20;) (i32.const 3772) "\01")
  (data (;21;) (i32.const 3792) "\04\00\00\00\03\00\00\00X\11\00\00\00\04")
  (data (;22;) (i32.const 3816) "\01\00\00\00\00\00\00\00\0a")
  (data (;23;) (i32.const 3872) "\b0\0e"))
