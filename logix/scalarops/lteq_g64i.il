// Id := 100664563, Name := T Z0.Logix.ScalarOps::lteq<T>(T,T)
// long lteq<long>(long a, long b)
// AggressiveInlining
long lteq<long>(long a, long b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call Z0.bit Z0.gmath::lteq<T>(T,T)
    IL_0007: call T Z0.Logix.ScalarOps::promote<T>(Z0.bit)
    IL_000C: ret
}
