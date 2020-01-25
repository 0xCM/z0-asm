// Id := 100663706, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
// Vector128<ulong> vhi(Vector256<ulong> src)
// AggressiveInlining
Vector128<ulong> vhi(Vector256<ulong> src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> System.Runtime.Intrinsics.X86.Avx::ExtractVector128(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Byte)
    IL_0007: ret
}
