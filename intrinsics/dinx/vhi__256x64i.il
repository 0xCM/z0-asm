// Id := 100663711, Name := System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector256`1<System.Int64>)
// Vector128<long> vhi(Vector256<long> src)
// AggressiveInlining
Vector128<long> vhi(Vector256<long> src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Int64> System.Runtime.Intrinsics.X86.Avx::ExtractVector128(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Byte)
    IL_0007: ret
}
