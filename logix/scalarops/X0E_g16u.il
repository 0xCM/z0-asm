// Id := 100664593, Name := T Z0.Logix.ScalarOps::f0e<T>(T,T,T)
// ushort f0e<ushort>(ushort a, ushort b, ushort c)
// AggressiveInlining
ushort f0e<ushort>(ushort a, ushort b, ushort c)
{
    IL_0000: ldarg.0
    IL_0001: call T Z0.Logix.ScalarOps::not<T>(T)
    IL_0006: ldarg.1
    IL_0007: ldarg.2
    IL_0008: call T Z0.Logix.ScalarOps::or<T>(T,T)
    IL_000D: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_0012: ret
}
