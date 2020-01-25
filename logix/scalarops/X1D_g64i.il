// Id := 100664608, Name := T Z0.Logix.ScalarOps::f1d<T>(T,T,T)
// long f1d<long>(long a, long b, long c)
// AggressiveInlining
long f1d<long>(long a, long b, long c)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: call T Z0.Logix.ScalarOps::not<T>(T)
    IL_0007: ldarg.2
    IL_0008: call T Z0.Logix.ScalarOps::not<T>(T)
    IL_000D: call T Z0.Logix.ScalarOps::select<T>(T,T,T)
    IL_0012: ret
}
