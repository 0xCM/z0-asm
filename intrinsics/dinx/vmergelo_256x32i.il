// Id := 100663787, Name := System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vmergelo(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
// Vector256<int> vmergelo(Vector256<int> x, Vector256<int> y)
// AggressiveInlining
Vector256<int> vmergelo(Vector256<int> x, Vector256<int> y)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4 216
    IL_0006: call System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vperm4x64(System.Runtime.Intrinsics.Vector256`1<System.Int32>,Z0.Perm4L)
    IL_000B: ldarg.1
    IL_000C: ldc.i4 216
    IL_0011: call System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vperm4x64(System.Runtime.Intrinsics.Vector256`1<System.Int32>,Z0.Perm4L)
    IL_0016: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::UnpackLow(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_001B: ret
}
