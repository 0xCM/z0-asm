// Id := 100663458, Name := System.Void Z0.Bits::part9x3(System.UInt32,System.Byte&)
// void part9x3(uint src, ref byte dst)
// AggressiveInlining
void part9x3(uint src, ref byte dst)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Void Z0.Bits::part6x3(System.UInt32,System.Byte&)
    IL_0007: ldarg.1
    IL_0008: ldc.i4.2
    IL_0009: call System.Byte& zfunc::seek<System.Byte>(System.Byte&,System.Int32)
    IL_000E: ldarg.0
    IL_000F: ldc.i4.6
    IL_0010: shr.un
    IL_0011: ldc.i4.7
    IL_0012: and
    IL_0013: conv.u1
    IL_0014: stind.i1
    IL_0015: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663459, Name := System.Void Z0.Bits::part9x3(System.UInt32,System.Span`1<System.Byte>)
// void part9x3(uint src, Span<byte> dst)
// AggressiveInlining
void part9x3(uint src, Span<byte> dst)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Byte& zfunc::head<System.Byte>(System.Span`1<System.Byte>)
    IL_0007: call System.Void Z0.Bits::part9x3(System.UInt32,System.Byte&)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
