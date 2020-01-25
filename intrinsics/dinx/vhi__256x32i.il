// Id := 100663710, Name := System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector256`1<System.Int32>)
// Vector128<int> vhi(Vector256<int> src)
// AggressiveInlining
Vector128<int> vhi(Vector256<int> src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Int32> System.Runtime.Intrinsics.X86.Avx::ExtractVector128(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Byte)
    IL_0007: ret
}
