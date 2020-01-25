// Id := 100663345, Name := System.Int64 Z0.math::clamp(System.Int64,System.Int64)
// long clamp(long src, long max)
// AggressiveInlining
long clamp(long src, long max)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: bgt.s IL_0006
    IL_0004: ldarg.0
    IL_0005: ret
    IL_0006: ldarg.1
    IL_0007: ret
}
