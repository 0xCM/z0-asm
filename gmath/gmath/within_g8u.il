// Id := 100664126, Name := Z0.bit Z0.gmath::within<T>(T,T,T)
// bit within<byte>(byte a, byte b, byte delta)
// AggressiveInlining
bit within<byte>(byte a, byte b, byte delta)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call Z0.bit Z0.gmath::within_u<T>(T,T,T)
    IL_0008: ret
}
