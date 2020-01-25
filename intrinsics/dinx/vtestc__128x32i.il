// Id := 100664663, Name := Z0.bit Z0.dinx::vtestc(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
// bit vtestc(Vector128<int> src)
// AggressiveInlining
bit vtestc(Vector128<int> src)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldc.i4.0
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.VPattern::vones<System.Int32>(Z0.N128,System.Int32)
    IL_000C: call System.Boolean System.Runtime.Intrinsics.X86.Sse41::TestC(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0011: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0016: ret
}
