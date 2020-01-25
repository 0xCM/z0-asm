// Id := 100664578, Name := T Z0.Logix.ScalarOps::select<T>(T,T,T)
// Int16 select<Int16>(Int16 a, Int16 b, Int16 c)
// AggressiveInlining
Int16 select<Int16>(Int16 a, Int16 b, Int16 c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call T Z0.gmath::select<T>(T,T,T)
    IL_0008: ret
}
