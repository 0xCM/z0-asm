// Id := 100663692, Name := Z0.bit Z0.math::neq(System.Int64,System.Int64)
// bit neq(long a, long b)
// AggressiveInlining
bit neq(long a, long b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ceq
    IL_0004: ldc.i4.0
    IL_0005: ceq
    IL_0007: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000C: ret
}
