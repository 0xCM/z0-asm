// Id := 100663379, Name := System.SByte Z0.math::fma(System.SByte,System.SByte,System.SByte)
// sbyte fma(sbyte x, sbyte y, sbyte z)
// AggressiveInlining
sbyte fma(sbyte x, sbyte y, sbyte z)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: mul
    IL_0003: ldarg.2
    IL_0004: add
    IL_0005: conv.i1
    IL_0006: ret
}
