// System.Byte Z0.math::avgi(System.Byte,System.Byte)
// byte avgi(byte a, byte b)
// AggressiveInlining
byte avgi(byte a, byte b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: or
    IL_0003: ldarg.0
    IL_0004: ldarg.1
    IL_0005: xor
    IL_0006: ldc.i4.1
    IL_0007: shr
    IL_0008: sub
    IL_0009: conv.u1
    IL_000A: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt16 Z0.math::avgi(System.UInt16,System.UInt16)
// ushort avgi(ushort a, ushort b)
// AggressiveInlining
ushort avgi(ushort a, ushort b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: or
    IL_0003: ldarg.0
    IL_0004: ldarg.1
    IL_0005: xor
    IL_0006: ldc.i4.1
    IL_0007: shr
    IL_0008: sub
    IL_0009: conv.u2
    IL_000A: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.math::avgi(System.UInt32,System.UInt32)
// uint avgi(uint a, uint b)
// AggressiveInlining
uint avgi(uint a, uint b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: or
    IL_0003: ldarg.0
    IL_0004: ldarg.1
    IL_0005: xor
    IL_0006: ldc.i4.1
    IL_0007: shr.un
    IL_0008: sub
    IL_0009: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt64 Z0.math::avgi(System.UInt64,System.UInt64)
// ulong avgi(ulong a, ulong b)
// AggressiveInlining
ulong avgi(ulong a, ulong b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: or
    IL_0003: ldarg.0
    IL_0004: ldarg.1
    IL_0005: xor
    IL_0006: ldc.i4.1
    IL_0007: shr.un
    IL_0008: sub
    IL_0009: ret
}
------------------------------------------------------------------------------------------------------------------------
