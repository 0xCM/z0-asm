// Id := 100664597, Name := T Z0.Logix.ScalarOps::f12<T>(T,T,T)
// sbyte f12<sbyte>(sbyte a, sbyte b, sbyte c)
// AggressiveInlining
sbyte f12<sbyte>(sbyte a, sbyte b, sbyte c)
{
    IL_0000: ldarg.1
    IL_0001: call T Z0.Logix.ScalarOps::not<T>(T)
    IL_0006: ldarg.0
    IL_0007: ldarg.2
    IL_0008: call T Z0.Logix.ScalarOps::xor<T>(T,T)
    IL_000D: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_0012: ret
}
