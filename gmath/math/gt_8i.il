// Id := 100663694, Name := Z0.bit Z0.math::gt(System.SByte,System.SByte)
// bit gt(sbyte a, sbyte b)
// AggressiveInlining
bit gt(sbyte a, sbyte b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: cgt
    IL_0004: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0009: ret
}
