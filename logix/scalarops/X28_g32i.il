// Id := 100664619, Name := T Z0.Logix.ScalarOps::f28<T>(T,T,T)
// int f28<int>(int a, int b, int c)
// AggressiveInlining
int f28<int>(int a, int b, int c)
{
    IL_0000: ldarg.2
    IL_0001: ldarg.1
    IL_0002: ldarg.0
    IL_0003: call T Z0.Logix.ScalarOps::xor<T>(T,T)
    IL_0008: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_000D: ret
}
