// Id := 100663506, Name := System.SByte Z0.math::cimpl(System.SByte,System.SByte)
// sbyte cimpl(sbyte a, sbyte b)
// AggressiveInlining
sbyte cimpl(sbyte a, sbyte b)
{
    IL_0000: ldarg.0
    IL_0001: call System.SByte Z0.math::not(System.SByte)
    IL_0006: ldarg.1
    IL_0007: call System.SByte Z0.math::or(System.SByte,System.SByte)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663507, Name := System.Byte Z0.math::cimpl(System.Byte,System.Byte)
// byte cimpl(byte a, byte b)
// AggressiveInlining
byte cimpl(byte a, byte b)
{
    IL_0000: ldarg.0
    IL_0001: not
    IL_0002: ldarg.1
    IL_0003: or
    IL_0004: conv.u1
    IL_0005: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663508, Name := System.Int16 Z0.math::cimpl(System.Int16,System.Int16)
// Int16 cimpl(Int16 a, Int16 b)
// AggressiveInlining
Int16 cimpl(Int16 a, Int16 b)
{
    IL_0000: ldarg.0
    IL_0001: call System.Int16 Z0.math::not(System.Int16)
    IL_0006: ldarg.1
    IL_0007: call System.Int16 Z0.math::or(System.Int16,System.Int16)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663509, Name := System.UInt16 Z0.math::cimpl(System.UInt16,System.UInt16)
// ushort cimpl(ushort a, ushort b)
// AggressiveInlining
ushort cimpl(ushort a, ushort b)
{
    IL_0000: ldarg.0
    IL_0001: not
    IL_0002: ldarg.1
    IL_0003: or
    IL_0004: conv.u2
    IL_0005: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663510, Name := System.Int32 Z0.math::cimpl(System.Int32,System.Int32)
// int cimpl(int a, int b)
// AggressiveInlining
int cimpl(int a, int b)
{
    IL_0000: ldarg.0
    IL_0001: not
    IL_0002: ldarg.1
    IL_0003: or
    IL_0004: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663511, Name := System.UInt32 Z0.math::cimpl(System.UInt32,System.UInt32)
// uint cimpl(uint a, uint b)
// AggressiveInlining
uint cimpl(uint a, uint b)
{
    IL_0000: ldarg.0
    IL_0001: not
    IL_0002: ldarg.1
    IL_0003: or
    IL_0004: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663512, Name := System.Int64 Z0.math::cimpl(System.Int64,System.Int64)
// long cimpl(long a, long b)
// AggressiveInlining
long cimpl(long a, long b)
{
    IL_0000: ldarg.0
    IL_0001: not
    IL_0002: ldarg.1
    IL_0003: or
    IL_0004: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663513, Name := System.UInt64 Z0.math::cimpl(System.UInt64,System.UInt64)
// ulong cimpl(ulong a, ulong b)
// AggressiveInlining
ulong cimpl(ulong a, ulong b)
{
    IL_0000: ldarg.0
    IL_0001: not
    IL_0002: ldarg.1
    IL_0003: or
    IL_0004: ret
}
------------------------------------------------------------------------------------------------------------------------
