// Id := 100664675, Name := T Z0.Logix.ScalarOps::f97<T>(T,T,T)
// byte f97<byte>(byte a, byte b, byte c)
// AggressiveInlining
byte f97<byte>(byte a, byte b, byte c)
{
    IL_0000: ldarg.2
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call T Z0.Logix.ScalarOps::xnor<T>(T,T)
    IL_0008: ldarg.1
    IL_0009: ldarg.2
    IL_000A: call T Z0.Logix.ScalarOps::nand<T>(T,T)
    IL_000F: call T Z0.Logix.ScalarOps::select<T>(T,T,T)
    IL_0014: ret
}
