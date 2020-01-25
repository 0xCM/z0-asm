// Id := 100663686, Name := Z0.bit Z0.math::neq(System.SByte,System.SByte)
// bit neq(sbyte a, sbyte b)
// AggressiveInlining
bit neq(sbyte a, sbyte b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ceq
    IL_0004: ldc.i4.0
    IL_0005: ceq
    IL_0007: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000C: ret
}
