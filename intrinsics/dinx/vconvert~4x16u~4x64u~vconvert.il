// Id := 100664736, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vconvert(Z0.Block64`1<System.UInt16>&,Z0.N256,System.UInt64)
// Vector256<ulong> vconvert(in Block64<ushort> src, N256 w, ulong t)
// AggressiveInlining
Vector256<ulong> vconvert(in Block64<ushort> src, N256 w, ulong t)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt16& Z0.Block64`1<System.UInt16>::get_Head()
    IL_0006: call System.UInt16* zfunc::constptr<System.UInt16>(System.UInt16&)
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int64(System.UInt16*)
    IL_0010: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<System.Int64>(System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_0015: ret
}
------------------------------------------------------------------------------------------------------------------------
