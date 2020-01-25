// Id := 100664601, Name := T Z0.Logix.ScalarOps::f16<T>(T,T,T)
// ushort f16<ushort>(ushort a, ushort b, ushort c)
// AggressiveInlining
ushort f16<ushort>(ushort a, ushort b, ushort c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call T Z0.Logix.ScalarOps::nor<T>(T,T)
    IL_0008: ldarg.1
    IL_0009: ldarg.2
    IL_000A: call T Z0.Logix.ScalarOps::xor<T>(T,T)
    IL_000F: call T Z0.Logix.ScalarOps::select<T>(T,T,T)
    IL_0014: ret
}
