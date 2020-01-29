// System.Byte Z0.Bits::hi(System.Byte)
// byte hi(byte src)
// AggressiveInlining
byte hi(byte src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.4
    IL_0002: shr
    IL_0003: conv.u1
    IL_0004: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Byte Z0.Bits::hi(System.UInt16)
// byte hi(ushort src)
// AggressiveInlining
byte hi(ushort src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.8
    IL_0002: shr
    IL_0003: conv.u1
    IL_0004: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt16 Z0.Bits::hi(System.UInt32)
// ushort hi(uint src)
// AggressiveInlining
ushort hi(uint src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.s 16
    IL_0003: shr.un
    IL_0004: conv.u2
    IL_0005: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.Bits::hi(System.UInt64)
// uint hi(ulong src)
// AggressiveInlining
uint hi(ulong src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.s 32
    IL_0003: shr.un
    IL_0004: conv.u4
    IL_0005: ret
}
------------------------------------------------------------------------------------------------------------------------
