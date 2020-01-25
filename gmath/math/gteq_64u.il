// Id := 100663709, Name := Z0.bit Z0.math::gteq(System.UInt64,System.UInt64)
// bit gteq(ulong a, ulong b)
// AggressiveInlining
bit gteq(ulong a, ulong b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: clt.un
    IL_0004: ldc.i4.0
    IL_0005: ceq
    IL_0007: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000C: ret
}
