// Id := 100663767, Name := Z0.bit Z0.math::positive(System.Double)
// bit positive(double a)
// AggressiveInlining
bit positive(double a)
{
    IL_0000: ldarg.0
    IL_0001: ldc.r8 0
    IL_000A: cgt
    IL_000C: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0011: ret
}
