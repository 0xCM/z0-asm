// Id := 100664549, Name := T Z0.Logix.ScalarOps::xor<T>(T,T)
// ulong xor<ulong>(ulong a, ulong b)
// AggressiveInlining
ulong xor<ulong>(ulong a, ulong b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call T Z0.gmath::xor<T>(T,T)
    IL_0007: ret
}
