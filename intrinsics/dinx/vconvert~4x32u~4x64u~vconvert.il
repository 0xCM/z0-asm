// Id := 100664742, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vconvert(Z0.Block128`1<System.UInt32>&,System.UInt64)
// Vector256<ulong> vconvert(in Block128<uint> src, ulong t)
// AggressiveInlining
Vector256<ulong> vconvert(in Block128<uint> src, ulong t)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32& Z0.Block128`1<System.UInt32>::get_Head()
    IL_0006: call System.UInt32* zfunc::constptr<System.UInt32>(System.UInt32&)
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int64(System.UInt32*)
    IL_0010: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<System.Int64>(System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_0015: ret
}
------------------------------------------------------------------------------------------------------------------------
