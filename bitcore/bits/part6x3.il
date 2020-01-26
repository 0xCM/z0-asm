// Id := 100663456, Name := System.Void Z0.Bits::part6x3(System.UInt32,System.Byte&)
// void part6x3(uint src, ref byte dst)
// AggressiveInlining
void part6x3(uint src, ref byte dst)
{
    IL_0000: ldarg.1
    IL_0001: ldc.i4.0
    IL_0002: call System.Byte& zfunc::seek<System.Byte>(System.Byte&,System.Int32)
    IL_0007: ldarg.0
    IL_0008: ldc.i4.7
    IL_0009: and
    IL_000A: conv.u1
    IL_000B: stind.i1
    IL_000C: ldarg.1
    IL_000D: ldc.i4.1
    IL_000E: call System.Byte& zfunc::seek<System.Byte>(System.Byte&,System.Int32)
    IL_0013: ldarg.0
    IL_0014: ldc.i4.3
    IL_0015: shr.un
    IL_0016: ldc.i4.7
    IL_0017: and
    IL_0018: conv.u1
    IL_0019: stind.i1
    IL_001A: ret
}
------------------------------------------------------------------------------------------------------------------------
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
------------------------------------------------------------------------------------------------------------------------
