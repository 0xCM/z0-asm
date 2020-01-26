// Id := 100663366, Name := System.UInt16 Z0.Bits::byteswap(System.UInt16)
// ushort byteswap(ushort src)
// AggressiveInlining
ushort byteswap(ushort src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.8
    IL_0002: shr
    IL_0003: stloc.0
    IL_0004: ldloc.0
    IL_0005: ldc.i4 255
    IL_000A: ldarg.0
    IL_000B: and
    IL_000C: ldc.i4.8
    IL_000D: shl
    IL_000E: or
    IL_000F: stloc.0
    IL_0010: ldloc.0
    IL_0011: conv.u2
    IL_0012: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663367, Name := System.UInt32 Z0.Bits::byteswap(System.UInt32)
// uint byteswap(uint src)
// AggressiveInlining
uint byteswap(uint src)
{
    IL_0000: ldc.i4.0
    IL_0001: stloc.0
    IL_0002: ldloc.0
    IL_0003: ldarg.0
    IL_0004: ldc.i4.s 24
    IL_0006: shr.un
    IL_0007: conv.u1
    IL_0008: or
    IL_0009: stloc.0
    IL_000A: ldloc.0
    IL_000B: ldarg.0
    IL_000C: ldc.i4.s 16
    IL_000E: shr.un
    IL_000F: conv.u1
    IL_0010: ldc.i4.8
    IL_0011: shl
    IL_0012: or
    IL_0013: stloc.0
    IL_0014: ldloc.0
    IL_0015: ldarg.0
    IL_0016: ldc.i4.8
    IL_0017: shr.un
    IL_0018: conv.u1
    IL_0019: ldc.i4.s 16
    IL_001B: shl
    IL_001C: or
    IL_001D: stloc.0
    IL_001E: ldloc.0
    IL_001F: ldarg.0
    IL_0020: conv.u1
    IL_0021: ldc.i4.s 24
    IL_0023: shl
    IL_0024: or
    IL_0025: stloc.0
    IL_0026: ldloc.0
    IL_0027: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663368, Name := System.UInt64 Z0.Bits::byteswap(System.UInt64)
// ulong byteswap(ulong src)
// AggressiveInlining
ulong byteswap(ulong src)
{
    IL_0000: ldc.i4.0
    IL_0001: conv.i8
    IL_0002: stloc.0
    IL_0003: ldloc.0
    IL_0004: ldarg.0
    IL_0005: ldc.i4.s 56
    IL_0007: shr.un
    IL_0008: conv.u1
    IL_0009: conv.u8
    IL_000A: or
    IL_000B: stloc.0
    IL_000C: ldloc.0
    IL_000D: ldarg.0
    IL_000E: ldc.i4.s 48
    IL_0010: shr.un
    IL_0011: conv.u1
    IL_0012: conv.u8
    IL_0013: ldc.i4.8
    IL_0014: shl
    IL_0015: or
    IL_0016: stloc.0
    IL_0017: ldloc.0
    IL_0018: ldarg.0
    IL_0019: ldc.i4.s 40
    IL_001B: shr.un
    IL_001C: conv.u1
    IL_001D: conv.u8
    IL_001E: ldc.i4.s 16
    IL_0020: shl
    IL_0021: or
    IL_0022: stloc.0
    IL_0023: ldloc.0
    IL_0024: ldarg.0
    IL_0025: ldc.i4.s 32
    IL_0027: shr.un
    IL_0028: conv.u1
    IL_0029: conv.u8
    IL_002A: ldc.i4.s 24
    IL_002C: shl
    IL_002D: or
    IL_002E: stloc.0
    IL_002F: ldloc.0
    IL_0030: ldarg.0
    IL_0031: ldc.i4.s 24
    IL_0033: shr.un
    IL_0034: conv.u1
    IL_0035: conv.u8
    IL_0036: ldc.i4.s 32
    IL_0038: shl
    IL_0039: or
    IL_003A: stloc.0
    IL_003B: ldloc.0
    IL_003C: ldarg.0
    IL_003D: ldc.i4.s 16
    IL_003F: shr.un
    IL_0040: conv.u1
    IL_0041: conv.u8
    IL_0042: ldc.i4.s 40
    IL_0044: shl
    IL_0045: or
    IL_0046: stloc.0
    IL_0047: ldloc.0
    IL_0048: ldarg.0
    IL_0049: ldc.i4.8
    IL_004A: shr.un
    IL_004B: conv.u1
    IL_004C: conv.u8
    IL_004D: ldc.i4.s 48
    IL_004F: shl
    IL_0050: or
    IL_0051: stloc.0
    IL_0052: ldloc.0
    IL_0053: ldarg.0
    IL_0054: conv.u1
    IL_0055: conv.u8
    IL_0056: ldc.i4.s 56
    IL_0058: shl
    IL_0059: or
    IL_005A: stloc.0
    IL_005B: ldloc.0
    IL_005C: ret
}
------------------------------------------------------------------------------------------------------------------------
