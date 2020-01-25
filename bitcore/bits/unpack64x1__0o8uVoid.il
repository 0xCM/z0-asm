// Id := 100663579, Name := System.Void Z0.Bits::unpack64x1(System.UInt64,System.Span`1<System.Byte>)
// void unpack64x1(ulong src, Span<byte> dst)
// AggressiveInlining
void unpack64x1(ulong src, Span<byte> dst)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt64& zfunc::head64<System.Byte>(System.Span`1<System.Byte>)
    IL_0007: call System.Void Z0.Bits::unpack64x1(System.UInt64,System.UInt64&)
    IL_000C: ret
}
