; ModuleID = '/home/reon/work/xilinx/cnnlite_ip/solution2/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define void @apatb_cnn_top_ir([28 x [28 x float]]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1" %x, float* noalias nocapture nonnull "fpga.decayed.dim.hint"="10" %y) local_unnamed_addr #0 {
entry:
  %x_copy = alloca [1 x [28 x [28 x float]]], align 512
  %y_copy = alloca [10 x float], align 512
  %0 = bitcast [28 x [28 x float]]* %x to [1 x [28 x [28 x float]]]*
  %1 = bitcast float* %y to [10 x float]*
  call fastcc void @copy_in([1 x [28 x [28 x float]]]* nonnull %0, [1 x [28 x [28 x float]]]* nonnull align 512 %x_copy, [10 x float]* nonnull %1, [10 x float]* nonnull align 512 %y_copy)
  %2 = getelementptr inbounds [1 x [28 x [28 x float]]], [1 x [28 x [28 x float]]]* %x_copy, i32 0, i32 0
  %3 = getelementptr inbounds [10 x float], [10 x float]* %y_copy, i32 0, i32 0
  call void @apatb_cnn_top_hw([28 x [28 x float]]* %2, float* %3)
  call void @copy_back([1 x [28 x [28 x float]]]* %0, [1 x [28 x [28 x float]]]* %x_copy, [10 x float]* %1, [10 x float]* %y_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([1 x [28 x [28 x float]]]* noalias readonly, [1 x [28 x [28 x float]]]* noalias align 512, [10 x float]* noalias readonly, [10 x float]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1a28a28f32([1 x [28 x [28 x float]]]* align 512 %1, [1 x [28 x [28 x float]]]* %0)
  call fastcc void @onebyonecpy_hls.p0a10f32([10 x float]* align 512 %3, [10 x float]* %2)
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
define internal fastcc void @copy_out([1 x [28 x [28 x float]]]* noalias, [1 x [28 x [28 x float]]]* noalias readonly align 512, [10 x float]* noalias, [10 x float]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1a28a28f32([1 x [28 x [28 x float]]]* %0, [1 x [28 x [28 x float]]]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a10f32([10 x float]* %2, [10 x float]* align 512 %3)
  ret void
}

declare void @apatb_cnn_top_hw([28 x [28 x float]]*, float*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([1 x [28 x [28 x float]]]* noalias, [1 x [28 x [28 x float]]]* noalias readonly align 512, [10 x float]* noalias, [10 x float]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a10f32([10 x float]* %2, [10 x float]* align 512 %3)
  ret void
}

define void @cnn_top_hw_stub_wrapper([28 x [28 x float]]*, float*) #4 {
entry:
  %2 = bitcast [28 x [28 x float]]* %0 to [1 x [28 x [28 x float]]]*
  %3 = bitcast float* %1 to [10 x float]*
  call void @copy_out([1 x [28 x [28 x float]]]* null, [1 x [28 x [28 x float]]]* %2, [10 x float]* null, [10 x float]* %3)
  %4 = bitcast [1 x [28 x [28 x float]]]* %2 to [28 x [28 x float]]*
  %5 = bitcast [10 x float]* %3 to float*
  call void @cnn_top_hw_stub([28 x [28 x float]]* %4, float* %5)
  call void @copy_in([1 x [28 x [28 x float]]]* null, [1 x [28 x [28 x float]]]* %2, [10 x float]* null, [10 x float]* %3)
  ret void
}

declare void @cnn_top_hw_stub([28 x [28 x float]]*, float*)

attributes #0 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="wrapper" }
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
