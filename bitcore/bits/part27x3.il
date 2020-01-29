// System.Void Z0.Bits::part27x3(System.UInt32,Z0.NatSpan`2<Z0.N9,System.Byte>&)
// void part27x3(uint src, in NatSpan<N9,byte> dst)
// AggressiveInlining
void part27x3(uint src, in NatSpan<N9,byte> dst)
{
    IL_0000: ldarg.1
    IL_0001: ldc.i4.0
    IL_0002: call System.UInt64& Z0.NatSpan`2<Z0.N9,System.Byte>::Cell<System.UInt64>(System.Int32)
    IL_0007: ldarg.0
    IL_0008: conv.u8
    IL_0009: ldc.i8 506381209866536711
    IL_0012: call System.UInt64 Z0.Bits::scatter(System.UInt64,System.UInt64)
    IL_0017: stind.i8
    IL_0018: ldarg.1
    IL_0019: ldc.i4.4
    IL_001A: call System.UInt16& Z0.NatSpan`2<Z0.N9,System.Byte>::Cell<System.UInt16>(System.Int32)
    IL_001F: ldarg.0
    IL_0020: ldc.i4.s 24
    IL_0022: shr.un
    IL_0023: conv.u8
    IL_0024: ldc.i8 506381209866536711
    IL_002D: call System.UInt64 Z0.Bits::scatter(System.UInt64,System.UInt64)
    IL_0032: conv.u1
    IL_0033: stind.i2
    IL_0034: ret
}
------------------------------------------------------------------------------------------------------------------------
