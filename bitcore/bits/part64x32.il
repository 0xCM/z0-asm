// System.Void Z0.Bits::part64x32(System.UInt64,Z0.NatSpan`2<Z0.N2,System.UInt32>)
// void part64x32(ulong src, NatSpan<N2,uint> dst)
// AggressiveInlining
void part64x32(ulong src, NatSpan<N2,uint> dst)
{
    IL_0000: ldarga.s dst
    IL_0002: ldc.i4.0
    IL_0003: call System.UInt64& Z0.NatSpan`2<Z0.N2,System.UInt32>::Cell<System.UInt64>(System.Int32)
    IL_0008: ldarg.0
    IL_0009: stind.i8
    IL_000A: ret
}
------------------------------------------------------------------------------------------------------------------------
