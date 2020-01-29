// System.Int16 Z0.math::modmul(System.Int16,System.Int16,System.Int16)
// short modmul(short a, short b, short m)
// AggressiveInlining
short modmul(short a, short b, short m)
{
    IL_0000: ldarg.0
    IL_0001: conv.i8
    IL_0002: ldarg.1
    IL_0003: conv.i8
    IL_0004: ldarg.2
    IL_0005: conv.i8
    IL_0006: call System.Int64 Z0.math::modmul(System.Int64,System.Int64,System.Int64)
    IL_000B: conv.i2
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt16 Z0.math::modmul(System.UInt16,System.UInt16,System.UInt16)
// ushort modmul(ushort a, ushort b, ushort m)
// AggressiveInlining
ushort modmul(ushort a, ushort b, ushort m)
{
    IL_0000: ldarg.0
    IL_0001: conv.u8
    IL_0002: ldarg.1
    IL_0003: conv.u8
    IL_0004: ldarg.2
    IL_0005: conv.u8
    IL_0006: call System.UInt64 Z0.math::modmul(System.UInt64,System.UInt64,System.UInt64)
    IL_000B: conv.u2
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Int32 Z0.math::modmul(System.Int32,System.Int32,System.Int32)
// int modmul(int a, int b, int m)
// AggressiveInlining
int modmul(int a, int b, int m)
{
    IL_0000: ldarg.0
    IL_0001: conv.i8
    IL_0002: ldarg.1
    IL_0003: conv.i8
    IL_0004: ldarg.2
    IL_0005: conv.i8
    IL_0006: call System.Int64 Z0.math::modmul(System.Int64,System.Int64,System.Int64)
    IL_000B: conv.i4
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.math::modmul(System.UInt32,System.UInt32,System.UInt32)
// uint modmul(uint a, uint b, uint m)
// AggressiveInlining
uint modmul(uint a, uint b, uint m)
{
    IL_0000: ldarg.0
    IL_0001: conv.u8
    IL_0002: ldarg.1
    IL_0003: conv.u8
    IL_0004: ldarg.2
    IL_0005: conv.u8
    IL_0006: call System.UInt64 Z0.math::modmul(System.UInt64,System.UInt64,System.UInt64)
    IL_000B: conv.u4
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Int64 Z0.math::modmul(System.Int64,System.Int64,System.Int64)
// long modmul(long a, long b, long m)
// AggressiveInlining
long modmul(long a, long b, long m)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: mul
    IL_0003: ldarg.2
    IL_0004: rem
    IL_0005: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt64 Z0.math::modmul(System.UInt64,System.UInt64,System.UInt64)
// ulong modmul(ulong a, ulong b, ulong m)
// AggressiveInlining
ulong modmul(ulong a, ulong b, ulong m)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: mul
    IL_0003: ldarg.2
    IL_0004: rem.un
    IL_0005: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Single Z0.math::modmul(System.Single,System.Single,System.Single)
// float modmul(float a, float b, float m)
// AggressiveInlining
float modmul(float a, float b, float m)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: mul
    IL_0003: ldarg.2
    IL_0004: rem
    IL_0005: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Double Z0.math::modmul(System.Double,System.Double,System.Double)
// double modmul(double a, double b, double m)
// AggressiveInlining
double modmul(double a, double b, double m)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: mul
    IL_0003: ldarg.2
    IL_0004: rem
    IL_0005: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.SByte Z0.math::modmul(System.SByte,System.SByte,System.SByte)
// sbyte modmul(sbyte a, sbyte b, sbyte m)
// AggressiveInlining
sbyte modmul(sbyte a, sbyte b, sbyte m)
{
    IL_0000: ldarg.0
    IL_0001: conv.i8
    IL_0002: ldarg.1
    IL_0003: conv.i8
    IL_0004: ldarg.2
    IL_0005: conv.i8
    IL_0006: call System.Int64 Z0.math::modmul(System.Int64,System.Int64,System.Int64)
    IL_000B: conv.i1
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Byte Z0.math::modmul(System.Byte,System.Byte,System.Byte)
// byte modmul(byte a, byte b, byte m)
// AggressiveInlining
byte modmul(byte a, byte b, byte m)
{
    IL_0000: ldarg.0
    IL_0001: conv.u8
    IL_0002: ldarg.1
    IL_0003: conv.u8
    IL_0004: ldarg.2
    IL_0005: conv.u8
    IL_0006: call System.UInt64 Z0.math::modmul(System.UInt64,System.UInt64,System.UInt64)
    IL_000B: conv.u1
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
