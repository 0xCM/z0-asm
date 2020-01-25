// Id := 100664565, Name := T Z0.Logix.ScalarOps::gteq<T>(T,T)
// uint gteq<uint>(uint a, uint b)
// AggressiveInlining
uint gteq<uint>(uint a, uint b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call Z0.bit Z0.gmath::gteq<T>(T,T)
    IL_0007: call T Z0.Logix.ScalarOps::promote<T>(Z0.bit)
    IL_000C: ret
}
