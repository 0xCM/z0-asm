// Id := 100664036, Name := T Z0.gmath::nand<T>(T,T)
// long nand<long>(long a, long b)
// AggressiveInlining
long nand<long>(long a, long b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call T Z0.gmath::nand_u<T>(T,T)
    IL_0007: ret
}
