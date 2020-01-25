// Id := 100664668, Name := T Z0.Logix.ScalarOps::f59<T>(T,T,T)
// int f59<int>(int a, int b, int c)
// AggressiveInlining
int f59<int>(int a, int b, int c)
{
    IL_0000: ldarg.2
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: call T Z0.Logix.ScalarOps::not<T>(T)
    IL_0008: call T Z0.Logix.ScalarOps::or<T>(T,T)
    IL_000D: call T Z0.Logix.ScalarOps::xor<T>(T,T)
    IL_0012: ret
}
