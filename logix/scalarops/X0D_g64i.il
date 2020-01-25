// Id := 100664592, Name := T Z0.Logix.ScalarOps::f0d<T>(T,T,T)
// long f0d<long>(long a, long b, long c)
// AggressiveInlining
long f0d<long>(long a, long b, long c)
{
    IL_0000: ldarg.0
    IL_0001: call T Z0.Logix.ScalarOps::not<T>(T)
    IL_0006: ldarg.1
    IL_0007: ldarg.2
    IL_0008: call T Z0.Logix.ScalarOps::xor1<T>(T)
    IL_000D: call T Z0.Logix.ScalarOps::or<T>(T,T)
    IL_0012: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_0017: ret
}
