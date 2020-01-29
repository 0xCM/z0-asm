// System.Byte Z0.Bits::rev(System.Byte)
// byte rev(byte src)
// AggressiveInlining
byte rev(byte src)
{
    IL_0000: ldarg.0
    IL_0001: conv.u8
    IL_0002: ldc.i4 -2145384446
    IL_0007: conv.u8
    IL_0008: mul
    IL_0009: ldc.i8 36578664720
    IL_0012: and
    IL_0013: ldc.i8 4311810305
    IL_001C: mul
    IL_001D: ldc.i4.s 32
    IL_001F: shr.un
    IL_0020: conv.u1
    IL_0021: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt16 Z0.Bits::rev(System.UInt16)
// ushort rev(ushort src)
// AggressiveInlining
ushort rev(ushort src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Byte Z0.Bits::hi(System.UInt16)
    IL_0006: call System.Byte Z0.Bits::rev(System.Byte)
    IL_000B: ldarg.0
    IL_000C: call System.Byte Z0.Bits::lo(System.UInt16)
    IL_0011: call System.Byte Z0.Bits::rev(System.Byte)
    IL_0016: call System.UInt16 Z0.Bits::concat(System.Byte,System.Byte)
    IL_001B: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.Bits::rev(System.UInt32)
// uint rev(uint x)
// AggressiveInlining
uint rev(uint x)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4 -1431655766
    IL_0006: and
    IL_0007: ldc.i4.1
    IL_0008: shr.un
    IL_0009: ldarg.0
    IL_000A: ldc.i4 1431655765
    IL_000F: and
    IL_0010: ldc.i4.1
    IL_0011: shl
    IL_0012: or
    IL_0013: starg.s x
    IL_0015: ldarg.0
    IL_0016: ldc.i4 -858993460
    IL_001B: and
    IL_001C: ldc.i4.2
    IL_001D: shr.un
    IL_001E: ldarg.0
    IL_001F: ldc.i4 858993459
    IL_0024: and
    IL_0025: ldc.i4.2
    IL_0026: shl
    IL_0027: or
    IL_0028: starg.s x
    IL_002A: ldarg.0
    IL_002B: ldc.i4 -252645136
    IL_0030: and
    IL_0031: ldc.i4.4
    IL_0032: shr.un
    IL_0033: ldarg.0
    IL_0034: ldc.i4 252645135
    IL_0039: and
    IL_003A: ldc.i4.4
    IL_003B: shl
    IL_003C: or
    IL_003D: starg.s x
    IL_003F: ldarg.0
    IL_0040: ldc.i4 -16711936
    IL_0045: and
    IL_0046: ldc.i4.8
    IL_0047: shr.un
    IL_0048: ldarg.0
    IL_0049: ldc.i4 16711935
    IL_004E: and
    IL_004F: ldc.i4.8
    IL_0050: shl
    IL_0051: or
    IL_0052: starg.s x
    IL_0054: ldarg.0
    IL_0055: ldc.i4.s 16
    IL_0057: shr.un
    IL_0058: ldarg.0
    IL_0059: ldc.i4.s 16
    IL_005B: shl
    IL_005C: or
    IL_005D: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt64 Z0.Bits::rev(System.UInt64)
// ulong rev(ulong src)
// AggressiveInlining
ulong rev(ulong src)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32 Z0.Bits::hi(System.UInt64)
    IL_0006: call System.UInt32 Z0.Bits::rev(System.UInt32)
    IL_000B: stloc.0
    IL_000C: ldloca.s V_0
    IL_000E: ldarg.0
    IL_000F: call System.UInt32 Z0.Bits::lo(System.UInt64)
    IL_0014: call System.UInt32 Z0.Bits::rev(System.UInt32)
    IL_0019: stloc.1
    IL_001A: ldloca.s V_1
    IL_001C: call System.UInt64 Z0.Bits::concat(System.UInt32&,System.UInt32&)
    IL_0021: ret
}
------------------------------------------------------------------------------------------------------------------------
