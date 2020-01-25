// Id := 100664553, Name := T Z0.Logix.ScalarOps::lnot<T>(T,T)
// ushort lnot<ushort>(ushort a, ushort b)
// AggressiveInlining
ushort lnot<ushort>(ushort a, ushort b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call T Z0.gmath::lnot<T>(T,T)
    IL_0007: ret
}
