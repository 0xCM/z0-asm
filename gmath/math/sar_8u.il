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
