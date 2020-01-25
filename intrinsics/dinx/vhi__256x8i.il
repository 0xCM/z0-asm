// Id := 100663704, Name := System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector256`1<System.SByte>)
// Vector128<sbyte> vhi(Vector256<sbyte> src)
// AggressiveInlining
Vector128<sbyte> vhi(Vector256<sbyte> src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.SByte> System.Runtime.Intrinsics.X86.Avx::ExtractVector128(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Byte)
    IL_0007: ret
}
