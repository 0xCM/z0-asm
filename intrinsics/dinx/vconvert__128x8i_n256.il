// Id := 100664802, Name := System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector128`1<System.SByte>,Z0.N256,System.Int16)
// Vector256<Int16> vconvert(Vector128<sbyte> src, N256 w, Int16 t)
// AggressiveInlining
Vector256<Int16> vconvert(Vector128<sbyte> src, N256 w, Int16 t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Int16> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int16(System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0006: ret
}
