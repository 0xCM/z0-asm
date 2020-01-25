// Id := 100663344, Name := System.UInt32 Z0.math::clamp(System.UInt32,System.UInt32)
// uint clamp(uint src, uint max)
// AggressiveInlining
uint clamp(uint src, uint max)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: bgt.un.s IL_0006
    IL_0004: ldarg.0
    IL_0005: ret
    IL_0006: ldarg.1
    IL_0007: ret
}
