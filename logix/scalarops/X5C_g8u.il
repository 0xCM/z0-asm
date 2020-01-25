// Id := 100664671, Name := T Z0.Logix.ScalarOps::f5c<T>(T,T,T)
// byte f5c<byte>(byte a, byte b, byte c)
// AggressiveInlining
byte f5c<byte>(byte a, byte b, byte c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.2
    IL_0002: call T Z0.Logix.ScalarOps::not<T>(T)
    IL_0007: ldarg.1
    IL_0008: call T Z0.Logix.ScalarOps::select<T>(T,T,T)
    IL_000D: ret
}
