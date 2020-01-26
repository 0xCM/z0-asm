// Id := 100663471, Name := System.Void Z0.Bits::part8x4(System.UInt32,Z0.NatSpan`2<Z0.N8,System.Byte>)
// void part8x4(uint src, NatSpan<N8,byte> dst)
// AggressiveInlining
void part8x4(uint src, NatSpan<N8,byte> dst)
{
    IL_0000: ldarga.s dst
    IL_0002: ldc.i4.0
    IL_0003: call System.UInt64& Z0.NatSpan`2<Z0.N8,System.Byte>::Cell<System.UInt64>(System.Int32)
    IL_0008: ldarg.0
    IL_0009: conv.u8
    IL_000A: ldc.i8 1085102592571150095
    IL_0013: call System.UInt64 Z0.Bits::scatter(System.UInt64,System.UInt64)
    IL_0018: stind.i8
    IL_0019: ret
}
------------------------------------------------------------------------------------------------------------------------
