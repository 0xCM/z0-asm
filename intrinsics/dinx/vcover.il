// Id := 100663643, Name := System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vcover(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.Byte>&)
// Vector128<byte> vcover(Vector128<ushort> src, out Vector128<byte> dst)
// AggressiveInlining
Vector128<byte> vcover(Vector128<ushort> src, out Vector128<byte> dst)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldc.i4.8
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vsll(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Byte)
    IL_0008: ldarg.0
    IL_0009: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vor(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_000E: call System.Runtime.Intrinsics.Vector128`1<System.Byte> zfunc::v8u<System.UInt16>(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0013: dup
    IL_0014: stloc.0
    IL_0015: stobj System.Runtime.Intrinsics.Vector128`1<System.Byte>
    IL_001A: ldloc.0
    IL_001B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663644, Name := System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vcover(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.Byte>&)
// Vector256<byte> vcover(Vector256<ushort> src, out Vector256<byte> dst)
// AggressiveInlining
Vector256<byte> vcover(Vector256<ushort> src, out Vector256<byte> dst)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldc.i4.8
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vsll(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Byte)
    IL_0008: ldarg.0
    IL_0009: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vor(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_000E: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<System.UInt16>(System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0013: dup
    IL_0014: stloc.0
    IL_0015: stobj System.Runtime.Intrinsics.Vector256`1<System.Byte>
    IL_001A: ldloc.0
    IL_001B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663645, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vcover(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>&)
// Vector128<ushort> vcover(Vector128<uint> src, out Vector128<ushort> dst)
// AggressiveInlining
Vector128<ushort> vcover(Vector128<uint> src, out Vector128<ushort> dst)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldc.i4.s 16
    IL_0004: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vsll(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Byte)
    IL_0009: ldarg.0
    IL_000A: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vor(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_000F: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> zfunc::v16u<System.UInt32>(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0014: dup
    IL_0015: stloc.0
    IL_0016: stobj System.Runtime.Intrinsics.Vector128`1<System.UInt16>
    IL_001B: ldloc.0
    IL_001C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663646, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vcover(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>&)
// Vector256<ushort> vcover(Vector256<uint> src, out Vector256<ushort> dst)
// AggressiveInlining
Vector256<ushort> vcover(Vector256<uint> src, out Vector256<ushort> dst)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldc.i4.s 16
    IL_0004: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vsll(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Byte)
    IL_0009: ldarg.0
    IL_000A: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vor(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_000F: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<System.UInt32>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0014: dup
    IL_0015: stloc.0
    IL_0016: stobj System.Runtime.Intrinsics.Vector256`1<System.UInt16>
    IL_001B: ldloc.0
    IL_001C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663647, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vcover(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>&)
// Vector128<uint> vcover(Vector128<ulong> src, out Vector128<uint> dst)
// AggressiveInlining
Vector128<uint> vcover(Vector128<ulong> src, out Vector128<uint> dst)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldc.i4.s 32
    IL_0004: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vsll(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Byte)
    IL_0009: ldarg.0
    IL_000A: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vor(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_000F: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> zfunc::v32u<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0014: dup
    IL_0015: stloc.0
    IL_0016: stobj System.Runtime.Intrinsics.Vector128`1<System.UInt32>
    IL_001B: ldloc.0
    IL_001C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663648, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vcover(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>&)
// Vector256<uint> vcover(Vector256<ulong> src, out Vector256<uint> dst)
// AggressiveInlining
Vector256<uint> vcover(Vector256<ulong> src, out Vector256<uint> dst)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldc.i4.s 32
    IL_0004: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vsll(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Byte)
    IL_0009: ldarg.0
    IL_000A: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vor(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_000F: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<System.UInt64>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0014: dup
    IL_0015: stloc.0
    IL_0016: stobj System.Runtime.Intrinsics.Vector256`1<System.UInt32>
    IL_001B: ldloc.0
    IL_001C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663649, Name := System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vcover(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.Byte>&)
// Vector128<byte> vcover(Vector128<uint> src, out Vector128<byte> dst)
// AggressiveInlining
Vector128<byte> vcover(Vector128<uint> src, out Vector128<byte> dst)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldc.i4.s 16
    IL_0004: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vsll(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Byte)
    IL_0009: ldarg.0
    IL_000A: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_000F: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> zfunc::v16u<System.UInt32>(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0014: ldarg.1
    IL_0015: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vcover(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.Byte>&)
    IL_001A: dup
    IL_001B: stloc.0
    IL_001C: stobj System.Runtime.Intrinsics.Vector128`1<System.Byte>
    IL_0021: ldloc.0
    IL_0022: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663650, Name := System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vcover(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.Byte>&)
// Vector256<byte> vcover(Vector256<uint> src, out Vector256<byte> dst)
// AggressiveInlining
Vector256<byte> vcover(Vector256<uint> src, out Vector256<byte> dst)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldc.i4.s 16
    IL_0004: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vsll(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Byte)
    IL_0009: ldarg.0
    IL_000A: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_000F: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<System.UInt32>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0014: ldarg.1
    IL_0015: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vcover(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.Byte>&)
    IL_001A: dup
    IL_001B: stloc.0
    IL_001C: stobj System.Runtime.Intrinsics.Vector256`1<System.Byte>
    IL_0021: ldloc.0
    IL_0022: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663651, Name := System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vcover(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.Byte>&)
// Vector128<byte> vcover(Vector128<ulong> src, out Vector128<byte> dst)
// AggressiveInlining
Vector128<byte> vcover(Vector128<ulong> src, out Vector128<byte> dst)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldc.i4.s 32
    IL_0004: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vsll(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Byte)
    IL_0009: ldarg.0
    IL_000A: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_000F: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> zfunc::v32u<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0014: ldarg.1
    IL_0015: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vcover(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.Byte>&)
    IL_001A: dup
    IL_001B: stloc.0
    IL_001C: stobj System.Runtime.Intrinsics.Vector128`1<System.Byte>
    IL_0021: ldloc.0
    IL_0022: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663652, Name := System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vcover(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.Byte>&)
// Vector256<byte> vcover(Vector256<ulong> src, out Vector256<byte> dst)
// AggressiveInlining
Vector256<byte> vcover(Vector256<ulong> src, out Vector256<byte> dst)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldc.i4.s 32
    IL_0004: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vsll(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Byte)
    IL_0009: ldarg.0
    IL_000A: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_000F: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<System.UInt64>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0014: ldarg.1
    IL_0015: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vcover(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.Byte>&)
    IL_001A: dup
    IL_001B: stloc.0
    IL_001C: stobj System.Runtime.Intrinsics.Vector256`1<System.Byte>
    IL_0021: ldloc.0
    IL_0022: ret
}
------------------------------------------------------------------------------------------------------------------------
