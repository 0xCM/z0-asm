// Id := 100663525, Name := System.Byte Z0.Bits::rotr(System.Byte,System.Int32,System.Int32)
// byte rotr(byte src, int shift, int width)
// AggressiveInlining
byte rotr(byte src, int shift, int width)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 31
    IL_0004: and
    IL_0005: shr
    IL_0006: ldarg.0
    IL_0007: ldarg.2
    IL_0008: ldarg.1
    IL_0009: sub
    IL_000A: ldc.i4.s 31
    IL_000C: and
    IL_000D: shl
    IL_000E: or
    IL_000F: conv.u1
    IL_0010: ret
}
