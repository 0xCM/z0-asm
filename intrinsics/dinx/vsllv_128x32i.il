// Id := 100664345, Name := System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vsllv(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
// Vector128<int> vsllv(Vector128<int> src, Vector128<int> counts)
// AggressiveInlining
Vector128<int> vsllv(Vector128<int> src, Vector128<int> counts)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> zfunc::v32u<System.Int32>(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::ShiftLeftLogicalVariable(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_000C: ret
}
