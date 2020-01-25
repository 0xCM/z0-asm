// Id := 100663536, Name := System.Int64 Z0.math::nand(System.Int64,System.Int64)
// long nand(long a, long b)
// AggressiveInlining
long nand(long a, long b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: and
    IL_0003: not
    IL_0004: ret
}
