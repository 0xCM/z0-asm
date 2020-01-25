// Id := 100663423, Name := System.Int16 Z0.math::mod(System.Int16,System.Int16)
// Int16 mod(Int16 a, Int16 m)
// AggressiveInlining
Int16 mod(Int16 a, Int16 m)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: rem
    IL_0003: conv.i2
    IL_0004: ret
}
