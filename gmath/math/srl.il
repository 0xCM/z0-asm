// Id := 100663634, Name := System.SByte Z0.math::srl(System.SByte,System.Byte)
// sbyte srl(sbyte src, byte offset)
// AggressiveInlining
sbyte srl(sbyte src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Int32 Z0.math::srl32i(System.Int32,System.Byte)
    IL_0007: conv.i1
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663635, Name := System.Byte Z0.math::srl(System.Byte,System.Byte)
// byte srl(byte src, byte offset)
// AggressiveInlining
byte srl(byte src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 Z0.math::srl32u(System.UInt32,System.Byte)
    IL_0007: conv.u1
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663636, Name := System.Int16 Z0.math::srl(System.Int16,System.Byte)
// short srl(short src, byte offset)
// AggressiveInlining
short srl(short src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Int32 Z0.math::srl32i(System.Int32,System.Byte)
    IL_0007: conv.i2
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663637, Name := System.UInt16 Z0.math::srl(System.UInt16,System.Byte)
// ushort srl(ushort src, byte offset)
// AggressiveInlining
ushort srl(ushort src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 Z0.math::srl32u(System.UInt32,System.Byte)
    IL_0007: conv.u2
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663638, Name := System.Int32 Z0.math::srl(System.Int32,System.Byte)
// int srl(int src, byte offset)
// AggressiveInlining
int srl(int src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Int32 Z0.math::srl32i(System.Int32,System.Byte)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663639, Name := System.UInt32 Z0.math::srl(System.UInt32,System.Byte)
// uint srl(uint src, byte offset)
// AggressiveInlining
uint srl(uint src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 Z0.math::srl32u(System.UInt32,System.Byte)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663640, Name := System.Int64 Z0.math::srl(System.Int64,System.Byte)
// long srl(long src, byte offset)
// AggressiveInlining
long srl(long src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Int64 Z0.math::srl64i(System.Int64,System.Byte)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663641, Name := System.UInt64 Z0.math::srl(System.UInt64,System.Byte)
// ulong srl(ulong src, byte offset)
// AggressiveInlining
ulong srl(ulong src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt64 Z0.math::srl64u(System.UInt64,System.Byte)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
