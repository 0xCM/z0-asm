// Id := 100663587, Name := System.Byte Z0.math::blend(System.Byte,System.Byte,System.Byte)
// byte blend(byte a, byte b, byte mask)
// AggressiveInlining
byte blend(byte a, byte b, byte mask)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: call System.Byte Z0.math::xor(System.Byte,System.Byte)
    IL_0008: ldarg.2
    IL_0009: call System.Byte Z0.math::and(System.Byte,System.Byte)
    IL_000E: call System.Byte Z0.math::xor(System.Byte,System.Byte)
    IL_0013: ret
}
