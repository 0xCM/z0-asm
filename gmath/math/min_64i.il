// Id := 100663740, Name := System.Int64 Z0.math::min(System.Int64,System.Int64)
// long min(long a, long b)
// AggressiveInlining
long min(long a, long b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: blt.s IL_0006
    IL_0004: ldarg.1
    IL_0005: ret
    IL_0006: ldarg.0
    IL_0007: ret
}
