// Id := 100664612, Name := T Z0.Logix.ScalarOps::f21<T>(T,T,T)
// ushort f21<ushort>(ushort a, ushort b, ushort c)
// AggressiveInlining
ushort f21<ushort>(ushort a, ushort b, ushort c)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldarg.2
    IL_0003: call T Z0.Logix.ScalarOps::xor<T>(T,T)
    IL_0008: call T Z0.Logix.ScalarOps::nor<T>(T,T)
    IL_000D: ret
}
