// Id := 100664631, Name := T Z0.Logix.ScalarOps::f34<T>(T,T,T)
// int f34<int>(int a, int b, int c)
// AggressiveInlining
int f34<int>(int a, int b, int c)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.2
    IL_0002: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_0007: call T Z0.Logix.ScalarOps::not<T>(T)
    IL_000C: ldarg.0
    IL_000D: ldarg.1
    IL_000E: call T Z0.Logix.ScalarOps::xor<T>(T,T)
    IL_0013: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_0018: ret
}
