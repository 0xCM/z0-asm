// Id := 100664666, Name := Z0.bit Z0.dinx::vtestc(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
// bit vtestc(Vector128<ulong> src)
// AggressiveInlining
bit vtestc(Vector128<ulong> src)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldc.i4.0
    IL_0007: conv.i8
    IL_0008: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.VPattern::vones<System.UInt64>(Z0.N128,System.UInt64)
    IL_000D: call System.Boolean System.Runtime.Intrinsics.X86.Sse41::TestC(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0012: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0017: ret
}
