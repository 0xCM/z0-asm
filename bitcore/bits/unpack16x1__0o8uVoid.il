// Id := 100663577, Name := System.Void Z0.Bits::unpack16x1(System.UInt16,System.Span`1<System.Byte>)
// void unpack16x1(ushort src, Span<byte> dst)
// AggressiveInlining
void unpack16x1(ushort src, Span<byte> dst)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt64& zfunc::head64<System.Byte>(System.Span`1<System.Byte>)
    IL_0007: call System.Void Z0.Bits::unpack16x1(System.UInt16,System.UInt64&)
    IL_000C: ret
}
