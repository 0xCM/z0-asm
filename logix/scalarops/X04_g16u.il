// Id := 100664583, Name := T Z0.Logix.ScalarOps::f04<T>(T,T,T)
// ushort f04<ushort>(ushort a, ushort b, ushort c)
// AggressiveInlining
ushort f04<ushort>(ushort a, ushort b, ushort c)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldarg.2
    IL_0003: call T Z0.Logix.ScalarOps::nor<T>(T,T)
    IL_0008: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_000D: ret
}
