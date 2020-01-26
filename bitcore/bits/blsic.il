// Id := 100663353, Name := System.Byte Z0.Bits::blsic(System.Byte)
// byte blsic(byte src)
// AggressiveInlining
byte blsic(byte src)
{
    IL_0000: ldarg.0
    IL_0001: not
    IL_0002: ldarg.0
    IL_0003: ldc.i4.1
    IL_0004: sub
    IL_0005: or
    IL_0006: conv.u1
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663354, Name := System.UInt16 Z0.Bits::blsic(System.UInt16)
// ushort blsic(ushort src)
// AggressiveInlining
ushort blsic(ushort src)
{
    IL_0000: ldarg.0
    IL_0001: not
    IL_0002: ldarg.0
    IL_0003: ldc.i4.1
    IL_0004: sub
    IL_0005: or
    IL_0006: conv.u2
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663355, Name := System.UInt32 Z0.Bits::blsic(System.UInt32)
// uint blsic(uint src)
// AggressiveInlining
uint blsic(uint src)
{
    IL_0000: ldarg.0
    IL_0001: not
    IL_0002: ldarg.0
    IL_0003: ldc.i4.1
    IL_0004: sub
    IL_0005: or
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663356, Name := System.UInt64 Z0.Bits::blsic(System.UInt64)
// ulong blsic(ulong src)
// AggressiveInlining
ulong blsic(ulong src)
{
    IL_0000: ldarg.0
    IL_0001: not
    IL_0002: ldarg.0
    IL_0003: ldc.i4.1
    IL_0004: conv.i8
    IL_0005: sub
    IL_0006: or
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
