// Id := 100664571, Name := T Z0.Logix.ScalarOps::add<T>(T,T)
// sbyte add<sbyte>(sbyte a, sbyte b)
// AggressiveInlining
sbyte add<sbyte>(sbyte a, sbyte b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call T Z0.gmath::add<T>(T,T)
    IL_0007: ret
}
