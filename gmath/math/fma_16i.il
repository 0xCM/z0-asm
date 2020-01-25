// Id := 100663381, Name := System.Int16 Z0.math::fma(System.Int16,System.Int16,System.Int16)
// Int16 fma(Int16 x, Int16 y, Int16 z)
// AggressiveInlining
Int16 fma(Int16 x, Int16 y, Int16 z)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: mul
    IL_0003: ldarg.2
    IL_0004: add
    IL_0005: conv.i2
    IL_0006: ret
}
