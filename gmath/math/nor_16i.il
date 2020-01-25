// Id := 100663548, Name := System.Int16 Z0.math::nor(System.Int16,System.Int16)
// Int16 nor(Int16 a, Int16 b)
// AggressiveInlining
Int16 nor(Int16 a, Int16 b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Int16 Z0.math::or(System.Int16,System.Int16)
    IL_0007: call System.Int16 Z0.math::not(System.Int16)
    IL_000C: ret
}
