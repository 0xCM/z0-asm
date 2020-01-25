// Id := 100664665, Name := T Z0.Logix.ScalarOps::f56<T>(T,T,T)
// ulong f56<ulong>(ulong a, ulong b, ulong c)
// AggressiveInlining
ulong f56<ulong>(ulong a, ulong b, ulong c)
{
    IL_0000: ldarg.2
    IL_0001: ldarg.1
    IL_0002: ldarg.0
    IL_0003: call T Z0.Logix.ScalarOps::or<T>(T,T)
    IL_0008: call T Z0.Logix.ScalarOps::xor<T>(T,T)
    IL_000D: ret
}
