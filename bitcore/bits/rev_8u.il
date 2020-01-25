// Id := 100663509, Name := System.Byte Z0.Bits::rev(System.Byte)
// byte rev(byte src)
// AggressiveInlining
byte rev(byte src)
{
    IL_0000: ldarg.0
    IL_0001: conv.u8
    IL_0002: ldc.i4 -2145384446
    IL_0007: conv.u8
    IL_0008: mul
    IL_0009: ldc.i8 36578664720
    IL_0012: and
    IL_0013: ldc.i8 4311810305
    IL_001C: mul
    IL_001D: ldc.i4.s 32
    IL_001F: shr.un
    IL_0020: conv.u1
    IL_0021: ret
}
