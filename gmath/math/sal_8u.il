// Id := 100663611, Name := System.Byte Z0.math::sal(System.Byte,System.Byte)
// byte sal(byte src, byte offset)
// AggressiveInlining
byte sal(byte src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 31
    IL_0004: and
    IL_0005: shl
    IL_0006: conv.u1
    IL_0007: ret
}
