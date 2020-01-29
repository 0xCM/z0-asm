// System.Void Z0.Bits::part4x2(System.UInt32,System.Byte&)
// void part4x2(uint src, ref byte dst)
// AggressiveInlining
void part4x2(uint src, ref byte dst)
{
    IL_0000: ldarg.1
    IL_0001: ldc.i4.0
    IL_0002: call System.Byte& zfunc::seek<System.Byte>(System.Byte&,System.Int32)
    IL_0007: ldarg.0
    IL_0008: ldc.i4.s 15
    IL_000A: and
    IL_000B: conv.u1
    IL_000C: stind.i1
    IL_000D: ldarg.1
    IL_000E: ldc.i4.1
    IL_000F: call System.Byte& zfunc::seek<System.Byte>(System.Byte&,System.Int32)
    IL_0014: ldarg.0
    IL_0015: ldc.i4.4
    IL_0016: shr.un
    IL_0017: ldc.i4.s 15
    IL_0019: and
    IL_001A: conv.u1
    IL_001B: stind.i1
    IL_001C: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.Bits::part4x2(System.UInt32,Z0.NatSpan`2<Z0.N2,System.Byte>)
// void part4x2(uint src, NatSpan<N2,byte> dst)
// AggressiveInlining
void part4x2(uint src, NatSpan<N2,byte> dst)
{
    IL_0000: ldarg.0
    IL_0001: ldarga.s dst
    IL_0003: call System.Byte& zfunc::head<Z0.N2,System.Byte>(Z0.NatSpan`2<Z0.N2,System.Byte>&)
    IL_0008: call System.Void Z0.Bits::part4x2(System.UInt32,System.Byte&)
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
