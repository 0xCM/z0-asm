// Id := 100663581, Name := System.Void Z0.Bits::unpack32x1(System.UInt32,Z0.Block256`1<System.Byte>&)
// void unpack32x1(uint src, in Block256<byte> dst)
// AggressiveInlining
void unpack32x1(uint src, in Block256<byte> dst)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Span`1<System.Byte> Z0.Block256`1<System.Byte>::get_Data()
    IL_0007: call System.Void Z0.Bits::unpack32x1(System.UInt32,System.Span`1<System.Byte>)
    IL_000C: ret
}
