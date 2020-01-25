// Id := 100664587, Name := T Z0.Logix.ScalarOps::f08<T>(T,T,T)
// long f08<long>(long a, long b, long c)
// AggressiveInlining
long f08<long>(long a, long b, long c)
{
    IL_0000: ldarg.0
    IL_0001: call T Z0.Logix.ScalarOps::not<T>(T)
    IL_0006: ldarg.1
    IL_0007: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_000C: ldarg.2
    IL_000D: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_0012: ret
}
