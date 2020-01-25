// Id := 100664719, Name := System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vconvert(Z0.Block128`1<System.SByte>&,Z0.N256,System.Int16)
// Vector256<Int16> vconvert(in Block128<sbyte> src, N256 w, Int16 t)
// AggressiveInlining
Vector256<Int16> vconvert(in Block128<sbyte> src, N256 w, Int16 t)
{
    IL_0000: ldarg.0
    IL_0001: call System.SByte& Z0.Block128`1<System.SByte>::get_Head()
    IL_0006: call System.SByte* zfunc::constptr<System.SByte>(System.SByte&)
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<System.Int16> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int16(System.SByte*)
    IL_0010: ret
}
