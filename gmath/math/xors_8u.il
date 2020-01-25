// Id := 100663646, Name := System.Byte Z0.math::xors(System.Byte,System.Byte)
// byte xors(byte a, byte offset)
// AggressiveInlining
byte xors(byte a, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 Z0.math::xors(System.UInt32,System.Byte)
    IL_0007: conv.u1
    IL_0008: ret
}
