// Id := 100663507, Name := System.Byte Z0.math::cimpl(System.Byte,System.Byte)
// byte cimpl(byte a, byte b)
// AggressiveInlining
byte cimpl(byte a, byte b)
{
    IL_0000: ldarg.0
    IL_0001: not
    IL_0002: ldarg.1
    IL_0003: or
    IL_0004: conv.u1
    IL_0005: ret
}
