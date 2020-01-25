// Id := 100663547, Name := System.Byte Z0.math::nor(System.Byte,System.Byte)
// byte nor(byte a, byte b)
// AggressiveInlining
byte nor(byte a, byte b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Byte Z0.math::or(System.Byte,System.Byte)
    IL_0007: call System.Byte Z0.math::not(System.Byte)
    IL_000C: ret
}
