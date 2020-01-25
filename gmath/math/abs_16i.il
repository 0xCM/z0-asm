// Id := 100663304, Name := System.Int16 Z0.math::abs(System.Int16)
// Int16 abs(Int16 a)
// AggressiveInlining
Int16 abs(Int16 a)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldc.i4.s 15
    IL_0004: shr
    IL_0005: add
    IL_0006: ldarg.0
    IL_0007: ldc.i4.s 15
    IL_0009: shr
    IL_000A: xor
    IL_000B: conv.i2
    IL_000C: ret
}
