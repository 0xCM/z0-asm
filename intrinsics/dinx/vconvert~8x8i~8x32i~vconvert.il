// Id := 100664718, Name := System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vconvert(Z0.Block64`1<System.SByte>&,Z0.N256,System.Int32)
// Vector256<int> vconvert(in Block64<sbyte> src, N256 w, int t)
// AggressiveInlining
Vector256<int> vconvert(in Block64<sbyte> src, N256 w, int t)
{
    IL_0000: ldarg.0
    IL_0001: call System.SByte& Z0.Block64`1<System.SByte>::get_Head()
    IL_0006: call System.SByte* zfunc::constptr<System.SByte>(System.SByte&)
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int32(System.SByte*)
    IL_0010: ret
}
------------------------------------------------------------------------------------------------------------------------
