// Id := 100663736, Name := System.Int16 Z0.math::min(System.Int16,System.Int16)
// Int16 min(Int16 a, Int16 b)
// AggressiveInlining
Int16 min(Int16 a, Int16 b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: blt.s IL_0006
    IL_0004: ldarg.1
    IL_0005: ret
    IL_0006: ldarg.0
    IL_0007: ret
}
