// Id := 100663773, Name := Z0.bit Z0.math::within(System.UInt32,System.UInt32,System.UInt32)
// bit within(uint a, uint b, uint tolerance)
// AggressiveInlining
bit within(uint a, uint b, uint tolerance)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt64 Z0.math::dist(System.UInt32,System.UInt32)
    IL_0007: ldarg.2
    IL_0008: conv.u8
    IL_0009: cgt.un
    IL_000B: ldc.i4.0
    IL_000C: ceq
    IL_000E: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0013: ret
}
