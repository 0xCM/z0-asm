// Id := 100663477, Name := System.Void Z0.Bits::part64x16(System.UInt64,Z0.NatSpan`2<Z0.N4,System.UInt16>)
// void part64x16(ulong src, NatSpan<N4,ushort> dst)
// AggressiveInlining
void part64x16(ulong src, NatSpan<N4,ushort> dst)
{
    IL_0000: ldarga.s dst
    IL_0002: ldc.i4.0
    IL_0003: call System.UInt64& Z0.NatSpan`2<Z0.N4,System.UInt16>::Cell<System.UInt64>(System.Int32)
    IL_0008: ldarg.0
    IL_0009: stind.i8
    IL_000A: ret
}
