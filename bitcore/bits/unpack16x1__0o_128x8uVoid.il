// Id := 100663580, Name := System.Void Z0.Bits::unpack16x1(System.UInt16,Z0.Block128`1<System.Byte>&)
// void unpack16x1(ushort src, in Block128<byte> dst)
// AggressiveInlining
void unpack16x1(ushort src, in Block128<byte> dst)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Span`1<System.Byte> Z0.Block128`1<System.Byte>::get_Data()
    IL_0007: call System.Void Z0.Bits::unpack16x1(System.UInt16,System.Span`1<System.Byte>)
    IL_000C: ret
}
