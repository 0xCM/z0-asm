// Id := 100663595, Name := System.Byte Z0.math::xnor(System.Byte,System.Byte)
// byte xnor(byte a, byte b)
// AggressiveInlining
byte xnor(byte a, byte b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Byte Z0.math::xor(System.Byte,System.Byte)
    IL_0007: call System.Byte Z0.math::not(System.Byte)
    IL_000C: ret
}
