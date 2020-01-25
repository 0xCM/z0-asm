// Id := 100664597, Name := T Z0.Logix.ScalarOps::f12<T>(T,T,T)
// uint f12<uint>(uint a, uint b, uint c)
// AggressiveInlining
uint f12<uint>(uint a, uint b, uint c)
{
    IL_0000: ldarg.1
    IL_0001: call T Z0.Logix.ScalarOps::not<T>(T)
    IL_0006: ldarg.0
    IL_0007: ldarg.2
    IL_0008: call T Z0.Logix.ScalarOps::xor<T>(T,T)
    IL_000D: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_0012: ret
}
