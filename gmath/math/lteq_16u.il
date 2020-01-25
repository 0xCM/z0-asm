// Id := 100663721, Name := Z0.bit Z0.math::lteq(System.UInt16,System.UInt16)
// bit lteq(ushort a, ushort b)
// AggressiveInlining
bit lteq(ushort a, ushort b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: cgt
    IL_0004: ldc.i4.0
    IL_0005: ceq
    IL_0007: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000C: ret
}
