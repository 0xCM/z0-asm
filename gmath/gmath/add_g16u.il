// Id := 100663946, Name := T Z0.gmath::add<T>(T,T)
// ushort add<ushort>(ushort a, ushort b)
// AggressiveInlining
ushort add<ushort>(ushort a, ushort b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call T Z0.gmath::add_u<T>(T,T)
    IL_0007: ret
}
