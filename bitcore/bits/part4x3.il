// System.Void Z0.Bits::part4x3(System.UInt32,System.Byte&)
// void part4x3(uint src, ref byte dst)
// AggressiveInlining
void part4x3(uint src, ref byte dst)
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
    IL_001C: ldarg.1
    IL_001D: ldc.i4.2
    IL_001E: call System.Byte& zfunc::seek<System.Byte>(System.Byte&,System.Int32)
    IL_0023: ldarg.0
    IL_0024: ldc.i4.8
    IL_0025: shr.un
    IL_0026: ldc.i4.s 15
    IL_0028: and
    IL_0029: conv.u1
    IL_002A: stind.i1
    IL_002B: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.Bits::part4x3(System.UInt32,Z0.NatSpan`2<Z0.N3,System.Byte>)
// void part4x3(uint src, NatSpan<N3,byte> dst)
// AggressiveInlining
void part4x3(uint src, NatSpan<N3,byte> dst)
{
    IL_0000: ldarg.0
    IL_0001: ldarga.s dst
    IL_0003: call System.Byte& zfunc::head<Z0.N3,System.Byte>(Z0.NatSpan`2<Z0.N3,System.Byte>&)
    IL_0008: call System.Void Z0.Bits::part4x3(System.UInt32,System.Byte&)
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
