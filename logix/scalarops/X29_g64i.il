// Id := 100664620, Name := T Z0.Logix.ScalarOps::f29<T>(T,T,T)
// long f29<long>(long a, long b, long c)
// AggressiveInlining
long f29<long>(long a, long b, long c)
{
    IL_0000: ldarg.2
    IL_0001: ldarg.1
    IL_0002: ldarg.0
    IL_0003: call T Z0.Logix.ScalarOps::xor<T>(T,T)
    IL_0008: ldarg.1
    IL_0009: ldarg.0
    IL_000A: call T Z0.Logix.ScalarOps::nor<T>(T,T)
    IL_000F: call T Z0.Logix.ScalarOps::select<T>(T,T,T)
    IL_0014: ret
}
