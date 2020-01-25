// Id := 100663879, Name := System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vperm8x32(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
// Vector256<long> vperm8x32(Vector256<long> src, Vector256<uint> spec)
// AggressiveInlining
Vector256<long> vperm8x32(Vector256<long> src, Vector256<uint> spec)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<System.Int64>(System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::PermuteVar8x32(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.Int64> zfunc::v64i<System.UInt32>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0011: ret
}
