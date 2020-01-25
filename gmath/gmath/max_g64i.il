// Id := 100664109, Name := T Z0.gmath::max<T>(T,T)
// long max<long>(long a, long b)
// AggressiveInlining
long max<long>(long a, long b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call T Z0.gmath::max_u<T>(T,T)
    IL_0007: ret
}
