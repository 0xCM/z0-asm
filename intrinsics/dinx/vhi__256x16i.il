// Id := 100663708, Name := System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector256`1<System.Int16>)
// Vector128<Int16> vhi(Vector256<Int16> src)
// AggressiveInlining
Vector128<Int16> vhi(Vector256<Int16> src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Int16> System.Runtime.Intrinsics.X86.Avx::ExtractVector128(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Byte)
    IL_0007: ret
}
