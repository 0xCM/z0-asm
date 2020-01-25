// Id := 100664587, Name := T Z0.Logix.ScalarOps::f08<T>(T,T,T)
// ulong f08<ulong>(ulong a, ulong b, ulong c)
// AggressiveInlining
ulong f08<ulong>(ulong a, ulong b, ulong c)
{
    IL_0000: ldarg.0
    IL_0001: call T Z0.Logix.ScalarOps::not<T>(T)
    IL_0006: ldarg.1
    IL_0007: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_000C: ldarg.2
    IL_000D: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_0012: ret
}
