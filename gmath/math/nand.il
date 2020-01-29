// System.SByte Z0.math::nand(System.SByte,System.SByte)
// sbyte nand(sbyte a, sbyte b)
// AggressiveInlining
sbyte nand(sbyte a, sbyte b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.SByte Z0.math::and(System.SByte,System.SByte)
    IL_0007: call System.SByte Z0.math::not(System.SByte)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Byte Z0.math::nand(System.Byte,System.Byte)
// byte nand(byte a, byte b)
// AggressiveInlining
byte nand(byte a, byte b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Byte Z0.math::and(System.Byte,System.Byte)
    IL_0007: call System.Byte Z0.math::not(System.Byte)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Int16 Z0.math::nand(System.Int16,System.Int16)
// short nand(short a, short b)
// AggressiveInlining
short nand(short a, short b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Int16 Z0.math::and(System.Int16,System.Int16)
    IL_0007: call System.Int16 Z0.math::not(System.Int16)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt16 Z0.math::nand(System.UInt16,System.UInt16)
// ushort nand(ushort a, ushort b)
// AggressiveInlining
ushort nand(ushort a, ushort b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt16 Z0.math::and(System.UInt16,System.UInt16)
    IL_0007: call System.UInt16 Z0.math::not(System.UInt16)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Int32 Z0.math::nand(System.Int32,System.Int32)
// int nand(int a, int b)
// AggressiveInlining
int nand(int a, int b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: and
    IL_0003: not
    IL_0004: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.math::nand(System.UInt32,System.UInt32)
// uint nand(uint a, uint b)
// AggressiveInlining
uint nand(uint a, uint b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: and
    IL_0003: not
    IL_0004: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Int64 Z0.math::nand(System.Int64,System.Int64)
// long nand(long a, long b)
// AggressiveInlining
long nand(long a, long b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: and
    IL_0003: not
    IL_0004: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt64 Z0.math::nand(System.UInt64,System.UInt64)
// ulong nand(ulong a, ulong b)
// AggressiveInlining
ulong nand(ulong a, ulong b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: and
    IL_0003: not
    IL_0004: ret
}
------------------------------------------------------------------------------------------------------------------------
