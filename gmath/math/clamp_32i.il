// Id := 100663343, Name := System.Int32 Z0.math::clamp(System.Int32,System.Int32)
// int clamp(int src, int max)
// AggressiveInlining
int clamp(int src, int max)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: bgt.s IL_0006
    IL_0004: ldarg.0
    IL_0005: ret
    IL_0006: ldarg.1
    IL_0007: ret
}
