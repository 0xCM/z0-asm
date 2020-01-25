// Id := 100663378, Name := Z0.bit Z0.math::divides(System.UInt64,System.UInt64)
// bit divides(ulong a, ulong b)
// AggressiveInlining
bit divides(ulong a, ulong b)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: rem.un
    IL_0003: ldc.i4.0
    IL_0004: conv.i8
    IL_0005: ceq
    IL_0007: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000C: ret
}
