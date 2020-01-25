// Id := 100663453, Name := System.Void Z0.Bits::part16x2(System.UInt16,Z0.Block64`1<System.Byte>)
// void part16x2(ushort src, Block64<byte> dst)
// AggressiveInlining
void part16x2(ushort src, Block64<byte> dst)
{
    IL_0000: ldarg.0
    IL_0001: ldarga.s dst
    IL_0003: call System.Byte& Z0.Block64`1<System.Byte>::get_Head()
    IL_0008: call System.Void Z0.Bits::part16x2(System.UInt16,System.Byte&)
    IL_000D: ret
}
