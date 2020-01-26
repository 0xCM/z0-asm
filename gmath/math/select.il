// Id := 100663578, Name := System.SByte Z0.math::select(System.SByte,System.SByte,System.SByte)
// sbyte select(sbyte a, sbyte b, sbyte c)
// AggressiveInlining
sbyte select(sbyte a, sbyte b, sbyte c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Int32 Z0.math::select(System.Int32,System.Int32,System.Int32)
    IL_0008: conv.i1
    IL_0009: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663579, Name := System.Byte Z0.math::select(System.Byte,System.Byte,System.Byte)
// byte select(byte a, byte b, byte c)
// AggressiveInlining
byte select(byte a, byte b, byte c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.UInt32 Z0.math::select(System.UInt32,System.UInt32,System.UInt32)
    IL_0008: conv.u1
    IL_0009: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663580, Name := System.Int16 Z0.math::select(System.Int16,System.Int16,System.Int16)
// short select(short a, short b, short c)
// AggressiveInlining
short select(short a, short b, short c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Int32 Z0.math::select(System.Int32,System.Int32,System.Int32)
    IL_0008: conv.i2
    IL_0009: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663581, Name := System.UInt16 Z0.math::select(System.UInt16,System.UInt16,System.UInt16)
// ushort select(ushort a, ushort b, ushort c)
// AggressiveInlining
ushort select(ushort a, ushort b, ushort c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.UInt32 Z0.math::select(System.UInt32,System.UInt32,System.UInt32)
    IL_0008: conv.u2
    IL_0009: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663582, Name := System.Int32 Z0.math::select(System.Int32,System.Int32,System.Int32)
// int select(int a, int b, int c)
// AggressiveInlining
int select(int a, int b, int c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Int32 Z0.math::and(System.Int32,System.Int32)
    IL_0007: ldarg.0
    IL_0008: ldarg.2
    IL_0009: call System.Int32 Z0.math::nonimpl(System.Int32,System.Int32)
    IL_000E: call System.Int32 Z0.math::or(System.Int32,System.Int32)
    IL_0013: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663583, Name := System.UInt32 Z0.math::select(System.UInt32,System.UInt32,System.UInt32)
// uint select(uint a, uint b, uint c)
// AggressiveInlining
uint select(uint a, uint b, uint c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 Z0.math::and(System.UInt32,System.UInt32)
    IL_0007: ldarg.0
    IL_0008: ldarg.2
    IL_0009: call System.UInt32 Z0.math::nonimpl(System.UInt32,System.UInt32)
    IL_000E: call System.UInt32 Z0.math::or(System.UInt32,System.UInt32)
    IL_0013: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663584, Name := System.Int64 Z0.math::select(System.Int64,System.Int64,System.Int64)
// long select(long a, long b, long c)
// AggressiveInlining
long select(long a, long b, long c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Int64 Z0.math::and(System.Int64,System.Int64)
    IL_0007: ldarg.0
    IL_0008: ldarg.2
    IL_0009: call System.Int64 Z0.math::nonimpl(System.Int64,System.Int64)
    IL_000E: call System.Int64 Z0.math::or(System.Int64,System.Int64)
    IL_0013: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663585, Name := System.UInt64 Z0.math::select(System.UInt64,System.UInt64,System.UInt64)
// ulong select(ulong a, ulong b, ulong c)
// AggressiveInlining
ulong select(ulong a, ulong b, ulong c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt64 Z0.math::and(System.UInt64,System.UInt64)
    IL_0007: ldarg.0
    IL_0008: ldarg.2
    IL_0009: call System.UInt64 Z0.math::nonimpl(System.UInt64,System.UInt64)
    IL_000E: call System.UInt64 Z0.math::or(System.UInt64,System.UInt64)
    IL_0013: ret
}
------------------------------------------------------------------------------------------------------------------------
