// Id := 100664644, Name := T Z0.Logix.ScalarOps::f41<T>(T,T,T)
// uint f41<uint>(uint a, uint b, uint c)
// AggressiveInlining
uint f41<uint>(uint a, uint b, uint c)
{
    IL_0000: ldarg.2
    IL_0001: ldarg.1
    IL_0002: ldarg.0
    IL_0003: call T Z0.Logix.ScalarOps::xor<T>(T,T)
    IL_0008: call T Z0.Logix.ScalarOps::nor<T>(T,T)
    IL_000D: ret
}
