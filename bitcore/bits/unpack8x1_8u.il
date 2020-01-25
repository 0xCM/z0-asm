// Id := 100663575, Name := System.Void Z0.Bits::unpack8x1(System.Byte,System.UInt64&)
// void unpack8x1(byte src, ref ulong dst)
// AggressiveInlining
void unpack8x1(byte src, ref ulong dst)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: conv.u8
    IL_0003: ldc.i8 72340172838076673
    IL_000C: call System.UInt64 Z0.Bits::scatter(System.UInt64,System.UInt64)
    IL_0011: stind.i8
    IL_0012: ret
}
