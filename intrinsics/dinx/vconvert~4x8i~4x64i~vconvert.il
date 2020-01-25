// Id := 100664716, Name := System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vconvert(Z0.Block32`1<System.SByte>&,Z0.N256,System.Int64)
// Vector256<long> vconvert(in Block32<sbyte> src, N256 w, long t)
// AggressiveInlining
Vector256<long> vconvert(in Block32<sbyte> src, N256 w, long t)
{
    IL_0000: ldarg.0
    IL_0001: call System.SByte& Z0.Block32`1<System.SByte>::get_Head()
    IL_0006: call System.SByte* zfunc::constptr<System.SByte>(System.SByte&)
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int64(System.SByte*)
    IL_0010: ret
}
