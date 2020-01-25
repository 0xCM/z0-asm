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
