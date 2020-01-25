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
