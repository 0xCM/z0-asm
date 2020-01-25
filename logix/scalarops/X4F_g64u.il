// Id := 100664658, Name := T Z0.Logix.ScalarOps::f4f<T>(T,T,T)
// ulong f4f<ulong>(ulong a, ulong b, ulong c)
// AggressiveInlining
ulong f4f<ulong>(ulong a, ulong b, ulong c)
{
    IL_0000: ldarg.0
    IL_0001: call T Z0.Logix.ScalarOps::not<T>(T)
    IL_0006: ldarg.1
    IL_0007: ldarg.2
    IL_0008: call T Z0.Logix.ScalarOps::cnonimpl<T>(T,T)
    IL_000D: call T Z0.Logix.ScalarOps::or<T>(T,T)
    IL_0012: ret
}
