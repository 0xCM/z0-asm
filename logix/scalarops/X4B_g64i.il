// Id := 100664654, Name := T Z0.Logix.ScalarOps::f4b<T>(T,T,T)
// long f4b<long>(long a, long b, long c)
// AggressiveInlining
long f4b<long>(long a, long b, long c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call T Z0.Logix.ScalarOps::not<T>(T)
    IL_0007: ldarg.2
    IL_0008: call T Z0.Logix.ScalarOps::or<T>(T,T)
    IL_000D: call T Z0.Logix.ScalarOps::xor<T>(T,T)
    IL_0012: ret
}
