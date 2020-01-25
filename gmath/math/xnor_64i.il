// Id := 100663600, Name := System.Int64 Z0.math::xnor(System.Int64,System.Int64)
// long xnor(long a, long b)
// AggressiveInlining
long xnor(long a, long b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: xor
    IL_0003: not
    IL_0004: ret
}
