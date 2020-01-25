// Id := 100663571, Name := System.Byte Z0.math::or(System.Byte,System.Byte,System.Byte)
// byte or(byte a, byte b, byte c)
// AggressiveInlining
byte or(byte a, byte b, byte c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: or
    IL_0003: ldarg.2
    IL_0004: or
    IL_0005: conv.u1
    IL_0006: ret
}
