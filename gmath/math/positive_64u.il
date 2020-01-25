// Id := 100663765, Name := Z0.bit Z0.math::positive(System.UInt64)
// bit positive(ulong a)
// AggressiveInlining
bit positive(ulong a)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.0
    IL_0002: conv.i8
    IL_0003: cgt.un
    IL_0005: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000A: ret
}
