// Id := 100663975, Name := Z0.bit Z0.gmath::even<T>(T)
// bit even<ushort>(ushort a)
// AggressiveInlining
bit even<ushort>(ushort a)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.bit Z0.gmath::odd<T>(T)
    IL_0006: call Z0.bit Z0.bit::op_LogicalNot(Z0.bit)
    IL_000B: ret
}
