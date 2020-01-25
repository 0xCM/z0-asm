// Id := 100664640, Name := T Z0.Logix.ScalarOps::f3d<T>(T,T,T)
// sbyte f3d<sbyte>(sbyte a, sbyte b, sbyte c)
// AggressiveInlining
sbyte f3d<sbyte>(sbyte a, sbyte b, sbyte c)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: call T Z0.Logix.ScalarOps::xor<T>(T,T)
    IL_0007: ldarg.0
    IL_0008: ldarg.2
    IL_0009: call T Z0.Logix.ScalarOps::nor<T>(T,T)
    IL_000E: call T Z0.Logix.ScalarOps::or<T>(T,T)
    IL_0013: ret
}
