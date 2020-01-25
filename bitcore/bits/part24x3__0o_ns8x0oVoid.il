// Id := 100663462, Name := System.Void Z0.Bits::part24x3(System.UInt32,Z0.NatSpan`2<Z0.N8,System.Byte>&)
// void part24x3(uint src, in NatSpan<N8,byte> dst)
// AggressiveInlining
void part24x3(uint src, in NatSpan<N8,byte> dst)
{
    IL_0000: ldarg.1
    IL_0001: ldc.i4.0
    IL_0002: call System.UInt64& Z0.NatSpan`2<Z0.N8,System.Byte>::Cell<System.UInt64>(System.Int32)
    IL_0007: ldarg.0
    IL_0008: conv.u8
    IL_0009: ldc.i8 506381209866536711
    IL_0012: call System.UInt64 Z0.Bits::scatter(System.UInt64,System.UInt64)
    IL_0017: stind.i8
    IL_0018: ret
}
