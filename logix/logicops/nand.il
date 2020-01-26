// Id := 100664319, Name := Z0.bit Z0.Logix.LogicOps::nand(Z0.bit,Z0.bit)
// bit nand(bit a, bit b)
// AggressiveInlining
bit nand(bit a, bit b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call Z0.bit Z0.bit::op_BitwiseAnd(Z0.bit,Z0.bit)
    IL_0007: call Z0.bit Z0.bit::op_LogicalNot(Z0.bit)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
