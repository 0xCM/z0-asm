// Id := 100664664, Name := Z0.bit Z0.dinx::vtestc(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
// bit vtestc(Vector128<uint> src)
// AggressiveInlining
bit vtestc(Vector128<uint> src)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldc.i4.0
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.VPattern::vones<System.UInt32>(Z0.N128,System.UInt32)
    IL_000C: call System.Boolean System.Runtime.Intrinsics.X86.Sse41::TestC(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0011: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0016: ret
}
