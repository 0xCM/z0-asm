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
