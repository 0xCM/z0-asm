// Id := 100663551, Name := System.Byte Z0.Bits::split(System.Byte,System.Byte&)
// byte split(byte src, out byte x0)
// AggressiveInlining
byte split(byte src, out byte x0)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldc.i4.s 15
    IL_0004: and
    IL_0005: conv.u1
    IL_0006: stind.i1
    IL_0007: ldarg.0
    IL_0008: ldc.i4.4
    IL_0009: shr
    IL_000A: conv.u1
    IL_000B: ret
}
