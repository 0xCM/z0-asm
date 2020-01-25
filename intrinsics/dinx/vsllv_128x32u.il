// Id := 100664346, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vsllv(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
// Vector128<uint> vsllv(Vector128<uint> src, Vector128<uint> counts)
// AggressiveInlining
Vector128<uint> vsllv(Vector128<uint> src, Vector128<uint> counts)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::ShiftLeftLogicalVariable(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0007: ret
}
