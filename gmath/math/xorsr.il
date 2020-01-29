// System.Byte Z0.math::xorsr(System.Byte,System.Byte)
// byte xorsr(byte a, byte offset)
// AggressiveInlining
byte xorsr(byte a, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 Z0.math::xorsr(System.UInt32,System.Byte)
    IL_0007: conv.u1
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.SByte Z0.math::xorsr(System.SByte,System.Byte)
// sbyte xorsr(sbyte a, byte offset)
// AggressiveInlining
sbyte xorsr(sbyte a, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Int32 Z0.math::xorsr(System.Int32,System.Byte)
    IL_0007: conv.i1
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Int16 Z0.math::xorsr(System.Int16,System.Byte)
// short xorsr(short a, byte offset)
// AggressiveInlining
short xorsr(short a, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Int32 Z0.math::xorsr(System.Int32,System.Byte)
    IL_0007: conv.i2
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt16 Z0.math::xorsr(System.UInt16,System.Byte)
// ushort xorsr(ushort a, byte offset)
// AggressiveInlining
ushort xorsr(ushort a, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 Z0.math::xorsr(System.UInt32,System.Byte)
    IL_0007: conv.u2
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Int32 Z0.math::xorsr(System.Int32,System.Byte)
// int xorsr(int a, byte offset)
// AggressiveInlining
int xorsr(int a, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: ldc.i4.s 31
    IL_0005: and
    IL_0006: shr
    IL_0007: xor
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.math::xorsr(System.UInt32,System.Byte)
// uint xorsr(uint a, byte offset)
// AggressiveInlining
uint xorsr(uint a, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: ldc.i4.s 31
    IL_0005: and
    IL_0006: shr.un
    IL_0007: xor
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Int64 Z0.math::xorsr(System.Int64,System.Byte)
// long xorsr(long a, byte offset)
// AggressiveInlining
long xorsr(long a, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: ldc.i4.s 63
    IL_0005: and
    IL_0006: shr
    IL_0007: xor
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt64 Z0.math::xorsr(System.UInt64,System.Byte)
// ulong xorsr(ulong a, byte offset)
// AggressiveInlining
ulong xorsr(ulong a, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: ldc.i4.s 63
    IL_0005: and
    IL_0006: shr.un
    IL_0007: xor
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
