// Id := 100664429, Name := System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vsrlv(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
// Vector256<int> vsrlv(Vector256<int> x, Vector256<int> counts)
// AggressiveInlining
Vector256<int> vsrlv(Vector256<int> x, Vector256<int> counts)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<System.Int32>(System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::ShiftRightLogicalVariable(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_000C: ret
}
