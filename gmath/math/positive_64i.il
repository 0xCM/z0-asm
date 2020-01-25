// Id := 100663764, Name := Z0.bit Z0.math::positive(System.Int64)
// bit positive(long a)
// AggressiveInlining
bit positive(long a)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.0
    IL_0002: conv.i8
    IL_0003: cgt
    IL_0005: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000A: ret
}
