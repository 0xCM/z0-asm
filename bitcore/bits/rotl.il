// Id := 100663513, Name := System.Byte Z0.Bits::rotl(System.Byte,System.Int32)
// byte rotl(byte src, int shift)
// AggressiveInlining
byte rotl(byte src, int shift)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 31
    IL_0004: and
    IL_0005: shl
    IL_0006: ldarg.0
    IL_0007: ldc.i4.8
    IL_0008: ldarg.1
    IL_0009: sub
    IL_000A: ldc.i4.s 31
    IL_000C: and
    IL_000D: shr
    IL_000E: or
    IL_000F: conv.u1
    IL_0010: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663514, Name := System.UInt16 Z0.Bits::rotl(System.UInt16,System.Int32)
// ushort rotl(ushort src, int shift)
// AggressiveInlining
ushort rotl(ushort src, int shift)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 31
    IL_0004: and
    IL_0005: shl
    IL_0006: ldarg.0
    IL_0007: ldc.i4.s 16
    IL_0009: ldarg.1
    IL_000A: sub
    IL_000B: ldc.i4.s 31
    IL_000D: and
    IL_000E: shr
    IL_000F: or
    IL_0010: conv.u2
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663515, Name := System.UInt32 Z0.Bits::rotl(System.UInt32,System.Int32)
// uint rotl(uint src, int shift)
// AggressiveInlining
uint rotl(uint src, int shift)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 31
    IL_0004: and
    IL_0005: shl
    IL_0006: ldarg.0
    IL_0007: ldc.i4.s 32
    IL_0009: ldarg.1
    IL_000A: sub
    IL_000B: ldc.i4.s 31
    IL_000D: and
    IL_000E: shr.un
    IL_000F: or
    IL_0010: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663516, Name := System.UInt64 Z0.Bits::rotl(System.UInt64,System.Int32)
// ulong rotl(ulong src, int shift)
// AggressiveInlining
ulong rotl(ulong src, int shift)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 63
    IL_0004: and
    IL_0005: shl
    IL_0006: ldarg.0
    IL_0007: ldc.i4.s 64
    IL_0009: ldarg.1
    IL_000A: sub
    IL_000B: ldc.i4.s 63
    IL_000D: and
    IL_000E: shr.un
    IL_000F: or
    IL_0010: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663517, Name := System.Byte Z0.Bits::rotl(System.Byte,System.Int32,System.Int32)
// byte rotl(byte src, int shift, int width)
// AggressiveInlining
byte rotl(byte src, int shift, int width)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 31
    IL_0004: and
    IL_0005: shl
    IL_0006: ldarg.0
    IL_0007: ldarg.2
    IL_0008: ldarg.1
    IL_0009: sub
    IL_000A: ldc.i4.s 31
    IL_000C: and
    IL_000D: shr
    IL_000E: or
    IL_000F: conv.u1
    IL_0010: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663518, Name := System.UInt16 Z0.Bits::rotl(System.UInt16,System.Int32,System.Int32)
// ushort rotl(ushort src, int shift, int width)
// AggressiveInlining
ushort rotl(ushort src, int shift, int width)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 31
    IL_0004: and
    IL_0005: shl
    IL_0006: ldarg.0
    IL_0007: ldarg.2
    IL_0008: ldarg.1
    IL_0009: sub
    IL_000A: ldc.i4.s 31
    IL_000C: and
    IL_000D: shr
    IL_000E: or
    IL_000F: conv.u2
    IL_0010: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663519, Name := System.UInt32 Z0.Bits::rotl(System.UInt32,System.Int32,System.Int32)
// uint rotl(uint src, int shift, int width)
// AggressiveInlining
uint rotl(uint src, int shift, int width)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 31
    IL_0004: and
    IL_0005: shl
    IL_0006: ldarg.0
    IL_0007: ldarg.2
    IL_0008: ldarg.1
    IL_0009: sub
    IL_000A: ldc.i4.s 31
    IL_000C: and
    IL_000D: shr.un
    IL_000E: or
    IL_000F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663520, Name := System.UInt64 Z0.Bits::rotl(System.UInt64,System.Int32,System.Int32)
// ulong rotl(ulong src, int shift, int width)
// AggressiveInlining
ulong rotl(ulong src, int shift, int width)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 63
    IL_0004: and
    IL_0005: shl
    IL_0006: ldarg.0
    IL_0007: ldarg.2
    IL_0008: ldarg.1
    IL_0009: sub
    IL_000A: ldc.i4.s 63
    IL_000C: and
    IL_000D: shr.un
    IL_000E: or
    IL_000F: ret
}
------------------------------------------------------------------------------------------------------------------------
