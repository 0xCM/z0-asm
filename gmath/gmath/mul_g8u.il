// Id := 100663998, Name := T Z0.gmath::mul<T>(T,T)
// byte mul<byte>(byte a, byte b)
// AggressiveInlining
byte mul<byte>(byte a, byte b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call T Z0.gmath::mul_u<T>(T,T)
    IL_0007: ret
}
