// Id := 100664626, Name := T Z0.Logix.ScalarOps::f2f<T>(T,T,T)
// byte f2f<byte>(byte a, byte b, byte c)
// AggressiveInlining
byte f2f<byte>(byte a, byte b, byte c)
{
    IL_0000: ldarg.0
    IL_0001: call T Z0.Logix.ScalarOps::not<T>(T)
    IL_0006: ldarg.1
    IL_0007: call T Z0.Logix.ScalarOps::not<T>(T)
    IL_000C: ldarg.2
    IL_000D: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_0012: call T Z0.Logix.ScalarOps::or<T>(T,T)
    IL_0017: ret
}
