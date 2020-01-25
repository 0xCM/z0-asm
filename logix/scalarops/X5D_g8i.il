// Id := 100664672, Name := T Z0.Logix.ScalarOps::f5d<T>(T,T,T)
// sbyte f5d<sbyte>(sbyte a, sbyte b, sbyte c)
// AggressiveInlining
sbyte f5d<sbyte>(sbyte a, sbyte b, sbyte c)
{
    IL_0000: ldarg.2
    IL_0001: call T Z0.Logix.ScalarOps::not<T>(T)
    IL_0006: ldarg.0
    IL_0007: call T Z0.Logix.ScalarOps::not<T>(T)
    IL_000C: ldarg.1
    IL_000D: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_0012: call T Z0.Logix.ScalarOps::or<T>(T,T)
    IL_0017: ret
}
