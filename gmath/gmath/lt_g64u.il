// Id := 100664102, Name := Z0.bit Z0.gmath::lt<T>(T,T)
// bit lt<ulong>(ulong a, ulong b)
// AggressiveInlining
bit lt<ulong>(ulong a, ulong b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call Z0.bit Z0.gmath::lt_u<T>(T,T)
    IL_0007: ret
}
