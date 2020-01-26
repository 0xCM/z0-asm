// Id := 100663347, Name := System.SByte Z0.math::dec(System.SByte)
// sbyte dec(sbyte src)
// AggressiveInlining
sbyte dec(sbyte src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: conv.i1
    IL_0004: dup
    IL_0005: starg.s src
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663348, Name := System.Byte Z0.math::dec(System.Byte)
// byte dec(byte src)
// AggressiveInlining
byte dec(byte src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: conv.u1
    IL_0004: dup
    IL_0005: starg.s src
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663349, Name := System.Int16 Z0.math::dec(System.Int16)
// short dec(short src)
// AggressiveInlining
short dec(short src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: conv.i2
    IL_0004: dup
    IL_0005: starg.s src
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663350, Name := System.UInt16 Z0.math::dec(System.UInt16)
// ushort dec(ushort src)
// AggressiveInlining
ushort dec(ushort src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: conv.u2
    IL_0004: dup
    IL_0005: starg.s src
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663351, Name := System.Int32 Z0.math::dec(System.Int32)
// int dec(int src)
// AggressiveInlining
int dec(int src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: dup
    IL_0004: starg.s src
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663352, Name := System.UInt32 Z0.math::dec(System.UInt32)
// uint dec(uint src)
// AggressiveInlining
uint dec(uint src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: dup
    IL_0004: starg.s src
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663353, Name := System.Int64 Z0.math::dec(System.Int64)
// long dec(long src)
// AggressiveInlining
long dec(long src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: conv.i8
    IL_0003: sub
    IL_0004: dup
    IL_0005: starg.s src
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663354, Name := System.UInt64 Z0.math::dec(System.UInt64)
// ulong dec(ulong src)
// AggressiveInlining
ulong dec(ulong src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: conv.i8
    IL_0003: sub
    IL_0004: dup
    IL_0005: starg.s src
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
