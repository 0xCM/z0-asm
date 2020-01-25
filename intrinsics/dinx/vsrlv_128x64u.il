// Id := 100664424, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vsrlv(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
// Vector128<ulong> vsrlv(Vector128<ulong> x, Vector128<ulong> counts)
// AggressiveInlining
Vector128<ulong> vsrlv(Vector128<ulong> x, Vector128<ulong> counts)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> System.Runtime.Intrinsics.X86.Avx2::ShiftRightLogicalVariable(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0007: ret
}
