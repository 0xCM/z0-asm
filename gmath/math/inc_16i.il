// Id := 100663401, Name := System.Int16 Z0.math::inc(System.Int16)
// Int16 inc(Int16 src)
// AggressiveInlining
Int16 inc(Int16 src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: add
    IL_0003: conv.i2
    IL_0004: dup
    IL_0005: starg.s src
    IL_0007: ret
}
