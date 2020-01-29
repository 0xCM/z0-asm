// System.SByte Z0.math::negate(System.SByte)
// sbyte negate(sbyte src)
// AggressiveInlining
sbyte negate(sbyte src)
{
    IL_0000: ldarg.0
    IL_0001: neg
    IL_0002: conv.i1
    IL_0003: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Byte Z0.math::negate(System.Byte)
// byte negate(byte src)
// AggressiveInlining
byte negate(byte src)
{
    IL_0000: ldarg.0
    IL_0001: not
    IL_0002: ldc.i4.1
    IL_0003: add
    IL_0004: conv.u1
    IL_0005: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Int16 Z0.math::negate(System.Int16)
// short negate(short src)
// AggressiveInlining
short negate(short src)
{
    IL_0000: ldarg.0
    IL_0001: neg
    IL_0002: conv.i2
    IL_0003: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt16 Z0.math::negate(System.UInt16)
// ushort negate(ushort src)
// AggressiveInlining
ushort negate(ushort src)
{
    IL_0000: ldarg.0
    IL_0001: not
    IL_0002: ldc.i4.1
    IL_0003: add
    IL_0004: conv.u2
    IL_0005: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Int32 Z0.math::negate(System.Int32)
// int negate(int src)
// AggressiveInlining
int negate(int src)
{
    IL_0000: ldarg.0
    IL_0001: neg
    IL_0002: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.math::negate(System.UInt32)
// uint negate(uint src)
// AggressiveInlining
uint negate(uint src)
{
    IL_0000: ldarg.0
    IL_0001: not
    IL_0002: ldc.i4.1
    IL_0003: add
    IL_0004: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Int64 Z0.math::negate(System.Int64)
// long negate(long src)
// AggressiveInlining
long negate(long src)
{
    IL_0000: ldarg.0
    IL_0001: neg
    IL_0002: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt64 Z0.math::negate(System.UInt64)
// ulong negate(ulong src)
// AggressiveInlining
ulong negate(ulong src)
{
    IL_0000: ldarg.0
    IL_0001: not
    IL_0002: ldc.i4.1
    IL_0003: conv.i8
    IL_0004: add
    IL_0005: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Single Z0.math::negate(System.Single)
// float negate(float src)
// AggressiveInlining
float negate(float src)
{
    IL_0000: ldarg.0
    IL_0001: neg
    IL_0002: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Double Z0.math::negate(System.Double)
// double negate(double src)
// AggressiveInlining
double negate(double src)
{
    IL_0000: ldarg.0
    IL_0001: neg
    IL_0002: ret
}
------------------------------------------------------------------------------------------------------------------------
