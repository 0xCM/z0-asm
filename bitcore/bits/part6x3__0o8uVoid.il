// Id := 100663457, Name := System.Void Z0.Bits::part6x3(System.UInt32,System.Span`1<System.Byte>)
// void part6x3(uint src, Span<byte> dst)
// AggressiveInlining
void part6x3(uint src, Span<byte> dst)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Byte& zfunc::head<System.Byte>(System.Span`1<System.Byte>)
    IL_0007: call System.Void Z0.Bits::part6x3(System.UInt32,System.Byte&)
    IL_000C: ret
}
