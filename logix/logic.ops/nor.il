// Id := 100664316, Name := Z0.bit Z0.Logix.LogicOps::nor(Z0.bit,Z0.bit)
// bit nor(bit a, bit b)
// AggressiveInlining
bit nor(bit a, bit b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call Z0.bit Z0.bit::op_BitwiseOr(Z0.bit,Z0.bit)
    IL_0007: call Z0.bit Z0.bit::op_OnesComplement(Z0.bit)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
