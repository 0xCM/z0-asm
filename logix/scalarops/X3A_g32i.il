// Id := 100664637, Name := T Z0.Logix.ScalarOps::f3a<T>(T,T,T)
// int f3a<int>(int a, int b, int c)
// AggressiveInlining
int f3a<int>(int a, int b, int c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call T Z0.Logix.ScalarOps::not<T>(T)
    IL_0007: ldarg.2
    IL_0008: call T Z0.Logix.ScalarOps::select<T>(T,T,T)
    IL_000D: ret
}
