// Id := 100664660, Name := Z0.bit Z0.dinx::vtestc(System.Runtime.Intrinsics.Vector128`1<System.SByte>)
// bit vtestc(Vector128<sbyte> src)
// AggressiveInlining
bit vtestc(Vector128<sbyte> src)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldc.i4.0
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.VPattern::vones<System.SByte>(Z0.N128,System.SByte)
    IL_000C: call System.Boolean System.Runtime.Intrinsics.X86.Sse41::TestC(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0011: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0016: ret
}
