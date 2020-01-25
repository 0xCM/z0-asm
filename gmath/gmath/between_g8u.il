// Id := 100664088, Name := Z0.bit Z0.gmath::between<T>(T,T,T)
// bit between<byte>(byte x, byte min, byte max)
// AggressiveInlining
bit between<byte>(byte x, byte min, byte max)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call Z0.bit Z0.gmath::between_u<T>(T,T,T)
    IL_0008: ret
}
