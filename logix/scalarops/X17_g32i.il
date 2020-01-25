// Id := 100664602, Name := T Z0.Logix.ScalarOps::f17<T>(T,T,T)
// int f17<int>(int a, int b, int c)
// AggressiveInlining
int f17<int>(int a, int b, int c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call T Z0.Logix.ScalarOps::or<T>(T,T)
    IL_0008: ldarg.1
    IL_0009: ldarg.2
    IL_000A: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_000F: call T Z0.Logix.ScalarOps::select<T>(T,T,T)
    IL_0014: call T Z0.Logix.ScalarOps::not<T>(T)
    IL_0019: ret
}
