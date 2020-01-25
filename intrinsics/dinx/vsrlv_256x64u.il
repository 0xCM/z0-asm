// Id := 100664432, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vsrlv(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
// Vector256<ulong> vsrlv(Vector256<ulong> x, Vector256<ulong> counts)
// AggressiveInlining
Vector256<ulong> vsrlv(Vector256<ulong> x, Vector256<ulong> counts)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> System.Runtime.Intrinsics.X86.Avx2::ShiftRightLogicalVariable(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0007: ret
}
