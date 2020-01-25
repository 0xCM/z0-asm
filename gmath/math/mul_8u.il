// Id := 100663440, Name := System.Byte Z0.math::mul(System.Byte,System.Byte)
// byte mul(byte a, byte b)
// AggressiveInlining
byte mul(byte a, byte b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: mul
    IL_0003: conv.u1
    IL_0004: ret
}
