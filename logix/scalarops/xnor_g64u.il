// Id := 100664550, Name := T Z0.Logix.ScalarOps::xnor<T>(T,T)
// ulong xnor<ulong>(ulong a, ulong b)
// AggressiveInlining
ulong xnor<ulong>(ulong a, ulong b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call T Z0.gmath::xnor<T>(T,T)
    IL_0007: ret
}
