// Id := 100664616, Name := T Z0.Logix.ScalarOps::f25<T>(T,T,T)
// ulong f25<ulong>(ulong a, ulong b, ulong c)
// AggressiveInlining
ulong f25<ulong>(ulong a, ulong b, ulong c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_0007: call T Z0.Logix.ScalarOps::not<T>(T)
    IL_000C: ldarg.0
    IL_000D: ldarg.2
    IL_000E: call T Z0.Logix.ScalarOps::not<T>(T)
    IL_0013: call T Z0.Logix.ScalarOps::xor<T>(T,T)
    IL_0018: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_001D: ret
}
