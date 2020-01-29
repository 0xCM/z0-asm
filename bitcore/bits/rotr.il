// System.Byte Z0.Bits::rotr(System.Byte,System.Int32)
// byte rotr(byte src, int shift)
// AggressiveInlining
byte rotr(byte src, int shift)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 31
    IL_0004: and
    IL_0005: shr
    IL_0006: ldarg.0
    IL_0007: ldc.i4.8
    IL_0008: ldarg.1
    IL_0009: sub
    IL_000A: ldc.i4.s 31
    IL_000C: and
    IL_000D: shl
    IL_000E: or
    IL_000F: conv.u1
    IL_0010: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt16 Z0.Bits::rotr(System.UInt16,System.Int32)
// ushort rotr(ushort src, int shift)
// AggressiveInlining
ushort rotr(ushort src, int shift)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 31
    IL_0004: and
    IL_0005: shr
    IL_0006: ldarg.0
    IL_0007: ldc.i4.s 16
    IL_0009: ldarg.1
    IL_000A: sub
    IL_000B: ldc.i4.s 31
    IL_000D: and
    IL_000E: shl
    IL_000F: or
    IL_0010: conv.u2
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.Bits::rotr(System.UInt32,System.Int32)
// uint rotr(uint src, int shift)
// AggressiveInlining
uint rotr(uint src, int shift)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 31
    IL_0004: and
    IL_0005: shr.un
    IL_0006: ldarg.0
    IL_0007: ldc.i4.s 32
    IL_0009: ldarg.1
    IL_000A: sub
    IL_000B: ldc.i4.s 31
    IL_000D: and
    IL_000E: shl
    IL_000F: or
    IL_0010: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt64 Z0.Bits::rotr(System.UInt64,System.Int32)
// ulong rotr(ulong src, int shift)
// AggressiveInlining
ulong rotr(ulong src, int shift)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 63
    IL_0004: and
    IL_0005: shr.un
    IL_0006: ldarg.0
    IL_0007: ldc.i4.s 64
    IL_0009: ldarg.1
    IL_000A: sub
    IL_000B: ldc.i4.s 63
    IL_000D: and
    IL_000E: shl
    IL_000F: or
    IL_0010: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Byte Z0.Bits::rotr(System.Byte,System.Int32,System.Int32)
// byte rotr(byte src, int shift, int width)
// AggressiveInlining
byte rotr(byte src, int shift, int width)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 31
    IL_0004: and
    IL_0005: shr
    IL_0006: ldarg.0
    IL_0007: ldarg.2
    IL_0008: ldarg.1
    IL_0009: sub
    IL_000A: ldc.i4.s 31
    IL_000C: and
    IL_000D: shl
    IL_000E: or
    IL_000F: conv.u1
    IL_0010: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt16 Z0.Bits::rotr(System.UInt16,System.Int32,System.Int32)
// ushort rotr(ushort src, int shift, int width)
// AggressiveInlining
ushort rotr(ushort src, int shift, int width)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 31
    IL_0004: and
    IL_0005: shr
    IL_0006: ldarg.0
    IL_0007: ldarg.2
    IL_0008: ldarg.1
    IL_0009: sub
    IL_000A: ldc.i4.s 31
    IL_000C: and
    IL_000D: shl
    IL_000E: or
    IL_000F: conv.u2
    IL_0010: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.Bits::rotr(System.UInt32,System.Int32,System.Int32)
// uint rotr(uint src, int shift, int width)
// AggressiveInlining
uint rotr(uint src, int shift, int width)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 31
    IL_0004: and
    IL_0005: shr.un
    IL_0006: ldarg.0
    IL_0007: ldarg.2
    IL_0008: ldarg.1
    IL_0009: sub
    IL_000A: ldc.i4.s 31
    IL_000C: and
    IL_000D: shl
    IL_000E: or
    IL_000F: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt64 Z0.Bits::rotr(System.UInt64,System.Int32,System.Int32)
// ulong rotr(ulong src, int shift, int width)
// AggressiveInlining
ulong rotr(ulong src, int shift, int width)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 63
    IL_0004: and
    IL_0005: shr.un
    IL_0006: ldarg.0
    IL_0007: ldarg.2
    IL_0008: ldarg.1
    IL_0009: sub
    IL_000A: ldc.i4.s 63
    IL_000C: and
    IL_000D: shl
    IL_000E: or
    IL_000F: ret
}
------------------------------------------------------------------------------------------------------------------------
