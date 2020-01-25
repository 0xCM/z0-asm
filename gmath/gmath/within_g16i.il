// Id := 100664126, Name := Z0.bit Z0.gmath::within<T>(T,T,T)
// bit within<Int16>(Int16 a, Int16 b, Int16 delta)
// AggressiveInlining
bit within<Int16>(Int16 a, Int16 b, Int16 delta)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call Z0.bit Z0.gmath::within_u<T>(T,T,T)
    IL_0008: ret
}
