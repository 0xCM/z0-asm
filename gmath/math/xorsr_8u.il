// Id := 100663662, Name := System.Byte Z0.math::xorsr(System.Byte,System.Byte)
// byte xorsr(byte a, byte offset)
// AggressiveInlining
byte xorsr(byte a, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 Z0.math::xorsr(System.UInt32,System.Byte)
    IL_0007: conv.u1
    IL_0008: ret
}
