// Id := 100663474, Name := System.Void Z0.Bits::part4x8(System.UInt32,Z0.NatSpan`2<Z0.N4,System.Byte>)
// void part4x8(uint src, NatSpan<N4,byte> dst)
// AggressiveInlining
void part4x8(uint src, NatSpan<N4,byte> dst)
{
    IL_0000: ldarga.s dst
    IL_0002: ldc.i4.0
    IL_0003: call System.UInt32& Z0.NatSpan`2<Z0.N4,System.Byte>::Cell<System.UInt32>(System.Int32)
    IL_0008: ldarg.0
    IL_0009: stind.i4
    IL_000A: ret
}
------------------------------------------------------------------------------------------------------------------------
