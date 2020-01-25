// Id := 100664650, Name := T Z0.Logix.ScalarOps::f47<T>(T,T,T)
// Int16 f47<Int16>(Int16 a, Int16 b, Int16 c)
// AggressiveInlining
Int16 f47<Int16>(Int16 a, Int16 b, Int16 c)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.2
    IL_0002: call T Z0.Logix.ScalarOps::not<T>(T)
    IL_0007: ldarg.0
    IL_0008: call T Z0.Logix.ScalarOps::not<T>(T)
    IL_000D: call T Z0.Logix.ScalarOps::select<T>(T,T,T)
    IL_0012: ret
}
