// Id := 100664604, Name := T Z0.Logix.ScalarOps::f19<T>(T,T,T)
// byte f19<byte>(byte a, byte b, byte c)
// AggressiveInlining
byte f19<byte>(byte a, byte b, byte c)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.2
    IL_0002: call T Z0.Logix.ScalarOps::xor<T>(T,T)
    IL_0007: ldarg.0
    IL_0008: ldarg.1
    IL_0009: ldarg.2
    IL_000A: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_000F: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_0014: call T Z0.Logix.ScalarOps::xor<T>(T,T)
    IL_0019: call T Z0.Logix.ScalarOps::not<T>(T)
    IL_001E: ret
}
