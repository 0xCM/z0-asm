// Id := 100663783, Name := System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vmergelo(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<byte> vmergelo(Vector256<byte> x, Vector256<byte> y)
// AggressiveInlining
Vector256<byte> vmergelo(Vector256<byte> x, Vector256<byte> y)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4 216
    IL_0006: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vperm4x64(System.Runtime.Intrinsics.Vector256`1<System.Byte>,Z0.Perm4L)
    IL_000B: ldarg.1
    IL_000C: ldc.i4 216
    IL_0011: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vperm4x64(System.Runtime.Intrinsics.Vector256`1<System.Byte>,Z0.Perm4L)
    IL_0016: call System.Runtime.Intrinsics.Vector256`1<System.Byte> System.Runtime.Intrinsics.X86.Avx2::UnpackLow(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_001B: ret
}
