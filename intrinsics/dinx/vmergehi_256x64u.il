// Id := 100663773, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vmergehi(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
// Vector256<ulong> vmergehi(Vector256<ulong> x, Vector256<ulong> y)
// AggressiveInlining
Vector256<ulong> vmergehi(Vector256<ulong> x, Vector256<ulong> y)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4 216
    IL_0006: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vperm4x64(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,Z0.Perm4L)
    IL_000B: ldarg.1
    IL_000C: ldc.i4 216
    IL_0011: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vperm4x64(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,Z0.Perm4L)
    IL_0016: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> System.Runtime.Intrinsics.X86.Avx2::UnpackHigh(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_001B: ret
}
