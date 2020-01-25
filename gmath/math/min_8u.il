// Id := 100663735, Name := System.Byte Z0.math::min(System.Byte,System.Byte)
// byte min(byte a, byte b)
// AggressiveInlining
byte min(byte a, byte b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: blt.s IL_0006
    IL_0004: ldarg.1
    IL_0005: ret
    IL_0006: ldarg.0
    IL_0007: ret
}
