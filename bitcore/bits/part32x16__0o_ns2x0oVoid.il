// Id := 100663476, Name := System.Void Z0.Bits::part32x16(System.UInt32,Z0.NatSpan`2<Z0.N2,System.UInt16>)
// void part32x16(uint src, NatSpan<N2,ushort> dst)
// AggressiveInlining
void part32x16(uint src, NatSpan<N2,ushort> dst)
{
    IL_0000: ldarga.s dst
    IL_0002: ldc.i4.0
    IL_0003: call System.UInt32& Z0.NatSpan`2<Z0.N2,System.UInt16>::Cell<System.UInt32>(System.Int32)
    IL_0008: ldarg.0
    IL_0009: stind.i4
    IL_000A: ret
}
