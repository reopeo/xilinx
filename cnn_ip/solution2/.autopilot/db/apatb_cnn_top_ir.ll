; ModuleID = '/home/reon/work/xilinx/cnn_ip/solution2/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_cnn_top_ir([28 x [28 x float]]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1" %x, [1 x [3 x [3 x float]]]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="4" %weight0, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="4" %bias0, [4 x [3 x [3 x float]]]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="8" %weight1, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="8" %bias1, [392 x float]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="32" %weight2, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="32" %bias2, [32 x float]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="10" %weight3, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="10" %bias3, float* noalias nocapture nonnull "fpga.decayed.dim.hint"="10" %y) local_unnamed_addr #0 {
entry:
  %x_copy = alloca [1 x [28 x [28 x float]]], align 512
  %weight0_copy = alloca [4 x [1 x [3 x [3 x float]]]], align 512
  %bias0_copy = alloca [4 x float], align 512
  %weight1_copy = alloca [8 x [4 x [3 x [3 x float]]]], align 512
  %bias1_copy = alloca [8 x float], align 512
  %malloccall = tail call i8* @malloc(i64 50176)
  %weight2_copy = bitcast i8* %malloccall to [32 x [392 x float]]*
  %bias2_copy = alloca [32 x float], align 512
  %weight3_copy = alloca [10 x [32 x float]], align 512
  %bias3_copy = alloca [10 x float], align 512
  %y_copy = alloca [10 x float], align 512
  %0 = bitcast [28 x [28 x float]]* %x to [1 x [28 x [28 x float]]]*
  %1 = bitcast [1 x [3 x [3 x float]]]* %weight0 to [4 x [1 x [3 x [3 x float]]]]*
  %2 = bitcast float* %bias0 to [4 x float]*
  %3 = bitcast [4 x [3 x [3 x float]]]* %weight1 to [8 x [4 x [3 x [3 x float]]]]*
  %4 = bitcast float* %bias1 to [8 x float]*
  %5 = bitcast [392 x float]* %weight2 to [32 x [392 x float]]*
  %6 = bitcast float* %bias2 to [32 x float]*
  %7 = bitcast [32 x float]* %weight3 to [10 x [32 x float]]*
  %8 = bitcast float* %bias3 to [10 x float]*
  %9 = bitcast float* %y to [10 x float]*
  call fastcc void @copy_in([1 x [28 x [28 x float]]]* nonnull %0, [1 x [28 x [28 x float]]]* nonnull align 512 %x_copy, [4 x [1 x [3 x [3 x float]]]]* nonnull %1, [4 x [1 x [3 x [3 x float]]]]* nonnull align 512 %weight0_copy, [4 x float]* nonnull %2, [4 x float]* nonnull align 512 %bias0_copy, [8 x [4 x [3 x [3 x float]]]]* nonnull %3, [8 x [4 x [3 x [3 x float]]]]* nonnull align 512 %weight1_copy, [8 x float]* nonnull %4, [8 x float]* nonnull align 512 %bias1_copy, [32 x [392 x float]]* nonnull %5, [32 x [392 x float]]* %weight2_copy, [32 x float]* nonnull %6, [32 x float]* nonnull align 512 %bias2_copy, [10 x [32 x float]]* nonnull %7, [10 x [32 x float]]* nonnull align 512 %weight3_copy, [10 x float]* nonnull %8, [10 x float]* nonnull align 512 %bias3_copy, [10 x float]* nonnull %9, [10 x float]* nonnull align 512 %y_copy)
  %10 = getelementptr inbounds [1 x [28 x [28 x float]]], [1 x [28 x [28 x float]]]* %x_copy, i32 0, i32 0
  %11 = getelementptr inbounds [4 x [1 x [3 x [3 x float]]]], [4 x [1 x [3 x [3 x float]]]]* %weight0_copy, i32 0, i32 0
  %12 = getelementptr inbounds [4 x float], [4 x float]* %bias0_copy, i32 0, i32 0
  %13 = getelementptr inbounds [8 x [4 x [3 x [3 x float]]]], [8 x [4 x [3 x [3 x float]]]]* %weight1_copy, i32 0, i32 0
  %14 = getelementptr inbounds [8 x float], [8 x float]* %bias1_copy, i32 0, i32 0
  %15 = getelementptr inbounds [32 x [392 x float]], [32 x [392 x float]]* %weight2_copy, i32 0, i32 0
  %16 = getelementptr inbounds [32 x float], [32 x float]* %bias2_copy, i32 0, i32 0
  %17 = getelementptr inbounds [10 x [32 x float]], [10 x [32 x float]]* %weight3_copy, i32 0, i32 0
  %18 = getelementptr inbounds [10 x float], [10 x float]* %bias3_copy, i32 0, i32 0
  %19 = getelementptr inbounds [10 x float], [10 x float]* %y_copy, i32 0, i32 0
  call void @apatb_cnn_top_hw([28 x [28 x float]]* %10, [1 x [3 x [3 x float]]]* %11, float* %12, [4 x [3 x [3 x float]]]* %13, float* %14, [392 x float]* %15, float* %16, [32 x float]* %17, float* %18, float* %19)
  call void @copy_back([1 x [28 x [28 x float]]]* %0, [1 x [28 x [28 x float]]]* %x_copy, [4 x [1 x [3 x [3 x float]]]]* %1, [4 x [1 x [3 x [3 x float]]]]* %weight0_copy, [4 x float]* %2, [4 x float]* %bias0_copy, [8 x [4 x [3 x [3 x float]]]]* %3, [8 x [4 x [3 x [3 x float]]]]* %weight1_copy, [8 x float]* %4, [8 x float]* %bias1_copy, [32 x [392 x float]]* %5, [32 x [392 x float]]* %weight2_copy, [32 x float]* %6, [32 x float]* %bias2_copy, [10 x [32 x float]]* %7, [10 x [32 x float]]* %weight3_copy, [10 x float]* %8, [10 x float]* %bias3_copy, [10 x float]* %9, [10 x float]* %y_copy)
  tail call void @free(i8* %malloccall)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([1 x [28 x [28 x float]]]* noalias readonly, [1 x [28 x [28 x float]]]* noalias align 512, [4 x [1 x [3 x [3 x float]]]]* noalias readonly, [4 x [1 x [3 x [3 x float]]]]* noalias align 512, [4 x float]* noalias readonly, [4 x float]* noalias align 512, [8 x [4 x [3 x [3 x float]]]]* noalias readonly, [8 x [4 x [3 x [3 x float]]]]* noalias align 512, [8 x float]* noalias readonly, [8 x float]* noalias align 512, [32 x [392 x float]]* noalias readonly, [32 x [392 x float]]* noalias, [32 x float]* noalias readonly, [32 x float]* noalias align 512, [10 x [32 x float]]* noalias readonly, [10 x [32 x float]]* noalias align 512, [10 x float]* noalias readonly, [10 x float]* noalias align 512, [10 x float]* noalias readonly, [10 x float]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1a28a28f32([1 x [28 x [28 x float]]]* align 512 %1, [1 x [28 x [28 x float]]]* %0)
  call fastcc void @onebyonecpy_hls.p0a4a1a3a3f32([4 x [1 x [3 x [3 x float]]]]* align 512 %3, [4 x [1 x [3 x [3 x float]]]]* %2)
  call fastcc void @onebyonecpy_hls.p0a4f32([4 x float]* align 512 %5, [4 x float]* %4)
  call fastcc void @onebyonecpy_hls.p0a8a4a3a3f32([8 x [4 x [3 x [3 x float]]]]* align 512 %7, [8 x [4 x [3 x [3 x float]]]]* %6)
  call fastcc void @onebyonecpy_hls.p0a8f32([8 x float]* align 512 %9, [8 x float]* %8)
  call fastcc void @onebyonecpy_hls.p0a32a392f32([32 x [392 x float]]* %11, [32 x [392 x float]]* %10)
  call fastcc void @onebyonecpy_hls.p0a32f32([32 x float]* align 512 %13, [32 x float]* %12)
  call fastcc void @onebyonecpy_hls.p0a10a32f32([10 x [32 x float]]* align 512 %15, [10 x [32 x float]]* %14)
  call fastcc void @onebyonecpy_hls.p0a10f32([10 x float]* align 512 %17, [10 x float]* %16)
  call fastcc void @onebyonecpy_hls.p0a10f32([10 x float]* align 512 %19, [10 x float]* %18)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a1a28a28f32([1 x [28 x [28 x float]]]* noalias align 512, [1 x [28 x [28 x float]]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [1 x [28 x [28 x float]]]* %0, null
  %3 = icmp eq [1 x [28 x [28 x float]]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %for.loop

for.loop:                                         ; preds = %entry
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2.split, %for.loop
  %for.loop.idx318 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2.split ]
  br label %for.loop8

for.loop8:                                        ; preds = %for.loop8, %for.loop2
  %for.loop.idx917 = phi i64 [ 0, %for.loop2 ], [ %for.loop.idx9.next, %for.loop8 ]
  %dst.addr1115 = getelementptr [1 x [28 x [28 x float]]], [1 x [28 x [28 x float]]]* %0, i64 0, i64 0, i64 %for.loop.idx318, i64 %for.loop.idx917
  %src.addr1216 = getelementptr [1 x [28 x [28 x float]]], [1 x [28 x [28 x float]]]* %1, i64 0, i64 0, i64 %for.loop.idx318, i64 %for.loop.idx917
  %5 = load float, float* %src.addr1216, align 4
  store float %5, float* %dst.addr1115, align 4
  %for.loop.idx9.next = add nuw nsw i64 %for.loop.idx917, 1
  %exitcond = icmp ne i64 %for.loop.idx9.next, 28
  br i1 %exitcond, label %for.loop8, label %for.loop2.split

for.loop2.split:                                  ; preds = %for.loop8
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx318, 1
  %exitcond20 = icmp ne i64 %for.loop.idx3.next, 28
  br i1 %exitcond20, label %for.loop2, label %ret

ret:                                              ; preds = %for.loop2.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a4a1a3a3f32([4 x [1 x [3 x [3 x float]]]]* noalias align 512, [4 x [1 x [3 x [3 x float]]]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [4 x [1 x [3 x [3 x float]]]]* %0, null
  %3 = icmp eq [4 x [1 x [3 x [3 x float]]]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop.split, %copy
  %for.loop.idx28 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop8

for.loop8:                                        ; preds = %for.loop8.split, %for.loop2
  %for.loop.idx926 = phi i64 [ 0, %for.loop2 ], [ %for.loop.idx9.next, %for.loop8.split ]
  br label %for.loop14

for.loop14:                                       ; preds = %for.loop14, %for.loop8
  %for.loop.idx1525 = phi i64 [ 0, %for.loop8 ], [ %for.loop.idx15.next, %for.loop14 ]
  %dst.addr1723 = getelementptr [4 x [1 x [3 x [3 x float]]]], [4 x [1 x [3 x [3 x float]]]]* %0, i64 0, i64 %for.loop.idx28, i64 0, i64 %for.loop.idx926, i64 %for.loop.idx1525
  %src.addr1824 = getelementptr [4 x [1 x [3 x [3 x float]]]], [4 x [1 x [3 x [3 x float]]]]* %1, i64 0, i64 %for.loop.idx28, i64 0, i64 %for.loop.idx926, i64 %for.loop.idx1525
  %5 = load float, float* %src.addr1824, align 4
  store float %5, float* %dst.addr1723, align 4
  %for.loop.idx15.next = add nuw nsw i64 %for.loop.idx1525, 1
  %exitcond = icmp ne i64 %for.loop.idx15.next, 3
  br i1 %exitcond, label %for.loop14, label %for.loop8.split

for.loop8.split:                                  ; preds = %for.loop14
  %for.loop.idx9.next = add nuw nsw i64 %for.loop.idx926, 1
  %exitcond29 = icmp ne i64 %for.loop.idx9.next, 3
  br i1 %exitcond29, label %for.loop8, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop8.split
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx28, 1
  %exitcond30 = icmp ne i64 %for.loop.idx.next, 4
  br i1 %exitcond30, label %for.loop2, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a4f32([4 x float]* noalias align 512, [4 x float]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [4 x float]* %0, null
  %3 = icmp eq [4 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [4 x float], [4 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [4 x float], [4 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 4
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a8a4a3a3f32([8 x [4 x [3 x [3 x float]]]]* noalias align 512, [8 x [4 x [3 x [3 x float]]]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [8 x [4 x [3 x [3 x float]]]]* %0, null
  %3 = icmp eq [8 x [4 x [3 x [3 x float]]]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx28 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2.split, %for.loop
  %for.loop.idx327 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2.split ]
  br label %for.loop8

for.loop8:                                        ; preds = %for.loop8.split, %for.loop2
  %for.loop.idx926 = phi i64 [ 0, %for.loop2 ], [ %for.loop.idx9.next, %for.loop8.split ]
  br label %for.loop14

for.loop14:                                       ; preds = %for.loop14, %for.loop8
  %for.loop.idx1525 = phi i64 [ 0, %for.loop8 ], [ %for.loop.idx15.next, %for.loop14 ]
  %dst.addr1723 = getelementptr [8 x [4 x [3 x [3 x float]]]], [8 x [4 x [3 x [3 x float]]]]* %0, i64 0, i64 %for.loop.idx28, i64 %for.loop.idx327, i64 %for.loop.idx926, i64 %for.loop.idx1525
  %src.addr1824 = getelementptr [8 x [4 x [3 x [3 x float]]]], [8 x [4 x [3 x [3 x float]]]]* %1, i64 0, i64 %for.loop.idx28, i64 %for.loop.idx327, i64 %for.loop.idx926, i64 %for.loop.idx1525
  %5 = load float, float* %src.addr1824, align 4
  store float %5, float* %dst.addr1723, align 4
  %for.loop.idx15.next = add nuw nsw i64 %for.loop.idx1525, 1
  %exitcond = icmp ne i64 %for.loop.idx15.next, 3
  br i1 %exitcond, label %for.loop14, label %for.loop8.split

for.loop8.split:                                  ; preds = %for.loop14
  %for.loop.idx9.next = add nuw nsw i64 %for.loop.idx926, 1
  %exitcond29 = icmp ne i64 %for.loop.idx9.next, 3
  br i1 %exitcond29, label %for.loop8, label %for.loop2.split

for.loop2.split:                                  ; preds = %for.loop8.split
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx327, 1
  %exitcond30 = icmp ne i64 %for.loop.idx3.next, 4
  br i1 %exitcond30, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2.split
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx28, 1
  %exitcond31 = icmp ne i64 %for.loop.idx.next, 8
  br i1 %exitcond31, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a8f32([8 x float]* noalias align 512, [8 x float]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [8 x float]* %0, null
  %3 = icmp eq [8 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [8 x float], [8 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [8 x float], [8 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 8
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a32a392f32([32 x [392 x float]]* noalias, [32 x [392 x float]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [32 x [392 x float]]* %0, null
  %3 = icmp eq [32 x [392 x float]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx10 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx39 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %dst.addr57 = getelementptr [32 x [392 x float]], [32 x [392 x float]]* %0, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %src.addr68 = getelementptr [32 x [392 x float]], [32 x [392 x float]]* %1, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %5 = load float, float* %src.addr68, align 4
  store float %5, float* %dst.addr57, align 4
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx39, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 392
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx10, 1
  %exitcond11 = icmp ne i64 %for.loop.idx.next, 32
  br i1 %exitcond11, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a32f32([32 x float]* noalias align 512, [32 x float]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [32 x float]* %0, null
  %3 = icmp eq [32 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [32 x float], [32 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [32 x float], [32 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 32
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a10a32f32([10 x [32 x float]]* noalias align 512, [10 x [32 x float]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [10 x [32 x float]]* %0, null
  %3 = icmp eq [10 x [32 x float]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx10 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx39 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %dst.addr57 = getelementptr [10 x [32 x float]], [10 x [32 x float]]* %0, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %src.addr68 = getelementptr [10 x [32 x float]], [10 x [32 x float]]* %1, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %5 = load float, float* %src.addr68, align 4
  store float %5, float* %dst.addr57, align 4
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx39, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 32
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx10, 1
  %exitcond11 = icmp ne i64 %for.loop.idx.next, 10
  br i1 %exitcond11, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a10f32([10 x float]* noalias align 512, [10 x float]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [10 x float]* %0, null
  %3 = icmp eq [10 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [10 x float], [10 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [10 x float], [10 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 10
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([1 x [28 x [28 x float]]]* noalias, [1 x [28 x [28 x float]]]* noalias readonly align 512, [4 x [1 x [3 x [3 x float]]]]* noalias, [4 x [1 x [3 x [3 x float]]]]* noalias readonly align 512, [4 x float]* noalias, [4 x float]* noalias readonly align 512, [8 x [4 x [3 x [3 x float]]]]* noalias, [8 x [4 x [3 x [3 x float]]]]* noalias readonly align 512, [8 x float]* noalias, [8 x float]* noalias readonly align 512, [32 x [392 x float]]* noalias, [32 x [392 x float]]* noalias readonly, [32 x float]* noalias, [32 x float]* noalias readonly align 512, [10 x [32 x float]]* noalias, [10 x [32 x float]]* noalias readonly align 512, [10 x float]* noalias, [10 x float]* noalias readonly align 512, [10 x float]* noalias, [10 x float]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1a28a28f32([1 x [28 x [28 x float]]]* %0, [1 x [28 x [28 x float]]]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a4a1a3a3f32([4 x [1 x [3 x [3 x float]]]]* %2, [4 x [1 x [3 x [3 x float]]]]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a4f32([4 x float]* %4, [4 x float]* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0a8a4a3a3f32([8 x [4 x [3 x [3 x float]]]]* %6, [8 x [4 x [3 x [3 x float]]]]* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0a8f32([8 x float]* %8, [8 x float]* align 512 %9)
  call fastcc void @onebyonecpy_hls.p0a32a392f32([32 x [392 x float]]* %10, [32 x [392 x float]]* %11)
  call fastcc void @onebyonecpy_hls.p0a32f32([32 x float]* %12, [32 x float]* align 512 %13)
  call fastcc void @onebyonecpy_hls.p0a10a32f32([10 x [32 x float]]* %14, [10 x [32 x float]]* align 512 %15)
  call fastcc void @onebyonecpy_hls.p0a10f32([10 x float]* %16, [10 x float]* align 512 %17)
  call fastcc void @onebyonecpy_hls.p0a10f32([10 x float]* %18, [10 x float]* align 512 %19)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_cnn_top_hw([28 x [28 x float]]*, [1 x [3 x [3 x float]]]*, float*, [4 x [3 x [3 x float]]]*, float*, [392 x float]*, float*, [32 x float]*, float*, float*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([1 x [28 x [28 x float]]]* noalias, [1 x [28 x [28 x float]]]* noalias readonly align 512, [4 x [1 x [3 x [3 x float]]]]* noalias, [4 x [1 x [3 x [3 x float]]]]* noalias readonly align 512, [4 x float]* noalias, [4 x float]* noalias readonly align 512, [8 x [4 x [3 x [3 x float]]]]* noalias, [8 x [4 x [3 x [3 x float]]]]* noalias readonly align 512, [8 x float]* noalias, [8 x float]* noalias readonly align 512, [32 x [392 x float]]* noalias, [32 x [392 x float]]* noalias readonly, [32 x float]* noalias, [32 x float]* noalias readonly align 512, [10 x [32 x float]]* noalias, [10 x [32 x float]]* noalias readonly align 512, [10 x float]* noalias, [10 x float]* noalias readonly align 512, [10 x float]* noalias, [10 x float]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a10f32([10 x float]* %18, [10 x float]* align 512 %19)
  ret void
}

define void @cnn_top_hw_stub_wrapper([28 x [28 x float]]*, [1 x [3 x [3 x float]]]*, float*, [4 x [3 x [3 x float]]]*, float*, [392 x float]*, float*, [32 x float]*, float*, float*) #4 {
entry:
  %10 = bitcast [28 x [28 x float]]* %0 to [1 x [28 x [28 x float]]]*
  %11 = bitcast [1 x [3 x [3 x float]]]* %1 to [4 x [1 x [3 x [3 x float]]]]*
  %12 = bitcast float* %2 to [4 x float]*
  %13 = bitcast [4 x [3 x [3 x float]]]* %3 to [8 x [4 x [3 x [3 x float]]]]*
  %14 = bitcast float* %4 to [8 x float]*
  %15 = bitcast [392 x float]* %5 to [32 x [392 x float]]*
  %16 = bitcast float* %6 to [32 x float]*
  %17 = bitcast [32 x float]* %7 to [10 x [32 x float]]*
  %18 = bitcast float* %8 to [10 x float]*
  %19 = bitcast float* %9 to [10 x float]*
  call void @copy_out([1 x [28 x [28 x float]]]* null, [1 x [28 x [28 x float]]]* %10, [4 x [1 x [3 x [3 x float]]]]* null, [4 x [1 x [3 x [3 x float]]]]* %11, [4 x float]* null, [4 x float]* %12, [8 x [4 x [3 x [3 x float]]]]* null, [8 x [4 x [3 x [3 x float]]]]* %13, [8 x float]* null, [8 x float]* %14, [32 x [392 x float]]* null, [32 x [392 x float]]* %15, [32 x float]* null, [32 x float]* %16, [10 x [32 x float]]* null, [10 x [32 x float]]* %17, [10 x float]* null, [10 x float]* %18, [10 x float]* null, [10 x float]* %19)
  %20 = bitcast [1 x [28 x [28 x float]]]* %10 to [28 x [28 x float]]*
  %21 = bitcast [4 x [1 x [3 x [3 x float]]]]* %11 to [1 x [3 x [3 x float]]]*
  %22 = bitcast [4 x float]* %12 to float*
  %23 = bitcast [8 x [4 x [3 x [3 x float]]]]* %13 to [4 x [3 x [3 x float]]]*
  %24 = bitcast [8 x float]* %14 to float*
  %25 = bitcast [32 x [392 x float]]* %15 to [392 x float]*
  %26 = bitcast [32 x float]* %16 to float*
  %27 = bitcast [10 x [32 x float]]* %17 to [32 x float]*
  %28 = bitcast [10 x float]* %18 to float*
  %29 = bitcast [10 x float]* %19 to float*
  call void @cnn_top_hw_stub([28 x [28 x float]]* %20, [1 x [3 x [3 x float]]]* %21, float* %22, [4 x [3 x [3 x float]]]* %23, float* %24, [392 x float]* %25, float* %26, [32 x float]* %27, float* %28, float* %29)
  call void @copy_in([1 x [28 x [28 x float]]]* null, [1 x [28 x [28 x float]]]* %10, [4 x [1 x [3 x [3 x float]]]]* null, [4 x [1 x [3 x [3 x float]]]]* %11, [4 x float]* null, [4 x float]* %12, [8 x [4 x [3 x [3 x float]]]]* null, [8 x [4 x [3 x [3 x float]]]]* %13, [8 x float]* null, [8 x float]* %14, [32 x [392 x float]]* null, [32 x [392 x float]]* %15, [32 x float]* null, [32 x float]* %16, [10 x [32 x float]]* null, [10 x [32 x float]]* %17, [10 x float]* null, [10 x float]* %18, [10 x float]* null, [10 x float]* %19)
  ret void
}

declare void @cnn_top_hw_stub([28 x [28 x float]]*, [1 x [3 x [3 x float]]]*, float*, [4 x [3 x [3 x float]]]*, float*, [392 x float]*, float*, [32 x float]*, float*, float*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
