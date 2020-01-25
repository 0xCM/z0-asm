// Id := 100664750, Name := Z0.Vector512`1<System.UInt64> Z0.dinx::vconvert(Z0.Block256`1<System.UInt32>&,Z0.N512,System.UInt64)
// Vector512<ulong> vconvert(in Block256<uint> src, N512 w, ulong t)
// AggressiveInlining
Vector512<ulong> vconvert(in Block256<uint> src, N512 w, ulong t)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32& Z0.Block256`1<System.UInt32>::get_Head()
    IL_0006: call System.UInt32* zfunc::constptr<System.UInt32>(System.UInt32&)
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int64(System.UInt32*)
    IL_0010: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<System.Int64>(System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_0015: ldarg.0
    IL_0016: call System.UInt32& Z0.Block256`1<System.UInt32>::get_Head()
    IL_001B: ldc.i4.4
    IL_001C: call System.UInt32* zfunc::constptr<System.UInt32>(System.UInt32&,System.Int32)
    IL_0021: call System.Runtime.Intrinsics.Vector256`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int64(System.UInt32*)
    IL_0026: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<System.Int64>(System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_002B: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>>::.ctor(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0030: call Z0.Vector512`1<System.UInt64> Z0.Vector512`1<System.UInt64>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>>)
    IL_0035: ret
}
