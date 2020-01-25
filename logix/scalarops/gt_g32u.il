// Id := 100664564, Name := T Z0.Logix.ScalarOps::gt<T>(T,T)
// uint gt<uint>(uint a, uint b)
// AggressiveInlining
uint gt<uint>(uint a, uint b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call Z0.bit Z0.gmath::gt<T>(T,T)
    IL_0007: call T Z0.Logix.ScalarOps::promote<T>(Z0.bit)
    IL_000C: ret
}
