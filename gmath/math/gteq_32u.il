// Id := 100663707, Name := Z0.bit Z0.math::gteq(System.UInt32,System.UInt32)
// bit gteq(uint a, uint b)
// AggressiveInlining
bit gteq(uint a, uint b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: clt.un
    IL_0004: ldc.i4.0
    IL_0005: ceq
    IL_0007: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000C: ret
}
