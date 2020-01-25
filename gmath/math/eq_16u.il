// Id := 100663681, Name := Z0.bit Z0.math::eq(System.UInt16,System.UInt16)
// bit eq(ushort a, ushort b)
// AggressiveInlining
bit eq(ushort a, ushort b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ceq
    IL_0004: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0009: ret
}
