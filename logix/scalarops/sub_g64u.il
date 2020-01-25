// Id := 100664572, Name := T Z0.Logix.ScalarOps::sub<T>(T,T)
// ulong sub<ulong>(ulong a, ulong b)
// AggressiveInlining
ulong sub<ulong>(ulong a, ulong b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call T Z0.gmath::sub<T>(T,T)
    IL_0007: ret
}
