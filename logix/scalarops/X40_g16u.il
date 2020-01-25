// Id := 100664643, Name := T Z0.Logix.ScalarOps::f40<T>(T,T,T)
// ushort f40<ushort>(ushort a, ushort b, ushort c)
// AggressiveInlining
ushort f40<ushort>(ushort a, ushort b, ushort c)
{
    IL_0000: ldarg.2
    IL_0001: call T Z0.Logix.ScalarOps::not<T>(T)
    IL_0006: ldarg.0
    IL_0007: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_000C: ldarg.1
    IL_000D: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_0012: ret
}
