// Id := 100664562, Name := T Z0.Logix.ScalarOps::lt<T>(T,T)
// byte lt<byte>(byte a, byte b)
// AggressiveInlining
byte lt<byte>(byte a, byte b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call Z0.bit Z0.gmath::lt<T>(T,T)
    IL_0007: call T Z0.Logix.ScalarOps::promote<T>(Z0.bit)
    IL_000C: ret
}
