// Id := 100664591, Name := T Z0.Logix.ScalarOps::f0c<T>(T,T,T)
// Int16 f0c<Int16>(Int16 a, Int16 b, Int16 c)
// AggressiveInlining
Int16 f0c<Int16>(Int16 a, Int16 b, Int16 c)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: call T Z0.Logix.ScalarOps::not<T>(T)
    IL_0007: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_000C: ret
}
