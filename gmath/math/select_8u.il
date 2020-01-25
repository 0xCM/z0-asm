// Id := 100663579, Name := System.Byte Z0.math::select(System.Byte,System.Byte,System.Byte)
// byte select(byte a, byte b, byte c)
// AggressiveInlining
byte select(byte a, byte b, byte c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.UInt32 Z0.math::select(System.UInt32,System.UInt32,System.UInt32)
    IL_0008: conv.u1
    IL_0009: ret
}
