// Id := 100664609, Name := T Z0.Logix.ScalarOps::f1e<T>(T,T,T)
// ushort f1e<ushort>(ushort a, ushort b, ushort c)
// AggressiveInlining
ushort f1e<ushort>(ushort a, ushort b, ushort c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call T Z0.Logix.ScalarOps::or<T>(T,T)
    IL_0008: call T Z0.Logix.ScalarOps::xor<T>(T,T)
    IL_000D: ret
}
