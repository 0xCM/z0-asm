// Id := 100663349, Name := System.Int16 Z0.math::dec(System.Int16)
// Int16 dec(Int16 src)
// AggressiveInlining
Int16 dec(Int16 src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: conv.i2
    IL_0004: dup
    IL_0005: starg.s src
    IL_0007: ret
}
