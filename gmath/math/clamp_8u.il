// Id := 100663340, Name := System.Byte Z0.math::clamp(System.Byte,System.Byte)
// byte clamp(byte src, byte max)
// AggressiveInlining
byte clamp(byte src, byte max)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: bgt.s IL_0006
    IL_0004: ldarg.0
    IL_0005: ret
    IL_0006: ldarg.1
    IL_0007: ret
}
