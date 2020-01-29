// System.Void Z0.Bits::split(System.UInt64,System.Byte&,System.Byte&,System.Byte&,System.Byte&,System.Byte&,System.Byte&,System.Byte&,System.Byte&)
// void split(ulong src, out byte x0, out byte x1, out byte x2, out byte x3, out byte x4, out byte x5, out byte x6, out byte x7)
// AggressiveInlining
void split(ulong src, out byte x0, out byte x1, out byte x2, out byte x3, out byte x4, out byte x5, out byte x6, out byte x7)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: conv.u1
    IL_0003: stind.i1
    IL_0004: ldarg.2
    IL_0005: ldarg.0
    IL_0006: ldc.i4.8
    IL_0007: shr.un
    IL_0008: conv.u1
    IL_0009: stind.i1
    IL_000A: ldarg.3
    IL_000B: ldarg.0
    IL_000C: ldc.i4.s 16
    IL_000E: shr.un
    IL_000F: conv.u1
    IL_0010: stind.i1
    IL_0011: ldarg.s x3
    IL_0013: ldarg.0
    IL_0014: ldc.i4.s 24
    IL_0016: shr.un
    IL_0017: conv.u1
    IL_0018: stind.i1
    IL_0019: ldarg.s x4
    IL_001B: ldarg.0
    IL_001C: ldc.i4.s 32
    IL_001E: shr.un
    IL_001F: conv.u1
    IL_0020: stind.i1
    IL_0021: ldarg.s x5
    IL_0023: ldarg.0
    IL_0024: ldc.i4.s 40
    IL_0026: shr.un
    IL_0027: conv.u1
    IL_0028: stind.i1
    IL_0029: ldarg.s x6
    IL_002B: ldarg.0
    IL_002C: ldc.i4.s 48
    IL_002E: shr.un
    IL_002F: conv.u1
    IL_0030: stind.i1
    IL_0031: ldarg.s x7
    IL_0033: ldarg.0
    IL_0034: ldc.i4.s 56
    IL_0036: shr.un
    IL_0037: conv.u1
    IL_0038: stind.i1
    IL_0039: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.ConstPair`1<System.Byte> Z0.Bits::split(System.UInt16,Z0.N2)
// ConstPair<byte> split(ushort src, N2 n)
// AggressiveInlining
ConstPair<byte> split(ushort src, N2 n)
{
    IL_0000: ldarg.0
    IL_0001: conv.u1
    IL_0002: ldarg.0
    IL_0003: ldc.i4.8
    IL_0004: shr
    IL_0005: conv.u1
    IL_0006: newobj System.Void System.ValueTuple`2<System.Byte,System.Byte>::.ctor(System.Byte,System.Byte)
    IL_000B: call Z0.ConstPair`1<System.Byte> Z0.ConstPair`1<System.Byte>::op_Implicit(System.ValueTuple`2<System.Byte,System.Byte>)
    IL_0010: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.ConstPair`1<System.UInt16> Z0.Bits::split(System.UInt32,Z0.N2)
// ConstPair<ushort> split(uint src, N2 n)
// AggressiveInlining
ConstPair<ushort> split(uint src, N2 n)
{
    IL_0000: ldarg.0
    IL_0001: conv.u2
    IL_0002: ldarg.0
    IL_0003: ldc.i4.s 16
    IL_0005: shr.un
    IL_0006: conv.u2
    IL_0007: newobj System.Void System.ValueTuple`2<System.UInt16,System.UInt16>::.ctor(System.UInt16,System.UInt16)
    IL_000C: call Z0.ConstPair`1<System.UInt16> Z0.ConstPair`1<System.UInt16>::op_Implicit(System.ValueTuple`2<System.UInt16,System.UInt16>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.ConstQuad`1<System.Byte> Z0.Bits::split(System.UInt32,Z0.N4)
// ConstQuad<byte> split(uint src, N4 n)
// AggressiveInlining
ConstQuad<byte> split(uint src, N4 n)
{
    IL_0000: ldarg.0
    IL_0001: conv.u1
    IL_0002: ldarg.0
    IL_0003: ldc.i4.8
    IL_0004: shr.un
    IL_0005: conv.u1
    IL_0006: ldarg.0
    IL_0007: ldc.i4.s 16
    IL_0009: shr.un
    IL_000A: conv.u1
    IL_000B: ldarg.0
    IL_000C: ldc.i4.s 24
    IL_000E: shr.un
    IL_000F: conv.u1
    IL_0010: newobj System.Void System.ValueTuple`4<System.Byte,System.Byte,System.Byte,System.Byte>::.ctor(System.Byte,System.Byte,System.Byte,System.Byte)
    IL_0015: call Z0.ConstQuad`1<System.Byte> Z0.ConstQuad`1<System.Byte>::op_Implicit(System.ValueTuple`4<System.Byte,System.Byte,System.Byte,System.Byte>)
    IL_001A: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.ConstPair`1<System.UInt32> Z0.Bits::split(System.UInt64,Z0.N2)
// ConstPair<uint> split(ulong src, N2 n)
// AggressiveInlining
ConstPair<uint> split(ulong src, N2 n)
{
    IL_0000: ldarg.0
    IL_0001: conv.u4
    IL_0002: ldarg.0
    IL_0003: ldc.i4.s 32
    IL_0005: shr.un
    IL_0006: conv.u4
    IL_0007: newobj System.Void System.ValueTuple`2<System.UInt32,System.UInt32>::.ctor(System.UInt32,System.UInt32)
    IL_000C: call Z0.ConstPair`1<System.UInt32> Z0.ConstPair`1<System.UInt32>::op_Implicit(System.ValueTuple`2<System.UInt32,System.UInt32>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.ConstQuad`1<System.UInt16> Z0.Bits::split(System.UInt64,Z0.N4)
// ConstQuad<ushort> split(ulong src, N4 n)
// AggressiveInlining
ConstQuad<ushort> split(ulong src, N4 n)
{
    IL_0000: ldarg.0
    IL_0001: conv.u2
    IL_0002: ldarg.0
    IL_0003: ldc.i4.s 16
    IL_0005: shr.un
    IL_0006: conv.u2
    IL_0007: ldarg.0
    IL_0008: ldc.i4.s 32
    IL_000A: shr.un
    IL_000B: conv.u2
    IL_000C: ldarg.0
    IL_000D: ldc.i4.s 48
    IL_000F: shr.un
    IL_0010: conv.u2
    IL_0011: newobj System.Void System.ValueTuple`4<System.UInt16,System.UInt16,System.UInt16,System.UInt16>::.ctor(System.UInt16,System.UInt16,System.UInt16,System.UInt16)
    IL_0016: call Z0.ConstQuad`1<System.UInt16> Z0.ConstQuad`1<System.UInt16>::op_Implicit(System.ValueTuple`4<System.UInt16,System.UInt16,System.UInt16,System.UInt16>)
    IL_001B: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.Bits::split(System.Byte,System.Int32,System.Byte&,System.Byte&)
// void split(byte src, int index, out byte x0, out byte x1)
// AggressiveInlining
void split(byte src, int index, out byte x0, out byte x1)
{
    IL_0000: ldarg.3
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: ldc.i4.s 31
    IL_0005: and
    IL_0006: shr
    IL_0007: conv.u1
    IL_0008: stind.i1
    IL_0009: ldarg.2
    IL_000A: ldarg.0
    IL_000B: ldarg.1
    IL_000C: call System.UInt64 Z0.Pow2::pow(System.Int32)
    IL_0011: conv.u1
    IL_0012: ldc.i4.1
    IL_0013: sub
    IL_0014: and
    IL_0015: conv.u1
    IL_0016: stind.i1
    IL_0017: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.Bits::split(System.UInt16,System.Int32,System.UInt16&,System.UInt16&)
// void split(ushort src, int index, out ushort x0, out ushort x1)
// AggressiveInlining
void split(ushort src, int index, out ushort x0, out ushort x1)
{
    IL_0000: ldarg.3
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: ldc.i4.s 31
    IL_0005: and
    IL_0006: shr
    IL_0007: conv.u2
    IL_0008: stind.i2
    IL_0009: ldarg.2
    IL_000A: ldarg.0
    IL_000B: ldarg.1
    IL_000C: call System.UInt64 Z0.Pow2::pow(System.Int32)
    IL_0011: conv.u2
    IL_0012: ldc.i4.1
    IL_0013: sub
    IL_0014: and
    IL_0015: conv.u2
    IL_0016: stind.i2
    IL_0017: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.Bits::split(System.UInt32,System.Int32,System.UInt32&,System.UInt32&)
// void split(uint src, int index, out uint x0, out uint x1)
// AggressiveInlining
void split(uint src, int index, out uint x0, out uint x1)
{
    IL_0000: ldarg.3
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: ldc.i4.s 31
    IL_0005: and
    IL_0006: shr.un
    IL_0007: stind.i4
    IL_0008: ldarg.2
    IL_0009: ldarg.0
    IL_000A: ldarg.1
    IL_000B: call System.UInt64 Z0.Pow2::pow(System.Int32)
    IL_0010: conv.u4
    IL_0011: ldc.i4.1
    IL_0012: sub
    IL_0013: and
    IL_0014: stind.i4
    IL_0015: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.Bits::split(System.UInt64,System.Int32,System.UInt64&,System.UInt64&)
// void split(ulong src, int index, out ulong x0, out ulong x1)
// AggressiveInlining
void split(ulong src, int index, out ulong x0, out ulong x1)
{
    IL_0000: ldarg.3
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: ldc.i4.s 63
    IL_0005: and
    IL_0006: shr.un
    IL_0007: stind.i8
    IL_0008: ldarg.2
    IL_0009: ldarg.0
    IL_000A: ldarg.1
    IL_000B: call System.UInt64 Z0.Pow2::pow(System.Int32)
    IL_0010: ldc.i4.1
    IL_0011: conv.i8
    IL_0012: sub
    IL_0013: and
    IL_0014: stind.i8
    IL_0015: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.Bits::split(System.Byte,System.Byte&,System.Byte&)
// void split(byte src, out byte x0, out byte x1)
// AggressiveInlining
void split(byte src, out byte x0, out byte x1)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldc.i4.s 15
    IL_0004: and
    IL_0005: conv.u1
    IL_0006: stind.i1
    IL_0007: ldarg.2
    IL_0008: ldarg.0
    IL_0009: ldc.i4.4
    IL_000A: shr
    IL_000B: conv.u1
    IL_000C: stind.i1
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Byte Z0.Bits::split(System.Byte,System.Byte&)
// byte split(byte src, out byte x0)
// AggressiveInlining
byte split(byte src, out byte x0)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldc.i4.s 15
    IL_0004: and
    IL_0005: conv.u1
    IL_0006: stind.i1
    IL_0007: ldarg.0
    IL_0008: ldc.i4.4
    IL_0009: shr
    IL_000A: conv.u1
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.Bits::split(System.UInt16,System.Byte&,System.Byte&)
// void split(ushort src, out byte x0, out byte x1)
// AggressiveInlining
void split(ushort src, out byte x0, out byte x1)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: conv.u1
    IL_0003: stind.i1
    IL_0004: ldarg.2
    IL_0005: ldarg.0
    IL_0006: ldc.i4.8
    IL_0007: shr
    IL_0008: conv.u1
    IL_0009: stind.i1
    IL_000A: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Byte Z0.Bits::split(System.UInt16,System.Byte&)
// byte split(ushort src, out byte x0)
// AggressiveInlining
byte split(ushort src, out byte x0)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: conv.u1
    IL_0003: stind.i1
    IL_0004: ldarg.0
    IL_0005: ldc.i4.8
    IL_0006: shr
    IL_0007: conv.u1
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.Bits::split(System.UInt32,System.UInt16&,System.UInt16&)
// void split(uint src, out ushort x0, out ushort x1)
// AggressiveInlining
void split(uint src, out ushort x0, out ushort x1)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: conv.u2
    IL_0003: stind.i2
    IL_0004: ldarg.2
    IL_0005: ldarg.0
    IL_0006: ldc.i4.s 16
    IL_0008: shr.un
    IL_0009: conv.u2
    IL_000A: stind.i2
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt16 Z0.Bits::split(System.UInt32,System.UInt16&)
// ushort split(uint src, out ushort x0)
// AggressiveInlining
ushort split(uint src, out ushort x0)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: conv.u2
    IL_0003: stind.i2
    IL_0004: ldarg.0
    IL_0005: ldc.i4.s 16
    IL_0007: shr.un
    IL_0008: conv.u2
    IL_0009: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.Bits::split(System.UInt64,System.UInt32&,System.UInt32&)
// void split(ulong src, out uint x0, out uint x1)
// AggressiveInlining
void split(ulong src, out uint x0, out uint x1)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: conv.u4
    IL_0003: stind.i4
    IL_0004: ldarg.2
    IL_0005: ldarg.0
    IL_0006: ldc.i4.s 32
    IL_0008: shr.un
    IL_0009: conv.u4
    IL_000A: stind.i4
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.Bits::split(System.UInt64,System.UInt32&)
// uint split(ulong src, out uint x0)
// AggressiveInlining
uint split(ulong src, out uint x0)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: conv.u4
    IL_0003: stind.i4
    IL_0004: ldarg.0
    IL_0005: ldc.i4.s 32
    IL_0007: shr.un
    IL_0008: conv.u4
    IL_0009: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.Bits::split(System.UInt64,System.UInt16&,System.UInt16&,System.UInt16&,System.UInt16&)
// void split(ulong src, out ushort x0, out ushort x1, out ushort x2, out ushort x3)
// AggressiveInlining
void split(ulong src, out ushort x0, out ushort x1, out ushort x2, out ushort x3)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: conv.u2
    IL_0003: stind.i2
    IL_0004: ldarg.2
    IL_0005: ldarg.0
    IL_0006: ldc.i4.s 16
    IL_0008: shr.un
    IL_0009: conv.u2
    IL_000A: stind.i2
    IL_000B: ldarg.3
    IL_000C: ldarg.0
    IL_000D: ldc.i4.s 32
    IL_000F: shr.un
    IL_0010: conv.u2
    IL_0011: stind.i2
    IL_0012: ldarg.s x3
    IL_0014: ldarg.0
    IL_0015: ldc.i4.s 48
    IL_0017: shr.un
    IL_0018: conv.u2
    IL_0019: stind.i2
    IL_001A: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.Bits::split(System.UInt32,System.Byte&,System.Byte&,System.Byte&,System.Byte&)
// void split(uint src, out byte x0, out byte x1, out byte x2, out byte x3)
// AggressiveInlining
void split(uint src, out byte x0, out byte x1, out byte x2, out byte x3)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: conv.u1
    IL_0003: stind.i1
    IL_0004: ldarg.2
    IL_0005: ldarg.0
    IL_0006: ldc.i4.8
    IL_0007: shr.un
    IL_0008: conv.u1
    IL_0009: stind.i1
    IL_000A: ldarg.3
    IL_000B: ldarg.0
    IL_000C: ldc.i4.s 16
    IL_000E: shr.un
    IL_000F: conv.u1
    IL_0010: stind.i1
    IL_0011: ldarg.s x3
    IL_0013: ldarg.0
    IL_0014: ldc.i4.s 24
    IL_0016: shr.un
    IL_0017: conv.u1
    IL_0018: stind.i1
    IL_0019: ret
}
------------------------------------------------------------------------------------------------------------------------
