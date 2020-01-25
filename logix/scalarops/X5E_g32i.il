// Id := 100664673, Name := T Z0.Logix.ScalarOps::f5e<T>(T,T,T)
// int f5e<int>(int a, int b, int c)
// AggressiveInlining
int f5e<int>(int a, int b, int c)
{
    IL_0000: ldarg.2
    IL_0001: call T Z0.Logix.ScalarOps::not<T>(T)
    IL_0006: ldarg.1
    IL_0007: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_000C: ldarg.0
    IL_000D: ldarg.2
    IL_000E: call T Z0.Logix.ScalarOps::xor<T>(T,T)
    IL_0013: call T Z0.Logix.ScalarOps::or<T>(T,T)
    IL_0018: ret
}
