// Id := 100663710, Name := Z0.bit Z0.math::lt(System.SByte,System.SByte)
// bit lt(sbyte a, sbyte b)
// AggressiveInlining
bit lt(sbyte a, sbyte b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: clt
    IL_0004: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0009: ret
}
