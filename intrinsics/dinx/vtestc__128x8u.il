// Id := 100664661, Name := Z0.bit Z0.dinx::vtestc(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// bit vtestc(Vector128<byte> src)
// AggressiveInlining
bit vtestc(Vector128<byte> src)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldc.i4.0
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.VPattern::vones<System.Byte>(Z0.N128,System.Byte)
    IL_000C: call System.Boolean System.Runtime.Intrinsics.X86.Sse41::TestC(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0011: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0016: ret
}
