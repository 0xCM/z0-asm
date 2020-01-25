// Id := 100664348, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vsllv(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
// Vector128<ulong> vsllv(Vector128<ulong> src, Vector128<ulong> counts)
// AggressiveInlining
Vector128<ulong> vsllv(Vector128<ulong> src, Vector128<ulong> counts)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> System.Runtime.Intrinsics.X86.Avx2::ShiftLeftLogicalVariable(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0007: ret
}
