// Id := 100664277, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::get_Vector128u64()
// Vector128<ulong> get_Vector128u64()
// AggressiveInlining
Vector128<ulong> get_Vector128u64()
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: ldc.i4.s 64
    IL_0007: conv.i8
    IL_0008: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.CpuVector::vbroadcast<System.UInt64>(Z0.N128,System.UInt64)
    IL_000D: ret
}
