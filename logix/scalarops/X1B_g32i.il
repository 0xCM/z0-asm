// Id := 100664606, Name := T Z0.Logix.ScalarOps::f1b<T>(T,T,T)
// int f1b<int>(int a, int b, int c)
// AggressiveInlining
int f1b<int>(int a, int b, int c)
{
    IL_0000: ldarg.2
    IL_0001: ldarg.0
    IL_0002: call T Z0.Logix.ScalarOps::not<T>(T)
    IL_0007: ldarg.1
    IL_0008: call T Z0.Logix.ScalarOps::not<T>(T)
    IL_000D: call T Z0.Logix.ScalarOps::select<T>(T,T,T)
    IL_0012: ret
}
