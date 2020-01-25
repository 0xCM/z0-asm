// Id := 100663377, Name := Z0.bit Z0.math::divides(System.Int64,System.Int64)
// bit divides(long a, long b)
// AggressiveInlining
bit divides(long a, long b)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: rem
    IL_0003: ldc.i4.0
    IL_0004: conv.i8
    IL_0005: ceq
    IL_0007: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000C: ret
}
