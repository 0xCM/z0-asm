// Id := 100663720, Name := Z0.bit Z0.math::lteq(System.Int16,System.Int16)
// bit lteq(Int16 a, Int16 b)
// AggressiveInlining
bit lteq(Int16 a, Int16 b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: cgt
    IL_0004: ldc.i4.0
    IL_0005: ceq
    IL_0007: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000C: ret
}
