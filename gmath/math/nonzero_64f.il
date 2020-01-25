// Id := 100663757, Name := Z0.bit Z0.math::nonzero(System.Double)
// bit nonzero(double src)
// AggressiveInlining
bit nonzero(double src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.r8 0
    IL_000A: ceq
    IL_000C: ldc.i4.0
    IL_000D: ceq
    IL_000F: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0014: ret
}
