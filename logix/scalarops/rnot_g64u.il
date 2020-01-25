// Id := 100664554, Name := T Z0.Logix.ScalarOps::rnot<T>(T,T)
// ulong rnot<ulong>(ulong a, ulong b)
// AggressiveInlining
ulong rnot<ulong>(ulong a, ulong b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call T Z0.gmath::rnot<T>(T,T)
    IL_0007: ret
}
