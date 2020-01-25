// Id := 100663786, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vmergelo(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
// Vector256<ushort> vmergelo(Vector256<ushort> x, Vector256<ushort> y)
// AggressiveInlining
Vector256<ushort> vmergelo(Vector256<ushort> x, Vector256<ushort> y)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4 216
    IL_0006: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vperm4x64(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,Z0.Perm4L)
    IL_000B: ldarg.1
    IL_000C: ldc.i4 216
    IL_0011: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vperm4x64(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,Z0.Perm4L)
    IL_0016: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> System.Runtime.Intrinsics.X86.Avx2::UnpackLow(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_001B: ret
}
