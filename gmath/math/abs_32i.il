// Id := 100663305, Name := System.Int32 Z0.math::abs(System.Int32)
// int abs(int a)
// AggressiveInlining
int abs(int a)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldc.i4.s 31
    IL_0004: shr
    IL_0005: add
    IL_0006: ldarg.0
    IL_0007: ldc.i4.s 31
    IL_0009: shr
    IL_000A: xor
    IL_000B: ret
}
