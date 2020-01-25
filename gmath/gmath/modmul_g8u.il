// Id := 100663995, Name := T Z0.gmath::modmul<T>(T,T,T)
// byte modmul<byte>(byte a, byte b, byte m)
// AggressiveInlining
byte modmul<byte>(byte a, byte b, byte m)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call T Z0.gmath::modmul_u<T>(T,T,T)
    IL_0008: ret
}
