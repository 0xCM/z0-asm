// Id := 100664566, Name := Z0.bit Z0.Logix.ScalarOps::same<T>(T,T)
// bit same<ulong>(ulong a, ulong b)
// AggressiveInlining
bit same<ulong>(ulong a, ulong b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call Z0.bit Z0.gmath::eq<T>(T,T)
    IL_0007: ret
}
