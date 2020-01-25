// Id := 100663385, Name := System.Int64 Z0.math::fma(System.Int64,System.Int64,System.Int64)
// long fma(long x, long y, long z)
// AggressiveInlining
long fma(long x, long y, long z)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: mul
    IL_0003: ldarg.2
    IL_0004: add
    IL_0005: ret
}
