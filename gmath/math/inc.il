// System.SByte Z0.math::inc(System.SByte)
// sbyte inc(sbyte src)
// AggressiveInlining
sbyte inc(sbyte src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: add
    IL_0003: conv.i1
    IL_0004: dup
    IL_0005: starg.s src
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Byte Z0.math::inc(System.Byte)
// byte inc(byte src)
// AggressiveInlining
byte inc(byte src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: add
    IL_0003: conv.u1
    IL_0004: dup
    IL_0005: starg.s src
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Int16 Z0.math::inc(System.Int16)
// short inc(short src)
// AggressiveInlining
short inc(short src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: add
    IL_0003: conv.i2
    IL_0004: dup
    IL_0005: starg.s src
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt16 Z0.math::inc(System.UInt16)
// ushort inc(ushort src)
// AggressiveInlining
ushort inc(ushort src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: add
    IL_0003: conv.u2
    IL_0004: dup
    IL_0005: starg.s src
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Int32 Z0.math::inc(System.Int32)
// int inc(int src)
// AggressiveInlining
int inc(int src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: add
    IL_0003: dup
    IL_0004: starg.s src
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.math::inc(System.UInt32)
// uint inc(uint src)
// AggressiveInlining
uint inc(uint src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: add
    IL_0003: dup
    IL_0004: starg.s src
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Int64 Z0.math::inc(System.Int64)
// long inc(long src)
// AggressiveInlining
long inc(long src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: conv.i8
    IL_0003: add
    IL_0004: dup
    IL_0005: starg.s src
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt64 Z0.math::inc(System.UInt64)
// ulong inc(ulong src)
// AggressiveInlining
ulong inc(ulong src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: conv.i8
    IL_0003: add
    IL_0004: dup
    IL_0005: starg.s src
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
