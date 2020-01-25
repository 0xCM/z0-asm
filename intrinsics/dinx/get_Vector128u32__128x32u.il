// Id := 100664278, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::get_Vector128u32()
// Vector128<uint> get_Vector128u32()
// AggressiveInlining
Vector128<uint> get_Vector128u32()
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: ldc.i4.s 32
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.CpuVector::vbroadcast<System.UInt32>(Z0.N128,System.UInt32)
    IL_000C: ret
}
