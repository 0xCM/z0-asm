// Id := 100663608, Name := T Z0.gbits::bitclear<T>(T,System.Byte,System.Byte)
// byte bitclear<byte>(byte src, byte index, byte count)
// AggressiveInlining
byte bitclear<byte>(byte src, byte index, byte count)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call T Z0.gbits::bitclear_u<T>(T,System.Byte,System.Byte)
    IL_0008: ret
}
