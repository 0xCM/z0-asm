// Id := 100663592, Name := System.Int64 Z0.math::blend(System.Int64,System.Int64,System.Int64)
// long blend(long a, long b, long mask)
// AggressiveInlining
long blend(long a, long b, long mask)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: call System.Int64 Z0.math::xor(System.Int64,System.Int64)
    IL_0008: ldarg.2
    IL_0009: call System.Int64 Z0.math::and(System.Int64,System.Int64)
    IL_000E: call System.Int64 Z0.math::xor(System.Int64,System.Int64)
    IL_0013: ret
}
