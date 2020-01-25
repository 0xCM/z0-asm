// Id := 100663754, Name := Z0.bit Z0.math::nonzero(System.Int64)
// bit nonzero(long src)
// AggressiveInlining
bit nonzero(long src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.0
    IL_0002: conv.i8
    IL_0003: cgt.un
    IL_0005: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000A: ret
}
