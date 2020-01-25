// Id := 100664607, Name := T Z0.Logix.ScalarOps::f1c<T>(T,T,T)
// uint f1c<uint>(uint a, uint b, uint c)
// AggressiveInlining
uint f1c<uint>(uint a, uint b, uint c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.2
    IL_0002: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_0007: call T Z0.Logix.ScalarOps::not<T>(T)
    IL_000C: ldarg.0
    IL_000D: ldarg.1
    IL_000E: call T Z0.Logix.ScalarOps::xor<T>(T,T)
    IL_0013: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_0018: ret
}
