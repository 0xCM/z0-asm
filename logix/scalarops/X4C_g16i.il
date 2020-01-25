// Id := 100664655, Name := T Z0.Logix.ScalarOps::f4c<T>(T,T,T)
// Int16 f4c<Int16>(Int16 a, Int16 b, Int16 c)
// AggressiveInlining
Int16 f4c<Int16>(Int16 a, Int16 b, Int16 c)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldarg.2
    IL_0003: call T Z0.Logix.ScalarOps::nand<T>(T,T)
    IL_0008: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_000D: ret
}
