// Id := 100664615, Name := T Z0.Logix.ScalarOps::f24<T>(T,T,T)
// byte f24<byte>(byte a, byte b, byte c)
// AggressiveInlining
byte f24<byte>(byte a, byte b, byte c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call T Z0.Logix.ScalarOps::xor<T>(T,T)
    IL_0007: ldarg.1
    IL_0008: ldarg.2
    IL_0009: call T Z0.Logix.ScalarOps::xor<T>(T,T)
    IL_000E: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_0013: ret
}
