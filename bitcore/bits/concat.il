// System.UInt16 Z0.Bits::concat(System.Byte,System.Byte)
// ushort concat(byte x0, byte x1)
// AggressiveInlining
ushort concat(byte x0, byte x1)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.8
    IL_0003: shl
    IL_0004: or
    IL_0005: conv.u2
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.Bits::concat(System.UInt16,System.UInt16)
// uint concat(ushort x0, ushort x1)
// AggressiveInlining
uint concat(ushort x0, ushort x1)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 16
    IL_0004: shl
    IL_0005: or
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt64 Z0.Bits::concat(System.UInt32&,System.UInt32&)
// ulong concat(in uint x0, in uint x1)
// AggressiveInlining
ulong concat(in uint x0, in uint x1)
{
    IL_0000: ldarg.0
    IL_0001: ldind.u4
    IL_0002: conv.u8
    IL_0003: ldarg.1
    IL_0004: ldind.u4
    IL_0005: conv.u8
    IL_0006: ldc.i4.s 32
    IL_0008: shl
    IL_0009: or
    IL_000A: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.Bits::concat(System.Byte,System.Byte,System.Byte,System.Byte)
// uint concat(byte x0, byte x1, byte x2, byte x3)
// AggressiveInlining
uint concat(byte x0, byte x1, byte x2, byte x3)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.8
    IL_0003: shl
    IL_0004: or
    IL_0005: ldarg.2
    IL_0006: ldc.i4.s 16
    IL_0008: shl
    IL_0009: or
    IL_000A: ldarg.3
    IL_000B: ldc.i4.s 24
    IL_000D: shl
    IL_000E: or
    IL_000F: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt64 Z0.Bits::concat(System.UInt16,System.UInt16,System.UInt16,System.UInt16)
// ulong concat(ushort x0, ushort x1, ushort x2, ushort x3)
// AggressiveInlining
ulong concat(ushort x0, ushort x1, ushort x2, ushort x3)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 16
    IL_0004: shl
    IL_0005: or
    IL_0006: ldarg.2
    IL_0007: or
    IL_0008: ldarg.3
    IL_0009: ldc.i4.s 16
    IL_000B: shl
    IL_000C: or
    IL_000D: conv.u8
    IL_000E: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt64 Z0.Bits::concat(System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte)
// ulong concat(byte x0, byte x1, byte x2, byte x3, byte x4, byte x5, byte x6, byte x7)
// AggressiveInlining
ulong concat(byte x0, byte x1, byte x2, byte x3, byte x4, byte x5, byte x6, byte x7)
{
    IL_0000: ldarg.0
    IL_0001: conv.u8
    IL_0002: ldarg.1
    IL_0003: conv.u8
    IL_0004: ldc.i4.8
    IL_0005: shl
    IL_0006: or
    IL_0007: ldarg.2
    IL_0008: conv.u8
    IL_0009: ldc.i4.s 16
    IL_000B: shl
    IL_000C: or
    IL_000D: ldarg.3
    IL_000E: conv.u8
    IL_000F: ldc.i4.s 24
    IL_0011: shl
    IL_0012: or
    IL_0013: ldarg.s x4
    IL_0015: conv.u8
    IL_0016: ldc.i4.s 32
    IL_0018: shl
    IL_0019: or
    IL_001A: ldarg.s x5
    IL_001C: conv.u8
    IL_001D: ldc.i4.s 40
    IL_001F: shl
    IL_0020: or
    IL_0021: ldarg.s x6
    IL_0023: conv.u8
    IL_0024: ldc.i4.s 48
    IL_0026: shl
    IL_0027: or
    IL_0028: ldarg.s x7
    IL_002A: conv.u8
    IL_002B: ldc.i4.s 56
    IL_002D: shl
    IL_002E: or
    IL_002F: ret
}
------------------------------------------------------------------------------------------------------------------------
