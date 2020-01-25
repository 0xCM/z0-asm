// Id := 100664421, Name := System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vsrlv(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
// Vector128<int> vsrlv(Vector128<int> x, Vector128<int> counts)
// AggressiveInlining
Vector128<int> vsrlv(Vector128<int> x, Vector128<int> counts)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> zfunc::v32u<System.Int32>(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::ShiftRightLogicalVariable(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_000C: ret
}
