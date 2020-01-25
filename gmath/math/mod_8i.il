// Id := 100663421, Name := System.SByte Z0.math::mod(System.SByte,System.SByte)
// sbyte mod(sbyte a, sbyte m)
// AggressiveInlining
sbyte mod(sbyte a, sbyte m)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: rem
    IL_0003: conv.i1
    IL_0004: ret
}
