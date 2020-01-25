// Id := 100664330, Name := Z0.bit Z0.Logix.LogicOps::cimpl(Z0.bit,Z0.bit)
// bit cimpl(bit a, bit b)
// AggressiveInlining
bit cimpl(bit a, bit b)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.bit Z0.bit::op_OnesComplement(Z0.bit)
    IL_0006: ldarg.1
    IL_0007: call Z0.bit Z0.bit::op_BitwiseOr(Z0.bit,Z0.bit)
    IL_000C: ret
}
