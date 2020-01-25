// Id := 100664746, Name := Z0.Vector512`1<System.UInt32> Z0.dinx::vconvert(Z0.Block256`1<System.UInt16>&,Z0.N512,System.UInt32)
// Vector512<uint> vconvert(in Block256<ushort> src, N512 w, uint t)
// AggressiveInlining
Vector512<uint> vconvert(in Block256<ushort> src, N512 w, uint t)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt16& Z0.Block256`1<System.UInt16>::get_Head()
    IL_0006: call System.UInt16* zfunc::constptr<System.UInt16>(System.UInt16&)
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int32(System.UInt16*)
    IL_0010: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<System.Int32>(System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_0015: ldarg.0
    IL_0016: call System.UInt16& Z0.Block256`1<System.UInt16>::get_Head()
    IL_001B: ldc.i4.8
    IL_001C: call System.UInt16* zfunc::constptr<System.UInt16>(System.UInt16&,System.Int32)
    IL_0021: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int32(System.UInt16*)
    IL_0026: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<System.Int32>(System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_002B: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>>::.ctor(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0030: call Z0.Vector512`1<System.UInt32> Z0.Vector512`1<System.UInt32>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>>)
    IL_0035: ret
}
