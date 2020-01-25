// Id := 100664585, Name := T Z0.Logix.ScalarOps::f06<T>(T,T,T)
// ushort f06<ushort>(ushort a, ushort b, ushort c)
// AggressiveInlining
ushort f06<ushort>(ushort a, ushort b, ushort c)
{
    IL_0000: ldarg.0
    IL_0001: call T Z0.Logix.ScalarOps::not<T>(T)
    IL_0006: ldarg.1
    IL_0007: ldarg.2
    IL_0008: call T Z0.Logix.ScalarOps::xor<T>(T,T)
    IL_000D: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_0012: ret
}
