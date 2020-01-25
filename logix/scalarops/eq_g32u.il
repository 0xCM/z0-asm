// Id := 100664560, Name := T Z0.Logix.ScalarOps::equals<T>(T,T)
// uint equals<uint>(uint a, uint b)
// AggressiveInlining
uint equals<uint>(uint a, uint b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call Z0.bit Z0.gmath::eq<T>(T,T)
    IL_0007: call T Z0.Logix.ScalarOps::promote<T>(Z0.bit)
    IL_000C: ret
}
