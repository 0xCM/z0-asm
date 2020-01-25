// Id := 100664657, Name := T Z0.Logix.ScalarOps::f4e<T>(T,T,T)
// uint f4e<uint>(uint a, uint b, uint c)
// AggressiveInlining
uint f4e<uint>(uint a, uint b, uint c)
{
    IL_0000: ldarg.2
    IL_0001: ldarg.0
    IL_0002: call T Z0.Logix.ScalarOps::not<T>(T)
    IL_0007: ldarg.1
    IL_0008: call T Z0.Logix.ScalarOps::select<T>(T,T,T)
    IL_000D: ret
}
