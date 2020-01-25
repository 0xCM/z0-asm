// Id := 100664600, Name := T Z0.Logix.ScalarOps::f15<T>(T,T,T)
// long f15<long>(long a, long b, long c)
// AggressiveInlining
long f15<long>(long a, long b, long c)
{
    IL_0000: ldarg.2
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_0008: call T Z0.Logix.ScalarOps::nor<T>(T,T)
    IL_000D: ret
}
