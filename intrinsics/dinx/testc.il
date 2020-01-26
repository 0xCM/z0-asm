// Id := 100664676, Name := Z0.bit Z0.dinx::testc(System.UInt64,System.UInt64)
// bit testc(ulong a, ulong b)
// AggressiveInlining
bit testc(ulong a, ulong b)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: ldarg.0
    IL_0006: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.CpuVector::vbroadcast<System.UInt64>(Z0.N128,System.UInt64)
    IL_000B: call Z0.N128 zfunc::get_n128()
    IL_0010: ldarg.1
    IL_0011: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.CpuVector::vbroadcast<System.UInt64>(Z0.N128,System.UInt64)
    IL_0016: call Z0.bit Z0.dinx::vtestc(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_001B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664677, Name := Z0.bit Z0.dinx::testc(System.UInt64)
// bit testc(ulong a)
// AggressiveInlining
bit testc(ulong a)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: ldarg.0
    IL_0006: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.CpuVector::vbroadcast<System.UInt64>(Z0.N128,System.UInt64)
    IL_000B: call Z0.bit Z0.dinx::vtestc(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0010: ret
}
------------------------------------------------------------------------------------------------------------------------
