// System.Byte Z0.math::xors(System.Byte,System.Byte)
// byte xors(byte a, byte offset)
// AggressiveInlining
byte xors(byte a, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 Z0.math::xors(System.UInt32,System.Byte)
    IL_0007: conv.u1
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.SByte Z0.math::xors(System.SByte,System.Byte)
// sbyte xors(sbyte a, byte offset)
// AggressiveInlining
sbyte xors(sbyte a, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: conv.u1
    IL_0002: ldarg.1
    IL_0003: call System.Byte Z0.math::xors(System.Byte,System.Byte)
    IL_0008: conv.i1
    IL_0009: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt16 Z0.math::xors(System.UInt16,System.Byte)
// ushort xors(ushort a, byte offset)
// AggressiveInlining
ushort xors(ushort a, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 Z0.math::xors(System.UInt32,System.Byte)
    IL_0007: conv.u2
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Int16 Z0.math::xors(System.Int16,System.Byte)
// short xors(short a, byte offset)
// AggressiveInlining
short xors(short a, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: conv.u2
    IL_0002: ldarg.1
    IL_0003: call System.UInt16 Z0.math::xors(System.UInt16,System.Byte)
    IL_0008: conv.i2
    IL_0009: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.math::xors(System.UInt32,System.Byte)
// uint xors(uint a, byte offset)
// AggressiveInlining
uint xors(uint a, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: ldc.i4.s 31
    IL_0005: and
    IL_0006: shl
    IL_0007: ldarg.0
    IL_0008: ldarg.1
    IL_0009: ldc.i4.s 31
    IL_000B: and
    IL_000C: shr.un
    IL_000D: xor
    IL_000E: xor
    IL_000F: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Int32 Z0.math::xors(System.Int32,System.Byte)
// int xors(int a, byte offset)
// AggressiveInlining
int xors(int a, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: ldc.i4.s 31
    IL_0005: and
    IL_0006: shl
    IL_0007: ldarg.0
    IL_0008: ldarg.1
    IL_0009: ldc.i4.s 31
    IL_000B: and
    IL_000C: shr
    IL_000D: xor
    IL_000E: xor
    IL_000F: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Int64 Z0.math::xors(System.Int64,System.Byte)
// long xors(long src, byte offset)
// AggressiveInlining
long xors(long src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: ldc.i4.s 63
    IL_0005: and
    IL_0006: shl
    IL_0007: ldarg.0
    IL_0008: ldarg.1
    IL_0009: ldc.i4.s 63
    IL_000B: and
    IL_000C: shr
    IL_000D: xor
    IL_000E: xor
    IL_000F: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt64 Z0.math::xors(System.UInt64,System.Byte)
// ulong xors(ulong src, byte offset)
// AggressiveInlining
ulong xors(ulong src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: ldc.i4.s 63
    IL_0005: and
    IL_0006: shl
    IL_0007: ldarg.0
    IL_0008: ldarg.1
    IL_0009: ldc.i4.s 63
    IL_000B: and
    IL_000C: shr.un
    IL_000D: xor
    IL_000E: xor
    IL_000F: ret
}
------------------------------------------------------------------------------------------------------------------------
