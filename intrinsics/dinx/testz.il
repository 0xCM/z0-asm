// Z0.bit Z0.dinx::testz(System.UInt64,System.UInt64)
// bit testz(ulong a, ulong b)
// AggressiveInlining
bit testz(ulong a, ulong b)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: ldarg.0
    IL_0006: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.CpuVector::vbroadcast<System.UInt64>(Z0.N128,System.UInt64)
    IL_000B: call Z0.N128 zfunc::get_n128()
    IL_0010: ldarg.1
    IL_0011: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.CpuVector::vbroadcast<System.UInt64>(Z0.N128,System.UInt64)
    IL_0016: call Z0.bit Z0.dinx::vtestz(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_001B: ret
}
------------------------------------------------------------------------------------------------------------------------
