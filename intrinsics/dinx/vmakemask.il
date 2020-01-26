// Id := 100663664, Name := System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vmakemask(System.UInt16)
// Vector128<byte> vmakemask(ushort src)
// AggressiveInlining
Vector128<byte> vmakemask(ushort src)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: ldarg.0
    IL_0006: ldc.i4.0
    IL_0007: call System.UInt64 Z0.dinx::maskpart(System.UInt32,System.Int32)
    IL_000C: ldarg.0
    IL_000D: ldc.i4.8
    IL_000E: call System.UInt64 Z0.dinx::maskpart(System.UInt32,System.Int32)
    IL_0013: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.CpuVector::vparts(Z0.N128,System.UInt64,System.UInt64)
    IL_0018: call System.Runtime.Intrinsics.Vector128`1<System.Byte> zfunc::v8u<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_001D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663665, Name := System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vmakemask(System.UInt32)
// Vector256<byte> vmakemask(uint src)
// AggressiveInlining
Vector256<byte> vmakemask(uint src)
{
    IL_0000: ldarg.0
    IL_0001: conv.u2
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vmakemask(System.UInt16)
    IL_0007: ldarg.0
    IL_0008: ldc.i4.s 16
    IL_000A: shr.un
    IL_000B: conv.u2
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vmakemask(System.UInt16)
    IL_0011: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vconcat(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0016: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663666, Name := System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vmakemask(System.UInt16,System.Byte)
// Vector128<byte> vmakemask(ushort src, byte index)
// AggressiveInlining
Vector128<byte> vmakemask(ushort src, byte index)
{
    IL_0000: ldc.i8 72340172838076673
    IL_0009: ldarg.1
    IL_000A: ldc.i4.s 63
    IL_000C: and
    IL_000D: shl
    IL_000E: stloc.0
    IL_000F: call Z0.N128 zfunc::get_n128()
    IL_0014: ldarg.0
    IL_0015: ldc.i4.0
    IL_0016: ldloc.0
    IL_0017: call System.UInt64 Z0.dinx::maskpart(System.UInt32,System.Int32,System.UInt64)
    IL_001C: ldarg.0
    IL_001D: ldc.i4.8
    IL_001E: ldloc.0
    IL_001F: call System.UInt64 Z0.dinx::maskpart(System.UInt32,System.Int32,System.UInt64)
    IL_0024: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.CpuVector::vparts(Z0.N128,System.UInt64,System.UInt64)
    IL_0029: call System.Runtime.Intrinsics.Vector128`1<System.Byte> zfunc::v8u<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_002E: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663667, Name := System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vmakemask(System.UInt32,System.Byte)
// Vector256<byte> vmakemask(uint src, byte index)
// AggressiveInlining
Vector256<byte> vmakemask(uint src, byte index)
{
    IL_0000: ldc.i8 72340172838076673
    IL_0009: ldarg.1
    IL_000A: ldc.i4.s 63
    IL_000C: and
    IL_000D: shl
    IL_000E: stloc.0
    IL_000F: call Z0.N128 zfunc::get_n128()
    IL_0014: ldarg.0
    IL_0015: ldc.i4.0
    IL_0016: ldloc.0
    IL_0017: call System.UInt64 Z0.dinx::maskpart(System.UInt32,System.Int32,System.UInt64)
    IL_001C: ldarg.0
    IL_001D: ldc.i4.8
    IL_001E: ldloc.0
    IL_001F: call System.UInt64 Z0.dinx::maskpart(System.UInt32,System.Int32,System.UInt64)
    IL_0024: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.CpuVector::vparts(Z0.N128,System.UInt64,System.UInt64)
    IL_0029: call System.Runtime.Intrinsics.Vector128`1<System.Byte> zfunc::v8u<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_002E: stloc.1
    IL_002F: call Z0.N128 zfunc::get_n128()
    IL_0034: ldarg.0
    IL_0035: ldc.i4.s 16
    IL_0037: ldloc.0
    IL_0038: call System.UInt64 Z0.dinx::maskpart(System.UInt32,System.Int32,System.UInt64)
    IL_003D: ldarg.0
    IL_003E: ldc.i4.s 24
    IL_0040: ldloc.0
    IL_0041: call System.UInt64 Z0.dinx::maskpart(System.UInt32,System.Int32,System.UInt64)
    IL_0046: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.CpuVector::vparts(Z0.N128,System.UInt64,System.UInt64)
    IL_004B: call System.Runtime.Intrinsics.Vector128`1<System.Byte> zfunc::v8u<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0050: stloc.2
    IL_0051: ldloc.1
    IL_0052: ldloc.2
    IL_0053: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vconcat(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0058: ret
}
------------------------------------------------------------------------------------------------------------------------
