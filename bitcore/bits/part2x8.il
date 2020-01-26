// Id := 100663473, Name := System.Void Z0.Bits::part2x8(System.UInt16,Z0.NatSpan`2<Z0.N2,System.Byte>)
// void part2x8(ushort src, NatSpan<N2,byte> dst)
// AggressiveInlining
void part2x8(ushort src, NatSpan<N2,byte> dst)
{
    IL_0000: ldarga.s dst
    IL_0002: ldc.i4.0
    IL_0003: call System.UInt16& Z0.NatSpan`2<Z0.N2,System.Byte>::Cell<System.UInt16>(System.Int32)
    IL_0008: ldarg.0
    IL_0009: stind.i2
    IL_000A: ret
}
------------------------------------------------------------------------------------------------------------------------
