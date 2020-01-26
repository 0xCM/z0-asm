// Id := 100663654, Name := System.Byte Z0.math::xorsl(System.Byte,System.Byte)
// byte xorsl(byte a, byte offset)
// AggressiveInlining
byte xorsl(byte a, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 Z0.math::xorsl(System.UInt32,System.Byte)
    IL_0007: conv.u1
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663655, Name := System.SByte Z0.math::xorsl(System.SByte,System.Byte)
// sbyte xorsl(sbyte a, byte offset)
// AggressiveInlining
sbyte xorsl(sbyte a, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Int32 Z0.math::xorsl(System.Int32,System.Byte)
    IL_0007: conv.i1
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663656, Name := System.UInt16 Z0.math::xorsl(System.UInt16,System.Byte)
// ushort xorsl(ushort a, byte offset)
// AggressiveInlining
ushort xorsl(ushort a, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 Z0.math::xorsl(System.UInt32,System.Byte)
    IL_0007: conv.u2
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663657, Name := System.Int16 Z0.math::xorsl(System.Int16,System.Byte)
// short xorsl(short a, byte offset)
// AggressiveInlining
short xorsl(short a, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Int32 Z0.math::xorsl(System.Int32,System.Byte)
    IL_0007: conv.i2
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663658, Name := System.Int32 Z0.math::xorsl(System.Int32,System.Byte)
// int xorsl(int a, byte offset)
// AggressiveInlining
int xorsl(int a, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: ldc.i4.s 31
    IL_0005: and
    IL_0006: shl
    IL_0007: xor
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663659, Name := System.UInt32 Z0.math::xorsl(System.UInt32,System.Byte)
// uint xorsl(uint a, byte offset)
// AggressiveInlining
uint xorsl(uint a, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: ldc.i4.s 31
    IL_0005: and
    IL_0006: shl
    IL_0007: xor
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663660, Name := System.Int64 Z0.math::xorsl(System.Int64,System.Byte)
// long xorsl(long a, byte offset)
// AggressiveInlining
long xorsl(long a, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: ldc.i4.s 63
    IL_0005: and
    IL_0006: shl
    IL_0007: xor
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663661, Name := System.UInt64 Z0.math::xorsl(System.UInt64,System.Byte)
// ulong xorsl(ulong a, byte offset)
// AggressiveInlining
ulong xorsl(ulong a, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: ldc.i4.s 63
    IL_0005: and
    IL_0006: shl
    IL_0007: xor
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
