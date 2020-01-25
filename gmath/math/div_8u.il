// Id := 100663364, Name := System.Byte Z0.math::div(System.Byte,System.Byte)
// byte div(byte a, byte b)
// AggressiveInlining
byte div(byte a, byte b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: div
    IL_0003: conv.u1
    IL_0004: ret
}
