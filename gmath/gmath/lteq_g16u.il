// Id := 100664104, Name := Z0.bit Z0.gmath::lteq<T>(T,T)
// bit lteq<ushort>(ushort a, ushort b)
// AggressiveInlining
bit lteq<ushort>(ushort a, ushort b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call Z0.bit Z0.gmath::lteq_u<T>(T,T)
    IL_0007: ret
}
