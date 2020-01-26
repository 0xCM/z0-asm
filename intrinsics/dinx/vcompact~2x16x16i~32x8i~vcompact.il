// Id := 100664753, Name := System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>,Z0.N256,System.SByte)
// Vector256<sbyte> vcompact(Vector256<Int16> x, Vector256<Int16> y, N256 w, sbyte t)
// AggressiveInlining
Vector256<sbyte> vcompact(Vector256<Int16> x, Vector256<Int16> y, N256 w, sbyte t)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vpackss(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0007: ldc.i4 216
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vperm4x64(System.Runtime.Intrinsics.Vector256`1<System.SByte>,Z0.Perm4L)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
