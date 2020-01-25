// Id := 100663576, Name := System.Void Z0.Bits::unpack8x1(System.Byte,System.Span`1<System.Byte>)
// void unpack8x1(byte src, Span<byte> dst)
// AggressiveInlining
void unpack8x1(byte src, Span<byte> dst)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt64& zfunc::head64<System.Byte>(System.Span`1<System.Byte>)
    IL_0007: call System.Void Z0.Bits::unpack8x1(System.Byte,System.UInt64&)
    IL_000C: ret
}
