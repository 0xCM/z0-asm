// System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vpart32x8x1(System.UInt32)
// Vector256<byte> vpart32x8x1(uint src)
// AggressiveInlining
Vector256<byte> vpart32x8x1(uint src)
{
    IL_0000: call Z0.N256 zfunc::get_n256()
    IL_0005: ldarg.0
    IL_0006: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.CpuVector::vbroadcast<System.UInt32>(Z0.N256,System.UInt32)
    IL_000B: stloc.0
    IL_000C: call Z0.N256 zfunc::get_n256()
    IL_0011: ldc.i4 -16843010
    IL_0016: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.CpuVector::vbroadcast<System.UInt32>(Z0.N256,System.UInt32)
    IL_001B: stloc.1
    IL_001C: ldloc.0
    IL_001D: ldloc.1
    IL_001E: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vand(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0023: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<System.UInt32>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0028: ret
}
------------------------------------------------------------------------------------------------------------------------
