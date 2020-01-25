// Id := 100663418, Name := System.UInt32 Z0.math::log2(System.UInt32)
// uint log2(uint src)
// AggressiveInlining
uint log2(uint src)
{
    IL_0000: ldarg.0
    IL_0001: conv.u8
    IL_0002: call System.UInt64 Z0.math::log2(System.UInt64)
    IL_0007: conv.u4
    IL_0008: ret
}
