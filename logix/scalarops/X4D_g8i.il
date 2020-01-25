// Id := 100664656, Name := T Z0.Logix.ScalarOps::f4d<T>(T,T,T)
// sbyte f4d<sbyte>(sbyte a, sbyte b, sbyte c)
// AggressiveInlining
sbyte f4d<sbyte>(sbyte a, sbyte b, sbyte c)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldarg.2
    IL_0003: call T Z0.Logix.ScalarOps::nand<T>(T,T)
    IL_0008: ldarg.0
    IL_0009: ldarg.2
    IL_000A: call T Z0.Logix.ScalarOps::nor<T>(T,T)
    IL_000F: call T Z0.Logix.ScalarOps::select<T>(T,T,T)
    IL_0014: ret
}
