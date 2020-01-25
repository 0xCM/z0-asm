// Id := 100664574, Name := T Z0.Logix.ScalarOps::mod<T>(T,T)
// long mod<long>(long a, long b)
// AggressiveInlining
long mod<long>(long a, long b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call T Z0.gmath::mod<T>(T,T)
    IL_0007: ret
}
