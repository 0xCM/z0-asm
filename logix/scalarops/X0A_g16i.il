// Id := 100664589, Name := T Z0.Logix.ScalarOps::f0a<T>(T,T,T)
// Int16 f0a<Int16>(Int16 a, Int16 b, Int16 c)
// AggressiveInlining
Int16 f0a<Int16>(Int16 a, Int16 b, Int16 c)
{
    IL_0000: ldarg.2
    IL_0001: ldarg.0
    IL_0002: call T Z0.Logix.ScalarOps::not<T>(T)
    IL_0007: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_000C: ret
}
