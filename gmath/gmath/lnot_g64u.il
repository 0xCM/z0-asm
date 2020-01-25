// Id := 100664055, Name := T Z0.gmath::lnot<T>(T,T)
// ulong lnot<ulong>(ulong a, ulong b)
// AggressiveInlining
ulong lnot<ulong>(ulong a, ulong b)
{
    IL_0000: ldarg.0
    IL_0001: call T Z0.gmath::not<T>(T)
    IL_0006: ret
}
