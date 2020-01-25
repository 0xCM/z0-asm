// Id := 100664638, Name := T Z0.Logix.ScalarOps::f3b<T>(T,T,T)
// sbyte f3b<sbyte>(sbyte a, sbyte b, sbyte c)
// AggressiveInlining
sbyte f3b<sbyte>(sbyte a, sbyte b, sbyte c)
{
    IL_0000: ldarg.0
    IL_0001: call T Z0.Logix.ScalarOps::not<T>(T)
    IL_0006: ldarg.2
    IL_0007: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_000C: ldarg.1
    IL_000D: call T Z0.Logix.ScalarOps::xor1<T>(T)
    IL_0012: call T Z0.Logix.ScalarOps::or<T>(T,T)
    IL_0017: ret
}
