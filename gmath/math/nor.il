// Id := 100663546, Name := System.SByte Z0.math::nor(System.SByte,System.SByte)
// sbyte nor(sbyte a, sbyte b)
// AggressiveInlining
sbyte nor(sbyte a, sbyte b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.SByte Z0.math::or(System.SByte,System.SByte)
    IL_0007: call System.SByte Z0.math::not(System.SByte)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663547, Name := System.Byte Z0.math::nor(System.Byte,System.Byte)
// byte nor(byte a, byte b)
// AggressiveInlining
byte nor(byte a, byte b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Byte Z0.math::or(System.Byte,System.Byte)
    IL_0007: call System.Byte Z0.math::not(System.Byte)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663548, Name := System.Int16 Z0.math::nor(System.Int16,System.Int16)
// Int16 nor(Int16 a, Int16 b)
// AggressiveInlining
Int16 nor(Int16 a, Int16 b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Int16 Z0.math::or(System.Int16,System.Int16)
    IL_0007: call System.Int16 Z0.math::not(System.Int16)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663549, Name := System.UInt16 Z0.math::nor(System.UInt16,System.UInt16)
// ushort nor(ushort a, ushort b)
// AggressiveInlining
ushort nor(ushort a, ushort b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt16 Z0.math::or(System.UInt16,System.UInt16)
    IL_0007: call System.UInt16 Z0.math::not(System.UInt16)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663550, Name := System.Int32 Z0.math::nor(System.Int32,System.Int32)
// int nor(int a, int b)
// AggressiveInlining
int nor(int a, int b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: or
    IL_0003: not
    IL_0004: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663551, Name := System.UInt32 Z0.math::nor(System.UInt32,System.UInt32)
// uint nor(uint a, uint b)
// AggressiveInlining
uint nor(uint a, uint b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: or
    IL_0003: not
    IL_0004: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663552, Name := System.Int64 Z0.math::nor(System.Int64,System.Int64)
// long nor(long a, long b)
// AggressiveInlining
long nor(long a, long b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: or
    IL_0003: not
    IL_0004: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663553, Name := System.UInt64 Z0.math::nor(System.UInt64,System.UInt64)
// ulong nor(ulong a, ulong b)
// AggressiveInlining
ulong nor(ulong a, ulong b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: or
    IL_0003: not
    IL_0004: ret
}
------------------------------------------------------------------------------------------------------------------------
