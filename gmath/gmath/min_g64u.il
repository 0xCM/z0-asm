// Id := 100664112, Name := T Z0.gmath::min<T>(T,T)
// ulong min<ulong>(ulong a, ulong b)
// AggressiveInlining
ulong min<ulong>(ulong a, ulong b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call T Z0.gmath::min_u<T>(T,T)
    IL_0007: ret
}
