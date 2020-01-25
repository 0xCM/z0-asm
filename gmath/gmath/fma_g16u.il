// Id := 100663978, Name := T Z0.gmath::fma<T>(T,T,T)
// ushort fma<ushort>(ushort x, ushort y, ushort z)
// AggressiveInlining
ushort fma<ushort>(ushort x, ushort y, ushort z)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call T Z0.gmath::fma_u<T>(T,T,T)
    IL_0008: ret
}
