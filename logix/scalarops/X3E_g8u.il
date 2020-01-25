// Id := 100664641, Name := T Z0.Logix.ScalarOps::f3e<T>(T,T,T)
// byte f3e<byte>(byte a, byte b, byte c)
// AggressiveInlining
byte f3e<byte>(byte a, byte b, byte c)
{
    IL_0000: ldarg.0
    IL_0001: call T Z0.Logix.ScalarOps::not<T>(T)
    IL_0006: ldarg.2
    IL_0007: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_000C: ldarg.0
    IL_000D: ldarg.1
    IL_000E: call T Z0.Logix.ScalarOps::xor<T>(T,T)
    IL_0013: call T Z0.Logix.ScalarOps::or<T>(T,T)
    IL_0018: ret
}
