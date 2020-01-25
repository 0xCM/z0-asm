// Id := 100663380, Name := System.Byte Z0.math::fma(System.Byte,System.Byte,System.Byte)
// byte fma(byte x, byte y, byte z)
// AggressiveInlining
byte fma(byte x, byte y, byte z)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: mul
    IL_0003: ldarg.2
    IL_0004: add
    IL_0005: conv.u1
    IL_0006: ret
}
