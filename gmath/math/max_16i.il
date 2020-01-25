// Id := 100663728, Name := System.Int16 Z0.math::max(System.Int16,System.Int16)
// Int16 max(Int16 a, Int16 b)
// AggressiveInlining
Int16 max(Int16 a, Int16 b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: bgt.s IL_0006
    IL_0004: ldarg.1
    IL_0005: ret
    IL_0006: ldarg.0
    IL_0007: ret
}
