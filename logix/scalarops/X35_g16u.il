// Id := 100664632, Name := T Z0.Logix.ScalarOps::f35<T>(T,T,T)
// ushort f35<ushort>(ushort a, ushort b, ushort c)
// AggressiveInlining
ushort f35<ushort>(ushort a, ushort b, ushort c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call T Z0.Logix.ScalarOps::not<T>(T)
    IL_0007: ldarg.2
    IL_0008: call T Z0.Logix.ScalarOps::not<T>(T)
    IL_000D: call T Z0.Logix.ScalarOps::select<T>(T,T,T)
    IL_0012: ret
}
