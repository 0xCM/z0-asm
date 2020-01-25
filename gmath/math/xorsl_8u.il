// Id := 100663654, Name := System.Byte Z0.math::xorsl(System.Byte,System.Byte)
// byte xorsl(byte a, byte offset)
// AggressiveInlining
byte xorsl(byte a, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 Z0.math::xorsl(System.UInt32,System.Byte)
    IL_0007: conv.u1
    IL_0008: ret
}
