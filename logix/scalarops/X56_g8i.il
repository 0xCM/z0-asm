// Id := 100664665, Name := T Z0.Logix.ScalarOps::f56<T>(T,T,T)
// sbyte f56<sbyte>(sbyte a, sbyte b, sbyte c)
// AggressiveInlining
sbyte f56<sbyte>(sbyte a, sbyte b, sbyte c)
{
    IL_0000: ldarg.2
    IL_0001: ldarg.1
    IL_0002: ldarg.0
    IL_0003: call T Z0.Logix.ScalarOps::or<T>(T,T)
    IL_0008: call T Z0.Logix.ScalarOps::xor<T>(T,T)
    IL_000D: ret
}
