// Id := 100663498, Name := System.Byte Z0.Bits::select(System.Byte,System.Byte)
// byte select(byte src, byte spec)
// AggressiveInlining
byte select(byte src, byte spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 Z0.Bits::gather(System.UInt32,System.UInt32)
    IL_0007: conv.u1
    IL_0008: ret
}
