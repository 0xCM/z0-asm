// Id := 100664598, Name := T Z0.Logix.ScalarOps::f13<T>(T,T,T)
// byte f13<byte>(byte a, byte b, byte c)
// AggressiveInlining
byte f13<byte>(byte a, byte b, byte c)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldarg.2
    IL_0003: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_0008: call T Z0.Logix.ScalarOps::nor<T>(T,T)
    IL_000D: ret
}
