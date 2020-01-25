// Id := 100664060, Name := T Z0.gmath::xnor<T>(T,T)
// ushort xnor<ushort>(ushort a, ushort b)
// AggressiveInlining
ushort xnor<ushort>(ushort a, ushort b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call T Z0.gmath::xnor_u<T>(T,T)
    IL_0007: ret
}
