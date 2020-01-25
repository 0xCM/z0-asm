// Id := 100664667, Name := T Z0.Logix.ScalarOps::f58<T>(T,T,T)
// long f58<long>(long a, long b, long c)
// AggressiveInlining
long f58<long>(long a, long b, long c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call T Z0.Logix.ScalarOps::or<T>(T,T)
    IL_0007: ldarg.0
    IL_0008: ldarg.2
    IL_0009: call T Z0.Logix.ScalarOps::xor<T>(T,T)
    IL_000E: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_0013: ret
}
