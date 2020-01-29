// System.Byte Z0.Bits::bitclear(System.Byte,System.Byte,System.Byte)
// byte bitclear(byte src, byte index, byte count)
// AggressiveInlining
byte bitclear(byte src, byte index, byte count)
{
    IL_0000: ldc.i4 65535
    IL_0005: ldarg.2
    IL_0006: ldc.i4.1
    IL_0007: sub
    IL_0008: call System.UInt64 Z0.BitMask::lo64(System.Int32)
    IL_000D: conv.u4
    IL_000E: ldarg.1
    IL_000F: ldc.i4.s 31
    IL_0011: and
    IL_0012: shl
    IL_0013: xor
    IL_0014: stloc.0
    IL_0015: ldloc.0
    IL_0016: ldarg.0
    IL_0017: and
    IL_0018: conv.u1
    IL_0019: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.SByte Z0.Bits::bitclear(System.SByte,System.Byte,System.Byte)
// sbyte bitclear(sbyte src, byte index, byte count)
// AggressiveInlining
sbyte bitclear(sbyte src, byte index, byte count)
{
    IL_0000: ldc.i4 65535
    IL_0005: ldarg.2
    IL_0006: ldc.i4.1
    IL_0007: sub
    IL_0008: call System.UInt64 Z0.BitMask::lo64(System.Int32)
    IL_000D: conv.i4
    IL_000E: ldarg.1
    IL_000F: ldc.i4.s 31
    IL_0011: and
    IL_0012: shl
    IL_0013: xor
    IL_0014: stloc.0
    IL_0015: ldloc.0
    IL_0016: ldarg.0
    IL_0017: and
    IL_0018: conv.i1
    IL_0019: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt16 Z0.Bits::bitclear(System.UInt16,System.Byte,System.Byte)
// ushort bitclear(ushort src, byte index, byte count)
// AggressiveInlining
ushort bitclear(ushort src, byte index, byte count)
{
    IL_0000: ldc.i4 65535
    IL_0005: ldarg.2
    IL_0006: ldc.i4.1
    IL_0007: sub
    IL_0008: call System.UInt64 Z0.BitMask::lo64(System.Int32)
    IL_000D: conv.u4
    IL_000E: ldarg.1
    IL_000F: ldc.i4.s 31
    IL_0011: and
    IL_0012: shl
    IL_0013: xor
    IL_0014: stloc.0
    IL_0015: ldloc.0
    IL_0016: ldarg.0
    IL_0017: and
    IL_0018: conv.u2
    IL_0019: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Int16 Z0.Bits::bitclear(System.Int16,System.Byte,System.Byte)
// short bitclear(short src, byte index, byte count)
// AggressiveInlining
short bitclear(short src, byte index, byte count)
{
    IL_0000: ldc.i4 65535
    IL_0005: ldarg.2
    IL_0006: ldc.i4.1
    IL_0007: sub
    IL_0008: call System.UInt64 Z0.BitMask::lo64(System.Int32)
    IL_000D: conv.i4
    IL_000E: ldarg.1
    IL_000F: ldc.i4.s 31
    IL_0011: and
    IL_0012: shl
    IL_0013: xor
    IL_0014: stloc.0
    IL_0015: ldloc.0
    IL_0016: ldarg.0
    IL_0017: and
    IL_0018: conv.i2
    IL_0019: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.Bits::bitclear(System.UInt32,System.Byte,System.Byte)
// uint bitclear(uint src, byte index, byte count)
// AggressiveInlining
uint bitclear(uint src, byte index, byte count)
{
    IL_0000: ldc.i4.m1
    IL_0001: ldarg.2
    IL_0002: ldc.i4.1
    IL_0003: sub
    IL_0004: call System.UInt64 Z0.BitMask::lo64(System.Int32)
    IL_0009: conv.u4
    IL_000A: ldarg.1
    IL_000B: ldc.i4.s 31
    IL_000D: and
    IL_000E: shl
    IL_000F: xor
    IL_0010: stloc.0
    IL_0011: ldloc.0
    IL_0012: ldarg.0
    IL_0013: and
    IL_0014: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Int32 Z0.Bits::bitclear(System.Int32,System.Byte,System.Byte)
// int bitclear(int src, byte index, byte count)
// AggressiveInlining
int bitclear(int src, byte index, byte count)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.UInt32 Z0.Bits::bitclear(System.UInt32,System.Byte,System.Byte)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt64 Z0.Bits::bitclear(System.UInt64,System.Byte,System.Byte)
// ulong bitclear(ulong src, byte index, byte count)
// AggressiveInlining
ulong bitclear(ulong src, byte index, byte count)
{
    IL_0000: ldc.i4.m1
    IL_0001: conv.i8
    IL_0002: ldarg.2
    IL_0003: ldc.i4.1
    IL_0004: sub
    IL_0005: call System.UInt64 Z0.BitMask::lo64(System.Int32)
    IL_000A: ldarg.1
    IL_000B: ldc.i4.s 63
    IL_000D: and
    IL_000E: shl
    IL_000F: xor
    IL_0010: stloc.0
    IL_0011: ldloc.0
    IL_0012: ldarg.0
    IL_0013: and
    IL_0014: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Int64 Z0.Bits::bitclear(System.Int64,System.Byte,System.Byte)
// long bitclear(long src, byte index, byte count)
// AggressiveInlining
long bitclear(long src, byte index, byte count)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.UInt64 Z0.Bits::bitclear(System.UInt64,System.Byte,System.Byte)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
