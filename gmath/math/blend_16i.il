// Id := 100663588, Name := System.Int16 Z0.math::blend(System.Int16,System.Int16,System.Int16)
// Int16 blend(Int16 a, Int16 b, Int16 mask)
// AggressiveInlining
Int16 blend(Int16 a, Int16 b, Int16 mask)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: call System.Int16 Z0.math::xor(System.Int16,System.Int16)
    IL_0008: ldarg.2
    IL_0009: call System.Int16 Z0.math::and(System.Int16,System.Int16)
    IL_000E: call System.Int16 Z0.math::xor(System.Int16,System.Int16)
    IL_0013: ret
}
