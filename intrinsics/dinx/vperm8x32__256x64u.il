// Id := 100663880, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vperm8x32(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
// Vector256<ulong> vperm8x32(Vector256<ulong> src, Vector256<uint> spec)
// AggressiveInlining
Vector256<ulong> vperm8x32(Vector256<ulong> src, Vector256<uint> spec)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<System.UInt64>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::PermuteVar8x32(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<System.UInt32>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0011: ret
}
