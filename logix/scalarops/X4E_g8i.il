// Id := 100664657, Name := T Z0.Logix.ScalarOps::f4e<T>(T,T,T)
// sbyte f4e<sbyte>(sbyte a, sbyte b, sbyte c)
// AggressiveInlining
sbyte f4e<sbyte>(sbyte a, sbyte b, sbyte c)
{
    IL_0000: ldarg.2
    IL_0001: ldarg.0
    IL_0002: call T Z0.Logix.ScalarOps::not<T>(T)
    IL_0007: ldarg.1
    IL_0008: call T Z0.Logix.ScalarOps::select<T>(T,T,T)
    IL_000D: ret
}
