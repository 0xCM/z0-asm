// Id := 100663739, Name := System.UInt32 Z0.math::min(System.UInt32,System.UInt32)
// uint min(uint a, uint b)
// AggressiveInlining
uint min(uint a, uint b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: blt.un.s IL_0006
    IL_0004: ldarg.1
    IL_0005: ret
    IL_0006: ldarg.0
    IL_0007: ret
}
