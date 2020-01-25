// Id := 100664325, Name := Z0.bit Z0.Logix.LogicOps::nonimpl(Z0.bit,Z0.bit)
// bit nonimpl(bit a, bit b)
// AggressiveInlining
bit nonimpl(bit a, bit b)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.bit Z0.bit::op_OnesComplement(Z0.bit)
    IL_0006: ldarg.1
    IL_0007: call Z0.bit Z0.bit::op_BitwiseAnd(Z0.bit,Z0.bit)
    IL_000C: ret
}
