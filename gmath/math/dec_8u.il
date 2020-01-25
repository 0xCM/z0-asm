// Id := 100663348, Name := System.Byte Z0.math::dec(System.Byte)
// byte dec(byte src)
// AggressiveInlining
byte dec(byte src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: conv.u1
    IL_0004: dup
    IL_0005: starg.s src
    IL_0007: ret
}
