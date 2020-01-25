// Id := 100663517, Name := System.Byte Z0.Bits::rotl(System.Byte,System.Int32,System.Int32)
// byte rotl(byte src, int shift, int width)
// AggressiveInlining
byte rotl(byte src, int shift, int width)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 31
    IL_0004: and
    IL_0005: shl
    IL_0006: ldarg.0
    IL_0007: ldarg.2
    IL_0008: ldarg.1
    IL_0009: sub
    IL_000A: ldc.i4.s 31
    IL_000C: and
    IL_000D: shr
    IL_000E: or
    IL_000F: conv.u1
    IL_0010: ret
}
