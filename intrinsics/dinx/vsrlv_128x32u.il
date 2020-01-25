// Id := 100664422, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vsrlv(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
// Vector128<uint> vsrlv(Vector128<uint> x, Vector128<uint> counts)
// AggressiveInlining
Vector128<uint> vsrlv(Vector128<uint> x, Vector128<uint> counts)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::ShiftRightLogicalVariable(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0007: ret
}
