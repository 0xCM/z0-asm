// Id := 100664603, Name := T Z0.Logix.ScalarOps::f18<T>(T,T,T)
// ushort f18<ushort>(ushort a, ushort b, ushort c)
// AggressiveInlining
ushort f18<ushort>(ushort a, ushort b, ushort c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call T Z0.Logix.ScalarOps::xor<T>(T,T)
    IL_0007: ldarg.0
    IL_0008: ldarg.2
    IL_0009: call T Z0.Logix.ScalarOps::xor<T>(T,T)
    IL_000E: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_0013: ret
}
