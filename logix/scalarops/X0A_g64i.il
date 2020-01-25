// Id := 100664589, Name := T Z0.Logix.ScalarOps::f0a<T>(T,T,T)
// long f0a<long>(long a, long b, long c)
// AggressiveInlining
long f0a<long>(long a, long b, long c)
{
    IL_0000: ldarg.2
    IL_0001: ldarg.0
    IL_0002: call T Z0.Logix.ScalarOps::not<T>(T)
    IL_0007: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_000C: ret
}
