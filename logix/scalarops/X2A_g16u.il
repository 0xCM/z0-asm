// Id := 100664621, Name := T Z0.Logix.ScalarOps::f2a<T>(T,T,T)
// ushort f2a<ushort>(ushort a, ushort b, ushort c)
// AggressiveInlining
ushort f2a<ushort>(ushort a, ushort b, ushort c)
{
    IL_0000: ldarg.2
    IL_0001: ldarg.1
    IL_0002: ldarg.0
    IL_0003: call T Z0.Logix.ScalarOps::nand<T>(T,T)
    IL_0008: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_000D: ret
}
