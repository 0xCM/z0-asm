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
