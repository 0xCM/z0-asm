// Id := 100663461, Name := System.Void Z0.Bits::part15x3(System.UInt16,Z0.NatSpan`2<Z0.N5,System.Byte>&)
// void part15x3(ushort src, in NatSpan<N5,byte> dst)
// AggressiveInlining
void part15x3(ushort src, in NatSpan<N5,byte> dst)
{
    IL_0000: ldarg.1
    IL_0001: ldc.i4.0
    IL_0002: call System.UInt32& Z0.NatSpan`2<Z0.N5,System.Byte>::Cell<System.UInt32>(System.Int32)
    IL_0007: ldarg.0
    IL_0008: ldc.i4 117901063
    IL_000D: call System.UInt32 Z0.Bits::scatter(System.UInt32,System.UInt32)
    IL_0012: stind.i4
    IL_0013: ldarg.1
    IL_0014: ldc.i4.4
    IL_0015: call System.Byte& Z0.NatSpan`2<Z0.N5,System.Byte>::Cell<System.Byte>(System.Int32)
    IL_001A: ldarg.0
    IL_001B: ldc.i4.s 12
    IL_001D: shr
    IL_001E: conv.u1
    IL_001F: ldc.i4.7
    IL_0020: call System.Byte Z0.Bits::scatter(System.Byte,System.Byte)
    IL_0025: stind.i1
    IL_0026: ret
}
