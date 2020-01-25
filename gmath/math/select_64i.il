// Id := 100663584, Name := System.Int64 Z0.math::select(System.Int64,System.Int64,System.Int64)
// long select(long a, long b, long c)
// AggressiveInlining
long select(long a, long b, long c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Int64 Z0.math::and(System.Int64,System.Int64)
    IL_0007: ldarg.0
    IL_0008: ldarg.2
    IL_0009: call System.Int64 Z0.math::nonimpl(System.Int64,System.Int64)
    IL_000E: call System.Int64 Z0.math::or(System.Int64,System.Int64)
    IL_0013: ret
}
