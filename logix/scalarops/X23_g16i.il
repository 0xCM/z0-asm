// Id := 100664614, Name := T Z0.Logix.ScalarOps::f23<T>(T,T,T)
// Int16 f23<Int16>(Int16 a, Int16 b, Int16 c)
// AggressiveInlining
Int16 f23<Int16>(Int16 a, Int16 b, Int16 c)
{
    IL_0000: ldarg.1
    IL_0001: call T Z0.Logix.ScalarOps::not<T>(T)
    IL_0006: ldarg.0
    IL_0007: call T Z0.Logix.ScalarOps::not<T>(T)
    IL_000C: ldarg.2
    IL_000D: call T Z0.Logix.ScalarOps::or<T>(T,T)
    IL_0012: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_0017: ret
}
