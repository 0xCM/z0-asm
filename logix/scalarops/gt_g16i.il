// Id := 100664564, Name := T Z0.Logix.ScalarOps::gt<T>(T,T)
// Int16 gt<Int16>(Int16 a, Int16 b)
// AggressiveInlining
Int16 gt<Int16>(Int16 a, Int16 b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call Z0.bit Z0.gmath::gt<T>(T,T)
    IL_0007: call T Z0.Logix.ScalarOps::promote<T>(Z0.bit)
    IL_000C: ret
}
