// Id := 100663767, Name := System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vmergehi(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.SByte>)
// Vector256<sbyte> vmergehi(Vector256<sbyte> x, Vector256<sbyte> y)
// AggressiveInlining
Vector256<sbyte> vmergehi(Vector256<sbyte> x, Vector256<sbyte> y)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4 216
    IL_0006: call System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vperm4x64(System.Runtime.Intrinsics.Vector256`1<System.SByte>,Z0.Perm4L)
    IL_000B: ldarg.1
    IL_000C: ldc.i4 216
    IL_0011: call System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vperm4x64(System.Runtime.Intrinsics.Vector256`1<System.SByte>,Z0.Perm4L)
    IL_0016: call System.Runtime.Intrinsics.Vector256`1<System.SByte> System.Runtime.Intrinsics.X86.Avx2::UnpackHigh(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.SByte>)
    IL_001B: ret
}
