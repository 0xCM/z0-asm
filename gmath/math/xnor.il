// Id := 100663594, Name := System.SByte Z0.math::xnor(System.SByte,System.SByte)
// sbyte xnor(sbyte a, sbyte b)
// AggressiveInlining
sbyte xnor(sbyte a, sbyte b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.SByte Z0.math::xor(System.SByte,System.SByte)
    IL_0007: call System.SByte Z0.math::not(System.SByte)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663595, Name := System.Byte Z0.math::xnor(System.Byte,System.Byte)
// byte xnor(byte a, byte b)
// AggressiveInlining
byte xnor(byte a, byte b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Byte Z0.math::xor(System.Byte,System.Byte)
    IL_0007: call System.Byte Z0.math::not(System.Byte)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663596, Name := System.Int16 Z0.math::xnor(System.Int16,System.Int16)
// short xnor(short a, short b)
// AggressiveInlining
short xnor(short a, short b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Int16 Z0.math::xor(System.Int16,System.Int16)
    IL_0007: call System.Int16 Z0.math::not(System.Int16)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663597, Name := System.UInt16 Z0.math::xnor(System.UInt16,System.UInt16)
// ushort xnor(ushort a, ushort b)
// AggressiveInlining
ushort xnor(ushort a, ushort b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt16 Z0.math::xor(System.UInt16,System.UInt16)
    IL_0007: call System.UInt16 Z0.math::not(System.UInt16)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663598, Name := System.Int32 Z0.math::xnor(System.Int32,System.Int32)
// int xnor(int a, int b)
// AggressiveInlining
int xnor(int a, int b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: xor
    IL_0003: not
    IL_0004: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663599, Name := System.UInt32 Z0.math::xnor(System.UInt32,System.UInt32)
// uint xnor(uint a, uint b)
// AggressiveInlining
uint xnor(uint a, uint b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: xor
    IL_0003: not
    IL_0004: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663600, Name := System.Int64 Z0.math::xnor(System.Int64,System.Int64)
// long xnor(long a, long b)
// AggressiveInlining
long xnor(long a, long b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: xor
    IL_0003: not
    IL_0004: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663601, Name := System.UInt64 Z0.math::xnor(System.UInt64,System.UInt64)
// ulong xnor(ulong a, ulong b)
// AggressiveInlining
ulong xnor(ulong a, ulong b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: xor
    IL_0003: not
    IL_0004: ret
}
------------------------------------------------------------------------------------------------------------------------
