// Id := 100663420, Name := System.UInt16 Z0.math::log2(System.UInt16)
// ushort log2(ushort src)
// AggressiveInlining
ushort log2(ushort src)
{
    IL_0000: ldarg.0
    IL_0001: conv.u8
    IL_0002: call System.UInt64 Z0.math::log2(System.UInt64)
    IL_0007: conv.u2
    IL_0008: ret
}
