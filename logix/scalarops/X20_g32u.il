// Id := 100664611, Name := T Z0.Logix.ScalarOps::f20<T>(T,T,T)
// uint f20<uint>(uint a, uint b, uint c)
// AggressiveInlining
uint f20<uint>(uint a, uint b, uint c)
{
    IL_0000: ldarg.1
    IL_0001: call T Z0.Logix.ScalarOps::not<T>(T)
    IL_0006: ldarg.0
    IL_0007: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_000C: ldarg.2
    IL_000D: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_0012: ret
}
