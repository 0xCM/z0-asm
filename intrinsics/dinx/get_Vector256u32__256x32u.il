// Id := 100664276, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::get_Vector256u32()
// Vector256<uint> get_Vector256u32()
// AggressiveInlining
Vector256<uint> get_Vector256u32()
{
    IL_0000: call Z0.N256 zfunc::get_n256()
    IL_0005: ldc.i4.s 32
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.CpuVector::vbroadcast<System.UInt32>(Z0.N256,System.UInt32)
    IL_000C: ret
}
