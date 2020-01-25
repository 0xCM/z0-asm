// Id := 100664097, Name := Z0.bit Z0.gmath::gteq<T>(T,T)
// bit gteq<ulong>(ulong a, ulong b)
// AggressiveInlining
bit gteq<ulong>(ulong a, ulong b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call Z0.bit Z0.gmath::gteq_u<T>(T,T)
    IL_0007: ret
}
