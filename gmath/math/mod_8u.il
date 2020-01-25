// Id := 100663422, Name := System.Byte Z0.math::mod(System.Byte,System.Byte)
// byte mod(byte a, byte m)
// AggressiveInlining
byte mod(byte a, byte m)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: rem
    IL_0003: conv.u1
    IL_0004: ret
}
