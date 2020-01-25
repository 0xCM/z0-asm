// Id := 100664126, Name := Z0.bit Z0.gmath::within<T>(T,T,T)
// bit within<sbyte>(sbyte a, sbyte b, sbyte delta)
// AggressiveInlining
bit within<sbyte>(sbyte a, sbyte b, sbyte delta)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call Z0.bit Z0.gmath::within_u<T>(T,T,T)
    IL_0008: ret
}
