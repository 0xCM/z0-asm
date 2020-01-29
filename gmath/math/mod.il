// System.SByte Z0.math::mod(System.SByte,System.SByte)
// sbyte mod(sbyte a, sbyte m)
// AggressiveInlining
sbyte mod(sbyte a, sbyte m)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: rem
    IL_0003: conv.i1
    IL_0004: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Byte Z0.math::mod(System.Byte,System.Byte)
// byte mod(byte a, byte m)
// AggressiveInlining
byte mod(byte a, byte m)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: rem
    IL_0003: conv.u1
    IL_0004: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Int16 Z0.math::mod(System.Int16,System.Int16)
// short mod(short a, short m)
// AggressiveInlining
short mod(short a, short m)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: rem
    IL_0003: conv.i2
    IL_0004: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt16 Z0.math::mod(System.UInt16,System.UInt16)
// ushort mod(ushort a, ushort m)
// AggressiveInlining
ushort mod(ushort a, ushort m)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: rem
    IL_0003: conv.u2
    IL_0004: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Int32 Z0.math::mod(System.Int32,System.Int32)
// int mod(int a, int m)
// AggressiveInlining
int mod(int a, int m)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: rem
    IL_0003: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.math::mod(System.UInt32,System.UInt32)
// uint mod(uint a, uint m)
// AggressiveInlining
uint mod(uint a, uint m)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: rem.un
    IL_0003: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Int64 Z0.math::mod(System.Int64,System.Int64)
// long mod(long a, long m)
// AggressiveInlining
long mod(long a, long m)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: rem
    IL_0003: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt64 Z0.math::mod(System.UInt64,System.UInt64)
// ulong mod(ulong a, ulong m)
// AggressiveInlining
ulong mod(ulong a, ulong m)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: rem.un
    IL_0003: ret
}
------------------------------------------------------------------------------------------------------------------------
