// Id := 100664275, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::get_Vector256u64()
// Vector256<ulong> get_Vector256u64()
// AggressiveInlining
Vector256<ulong> get_Vector256u64()
{
    IL_0000: call Z0.N256 zfunc::get_n256()
    IL_0005: ldc.i4.s 64
    IL_0007: conv.i8
    IL_0008: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.CpuVector::vbroadcast<System.UInt64>(Z0.N256,System.UInt64)
    IL_000D: ret
}
