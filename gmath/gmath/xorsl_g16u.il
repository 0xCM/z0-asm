// Id := 100664082, Name := T Z0.gmath::xorsl<T>(T,System.Byte)
// ushort xorsl<ushort>(ushort a, byte offset)
// AggressiveInlining
ushort xorsl<ushort>(ushort a, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call T Z0.gmath::xorsl_u<T>(T,System.Byte)
    IL_0007: ret
}
