// Id := 100663741, Name := Z0.Pair`1<System.UInt64>& Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,Z0.Pair`1<System.UInt64>&)
// ref Pair<ulong> vlo(Vector256<ulong> src, ref Pair<ulong> dst)
// AggressiveInlining
ref Pair<ulong> vlo(Vector256<ulong> src, ref Pair<ulong> dst)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldc.i4.0
    IL_0003: call System.UInt64 System.Runtime.Intrinsics.Vector256::GetElement<System.UInt64>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Int32)
    IL_0008: stfld System.UInt64 Z0.Pair`1<System.UInt64>::A
    IL_000D: ldarg.1
    IL_000E: ldarg.0
    IL_000F: ldc.i4.1
    IL_0010: call System.UInt64 System.Runtime.Intrinsics.Vector256::GetElement<System.UInt64>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Int32)
    IL_0015: stfld System.UInt64 Z0.Pair`1<System.UInt64>::B
    IL_001A: ldarg.1
    IL_001B: ret
}
