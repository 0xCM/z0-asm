// Id := 100664649, Name := T Z0.Logix.ScalarOps::f46<T>(T,T,T)
// int f46<int>(int a, int b, int c)
// AggressiveInlining
int f46<int>(int a, int b, int c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.2
    IL_0002: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_0007: call T Z0.Logix.ScalarOps::not<T>(T)
    IL_000C: ldarg.1
    IL_000D: ldarg.2
    IL_000E: call T Z0.Logix.ScalarOps::xor<T>(T,T)
    IL_0013: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_0018: ret
}
