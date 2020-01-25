// Id := 100663455, Name := System.Byte Z0.math::negate(System.Byte)
// byte negate(byte src)
// AggressiveInlining
byte negate(byte src)
{
    IL_0000: ldarg.0
    IL_0001: not
    IL_0002: ldc.i4.1
    IL_0003: add
    IL_0004: conv.u1
    IL_0005: ret
}
