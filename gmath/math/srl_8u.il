// Id := 100663635, Name := System.Byte Z0.math::srl(System.Byte,System.Byte)
// byte srl(byte src, byte offset)
// AggressiveInlining
byte srl(byte src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 Z0.math::srl32u(System.UInt32,System.Byte)
    IL_0007: conv.u1
    IL_0008: ret
}
