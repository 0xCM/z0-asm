// Id := 100663774, Name := Z0.bit Z0.math::within(System.Int64,System.Int64,System.Int64)
// bit within(long a, long b, long tolerance)
// AggressiveInlining
bit within(long a, long b, long tolerance)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt64 Z0.math::dist(System.Int64,System.Int64)
    IL_0007: ldarg.2
    IL_0008: cgt.un
    IL_000A: ldc.i4.0
    IL_000B: ceq
    IL_000D: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0012: ret
}
