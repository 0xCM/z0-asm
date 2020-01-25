// Id := 100664423, Name := System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vsrlv(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>)
// Vector128<long> vsrlv(Vector128<long> x, Vector128<long> counts)
// AggressiveInlining
Vector128<long> vsrlv(Vector128<long> x, Vector128<long> counts)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> zfunc::v64u<System.Int64>(System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::ShiftRightLogicalVariable(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_000C: ret
}
