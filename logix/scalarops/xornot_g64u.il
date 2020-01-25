// Id := 100664559, Name := T Z0.Logix.ScalarOps::xornot<T>(T,T)
// ulong xornot<ulong>(ulong a, ulong b)
// AggressiveInlining
ulong xornot<ulong>(ulong a, ulong b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call T Z0.gmath::xornot<T>(T,T)
    IL_0007: ret
}
