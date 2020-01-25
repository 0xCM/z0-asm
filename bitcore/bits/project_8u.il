// Id := 100663497, Name := System.Byte Z0.Bits::project(System.Byte,System.Byte)
// byte project(byte src, byte spec)
// AggressiveInlining
byte project(byte src, byte spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 Z0.Bits::scatter(System.UInt32,System.UInt32)
    IL_0007: conv.u1
    IL_0008: ret
}
