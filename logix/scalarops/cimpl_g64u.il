// Id := 100664557, Name := T Z0.Logix.ScalarOps::cimpl<T>(T,T)
// ulong cimpl<ulong>(ulong a, ulong b)
// AggressiveInlining
ulong cimpl<ulong>(ulong a, ulong b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call T Z0.gmath::cimpl<T>(T,T)
    IL_0007: ret
}
