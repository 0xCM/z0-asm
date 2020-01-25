// Id := 100664566, Name := Z0.bit Z0.Logix.ScalarOps::same<T>(T,T)
// bit same<Int16>(Int16 a, Int16 b)
// AggressiveInlining
bit same<Int16>(Int16 a, Int16 b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call Z0.bit Z0.gmath::eq<T>(T,T)
    IL_0007: ret
}
