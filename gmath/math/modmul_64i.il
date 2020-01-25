// Id := 100663435, Name := System.Int64 Z0.math::modmul(System.Int64,System.Int64,System.Int64)
// long modmul(long a, long b, long m)
// AggressiveInlining
long modmul(long a, long b, long m)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: mul
    IL_0003: ldarg.2
    IL_0004: rem
    IL_0005: ret
}
