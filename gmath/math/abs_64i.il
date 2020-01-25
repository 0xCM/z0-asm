// Id := 100663306, Name := System.Int64 Z0.math::abs(System.Int64)
// long abs(long a)
// AggressiveInlining
long abs(long a)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldc.i4.s 63
    IL_0004: shr
    IL_0005: add
    IL_0006: ldarg.0
    IL_0007: ldc.i4.s 63
    IL_0009: shr
    IL_000A: xor
    IL_000B: ret
}
