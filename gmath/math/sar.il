// Id := 100663618, Name := System.SByte Z0.math::sar(System.SByte,System.Byte)
// sbyte sar(sbyte src, byte offset)
// AggressiveInlining
sbyte sar(sbyte src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 31
    IL_0004: and
    IL_0005: shr
    IL_0006: conv.i1
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663619, Name := System.Byte Z0.math::sar(System.Byte,System.Byte)
// byte sar(byte src, byte offset)
// AggressiveInlining
byte sar(byte src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 31
    IL_0004: and
    IL_0005: shr
    IL_0006: conv.u1
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663620, Name := System.Int16 Z0.math::sar(System.Int16,System.Byte)
// short sar(short src, byte offset)
// AggressiveInlining
short sar(short src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 31
    IL_0004: and
    IL_0005: shr
    IL_0006: conv.i2
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663621, Name := System.UInt16 Z0.math::sar(System.UInt16,System.Byte)
// ushort sar(ushort src, byte offset)
// AggressiveInlining
ushort sar(ushort src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 31
    IL_0004: and
    IL_0005: shr
    IL_0006: conv.u2
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663622, Name := System.Int32 Z0.math::sar(System.Int32,System.Byte)
// int sar(int src, byte offset)
// AggressiveInlining
int sar(int src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 31
    IL_0004: and
    IL_0005: shr
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663623, Name := System.UInt32 Z0.math::sar(System.UInt32,System.Byte)
// uint sar(uint src, byte offset)
// AggressiveInlining
uint sar(uint src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 31
    IL_0004: and
    IL_0005: shr.un
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663624, Name := System.Int64 Z0.math::sar(System.Int64,System.Byte)
// long sar(long src, byte offset)
// AggressiveInlining
long sar(long src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 63
    IL_0004: and
    IL_0005: shr
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663625, Name := System.UInt64 Z0.math::sar(System.UInt64,System.Byte)
// ulong sar(ulong src, byte offset)
// AggressiveInlining
ulong sar(ulong src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 63
    IL_0004: and
    IL_0005: shr.un
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
