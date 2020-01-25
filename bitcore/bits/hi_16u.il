// Id := 100663400, Name := System.Byte Z0.Bits::hi(System.UInt16)
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
