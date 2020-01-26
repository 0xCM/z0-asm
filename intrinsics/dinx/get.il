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
------------------------------------------------------------------------------------------------------------------------
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
------------------------------------------------------------------------------------------------------------------------
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
------------------------------------------------------------------------------------------------------------------------
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
------------------------------------------------------------------------------------------------------------------------
