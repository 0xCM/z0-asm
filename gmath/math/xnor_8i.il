// Id := 100663594, Name := System.SByte Z0.math::xnor(System.SByte,System.SByte)
// sbyte xnor(sbyte a, sbyte b)
// AggressiveInlining
sbyte xnor(sbyte a, sbyte b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.SByte Z0.math::xor(System.SByte,System.SByte)
    IL_0007: call System.SByte Z0.math::not(System.SByte)
    IL_000C: ret
}
