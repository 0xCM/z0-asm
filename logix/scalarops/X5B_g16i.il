// Id := 100664670, Name := T Z0.Logix.ScalarOps::f5b<T>(T,T,T)
// Int16 f5b<Int16>(Int16 a, Int16 b, Int16 c)
// AggressiveInlining
Int16 f5b<Int16>(Int16 a, Int16 b, Int16 c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.2
    IL_0002: call T Z0.Logix.ScalarOps::xor<T>(T,T)
    IL_0007: ldarg.0
    IL_0008: ldarg.1
    IL_0009: call T Z0.Logix.ScalarOps::or<T>(T,T)
    IL_000E: call T Z0.Logix.ScalarOps::ones<T>()
    IL_0013: call T Z0.Logix.ScalarOps::xor<T>(T,T)
    IL_0018: call T Z0.Logix.ScalarOps::or<T>(T,T)
    IL_001D: ret
}
