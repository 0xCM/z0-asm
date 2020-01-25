// Id := 100663419, Name := System.Byte Z0.math::log2(System.Byte)
// byte log2(byte src)
// AggressiveInlining
byte log2(byte src)
{
    IL_0000: ldarg.0
    IL_0001: conv.u8
    IL_0002: call System.UInt64 Z0.math::log2(System.UInt64)
    IL_0007: conv.u1
    IL_0008: ret
}
