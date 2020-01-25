// Id := 100663756, Name := Z0.bit Z0.math::nonzero(System.Single)
// bit nonzero(float src)
// AggressiveInlining
bit nonzero(float src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.r4 0
    IL_0006: ceq
    IL_0008: ldc.i4.0
    IL_0009: ceq
    IL_000B: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0010: ret
}
