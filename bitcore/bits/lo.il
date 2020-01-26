// Id := 100663403, Name := System.Byte Z0.Bits::lo(System.Byte)
// byte lo(byte src)
// AggressiveInlining
byte lo(byte src)
{
    IL_0000: ldc.i4.s 15
    IL_0002: ldarg.0
    IL_0003: and
    IL_0004: conv.u1
    IL_0005: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663404, Name := System.Byte Z0.Bits::lo(System.UInt16)
// byte lo(ushort src)
// AggressiveInlining
byte lo(ushort src)
{
    IL_0000: ldarg.0
    IL_0001: conv.u1
    IL_0002: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663405, Name := System.UInt16 Z0.Bits::lo(System.UInt32)
// ushort lo(uint src)
// AggressiveInlining
ushort lo(uint src)
{
    IL_0000: ldarg.0
    IL_0001: conv.u2
    IL_0002: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663406, Name := System.UInt32 Z0.Bits::lo(System.UInt64)
// uint lo(ulong src)
// AggressiveInlining
uint lo(ulong src)
{
    IL_0000: ldarg.0
    IL_0001: conv.u4
    IL_0002: ret
}
------------------------------------------------------------------------------------------------------------------------
