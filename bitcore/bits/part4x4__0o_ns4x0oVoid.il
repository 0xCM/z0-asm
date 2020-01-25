// Id := 100663470, Name := System.Void Z0.Bits::part4x4(System.UInt16,Z0.NatSpan`2<Z0.N4,System.Byte>)
// void part4x4(ushort src, NatSpan<N4,byte> dst)
// AggressiveInlining
void part4x4(ushort src, NatSpan<N4,byte> dst)
{
    IL_0000: ldarga.s dst
    IL_0002: ldc.i4.0
    IL_0003: call System.UInt32& Z0.NatSpan`2<Z0.N4,System.Byte>::Cell<System.UInt32>(System.Int32)
    IL_0008: ldarg.0
    IL_0009: ldc.i4 252645135
    IL_000E: call System.UInt32 Z0.Bits::scatter(System.UInt32,System.UInt32)
    IL_0013: stind.i4
    IL_0014: ret
}
