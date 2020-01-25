// Id := 100664356, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vsllv(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
// Vector256<ulong> vsllv(Vector256<ulong> src, Vector256<ulong> counts)
// AggressiveInlining
Vector256<ulong> vsllv(Vector256<ulong> src, Vector256<ulong> counts)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> System.Runtime.Intrinsics.X86.Avx2::ShiftLeftLogicalVariable(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0007: ret
}
