// System.SByte Z0.math::sll(System.SByte,System.Byte)
// sbyte sll(sbyte src, byte offset)
// AggressiveInlining
sbyte sll(sbyte src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 31
    IL_0004: and
    IL_0005: shl
    IL_0006: conv.i1
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Byte Z0.math::sll(System.Byte,System.Byte)
// byte sll(byte src, byte offset)
// AggressiveInlining
byte sll(byte src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 31
    IL_0004: and
    IL_0005: shl
    IL_0006: conv.u1
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Int16 Z0.math::sll(System.Int16,System.Byte)
// short sll(short src, byte offset)
// AggressiveInlining
short sll(short src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 31
    IL_0004: and
    IL_0005: shl
    IL_0006: conv.i2
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt16 Z0.math::sll(System.UInt16,System.Byte)
// ushort sll(ushort src, byte offset)
// AggressiveInlining
ushort sll(ushort src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 31
    IL_0004: and
    IL_0005: shl
    IL_0006: conv.u2
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Int32 Z0.math::sll(System.Int32,System.Byte)
// int sll(int src, byte offset)
// AggressiveInlining
int sll(int src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 31
    IL_0004: and
    IL_0005: shl
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.math::sll(System.UInt32,System.Byte)
// uint sll(uint src, byte offset)
// AggressiveInlining
uint sll(uint src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 31
    IL_0004: and
    IL_0005: shl
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Int64 Z0.math::sll(System.Int64,System.Byte)
// long sll(long src, byte offset)
// AggressiveInlining
long sll(long src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 63
    IL_0004: and
    IL_0005: shl
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt64 Z0.math::sll(System.UInt64,System.Byte)
// ulong sll(ulong src, byte offset)
// AggressiveInlining
ulong sll(ulong src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 63
    IL_0004: and
    IL_0005: shl
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
