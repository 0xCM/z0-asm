// System.Span`1<System.Byte> Z0.gbits::bitseq<T>(T,System.Span`1<System.Byte>,System.Int32)
// Span<byte> bitseq<byte>(byte src, Span<byte> dst, int offset)
// AggressiveInlining
Span<byte> bitseq<byte>(byte src, Span<byte> dst, int offset)
{
    IL_0000: call System.Int32 zfunc::bitsize<T>()
    IL_0005: stloc.0
    IL_0006: ldarg.1
    IL_0007: call System.Byte& zfunc::head<System.Byte>(System.Span`1<System.Byte>)
    IL_000C: ldarg.2
    IL_000D: call System.Byte& zfunc::seek<System.Byte>(System.Byte&,System.Int32)
    IL_0012: stloc.1
    IL_0013: ldc.i4.0
    IL_0014: stloc.2
    IL_0015: br.s IL_002F
    IL_0017: ldloc.1
    IL_0018: ldloc.2
    IL_0019: call System.Byte& zfunc::seek<System.Byte>(System.Byte&,System.Int32)
    IL_001E: ldarg.0
    IL_001F: ldloc.2
    IL_0020: call Z0.bit Z0.gbits::testbit<T>(T,System.Int32)
    IL_0025: call System.Byte Z0.bit::op_Explicit(Z0.bit)
    IL_002A: stind.i1
    IL_002B: ldloc.2
    IL_002C: ldc.i4.1
    IL_002D: add
    IL_002E: stloc.2
    IL_002F: ldloc.2
    IL_0030: ldloc.0
    IL_0031: blt.s IL_0017
    IL_0033: ldarg.1
    IL_0034: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Span`1<System.Byte> Z0.gbits::bitseq<T>(T,System.Span`1<System.Byte>,System.Int32)
// Span<byte> bitseq<ushort>(ushort src, Span<byte> dst, int offset)
// AggressiveInlining
Span<byte> bitseq<ushort>(ushort src, Span<byte> dst, int offset)
{
    IL_0000: call System.Int32 zfunc::bitsize<T>()
    IL_0005: stloc.0
    IL_0006: ldarg.1
    IL_0007: call System.Byte& zfunc::head<System.Byte>(System.Span`1<System.Byte>)
    IL_000C: ldarg.2
    IL_000D: call System.Byte& zfunc::seek<System.Byte>(System.Byte&,System.Int32)
    IL_0012: stloc.1
    IL_0013: ldc.i4.0
    IL_0014: stloc.2
    IL_0015: br.s IL_002F
    IL_0017: ldloc.1
    IL_0018: ldloc.2
    IL_0019: call System.Byte& zfunc::seek<System.Byte>(System.Byte&,System.Int32)
    IL_001E: ldarg.0
    IL_001F: ldloc.2
    IL_0020: call Z0.bit Z0.gbits::testbit<T>(T,System.Int32)
    IL_0025: call System.Byte Z0.bit::op_Explicit(Z0.bit)
    IL_002A: stind.i1
    IL_002B: ldloc.2
    IL_002C: ldc.i4.1
    IL_002D: add
    IL_002E: stloc.2
    IL_002F: ldloc.2
    IL_0030: ldloc.0
    IL_0031: blt.s IL_0017
    IL_0033: ldarg.1
    IL_0034: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Span`1<System.Byte> Z0.gbits::bitseq<T>(T,System.Span`1<System.Byte>,System.Int32)
// Span<byte> bitseq<uint>(uint src, Span<byte> dst, int offset)
// AggressiveInlining
Span<byte> bitseq<uint>(uint src, Span<byte> dst, int offset)
{
    IL_0000: call System.Int32 zfunc::bitsize<T>()
    IL_0005: stloc.0
    IL_0006: ldarg.1
    IL_0007: call System.Byte& zfunc::head<System.Byte>(System.Span`1<System.Byte>)
    IL_000C: ldarg.2
    IL_000D: call System.Byte& zfunc::seek<System.Byte>(System.Byte&,System.Int32)
    IL_0012: stloc.1
    IL_0013: ldc.i4.0
    IL_0014: stloc.2
    IL_0015: br.s IL_002F
    IL_0017: ldloc.1
    IL_0018: ldloc.2
    IL_0019: call System.Byte& zfunc::seek<System.Byte>(System.Byte&,System.Int32)
    IL_001E: ldarg.0
    IL_001F: ldloc.2
    IL_0020: call Z0.bit Z0.gbits::testbit<T>(T,System.Int32)
    IL_0025: call System.Byte Z0.bit::op_Explicit(Z0.bit)
    IL_002A: stind.i1
    IL_002B: ldloc.2
    IL_002C: ldc.i4.1
    IL_002D: add
    IL_002E: stloc.2
    IL_002F: ldloc.2
    IL_0030: ldloc.0
    IL_0031: blt.s IL_0017
    IL_0033: ldarg.1
    IL_0034: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Span`1<System.Byte> Z0.gbits::bitseq<T>(T,System.Span`1<System.Byte>,System.Int32)
// Span<byte> bitseq<ulong>(ulong src, Span<byte> dst, int offset)
// AggressiveInlining
Span<byte> bitseq<ulong>(ulong src, Span<byte> dst, int offset)
{
    IL_0000: call System.Int32 zfunc::bitsize<T>()
    IL_0005: stloc.0
    IL_0006: ldarg.1
    IL_0007: call System.Byte& zfunc::head<System.Byte>(System.Span`1<System.Byte>)
    IL_000C: ldarg.2
    IL_000D: call System.Byte& zfunc::seek<System.Byte>(System.Byte&,System.Int32)
    IL_0012: stloc.1
    IL_0013: ldc.i4.0
    IL_0014: stloc.2
    IL_0015: br.s IL_002F
    IL_0017: ldloc.1
    IL_0018: ldloc.2
    IL_0019: call System.Byte& zfunc::seek<System.Byte>(System.Byte&,System.Int32)
    IL_001E: ldarg.0
    IL_001F: ldloc.2
    IL_0020: call Z0.bit Z0.gbits::testbit<T>(T,System.Int32)
    IL_0025: call System.Byte Z0.bit::op_Explicit(Z0.bit)
    IL_002A: stind.i1
    IL_002B: ldloc.2
    IL_002C: ldc.i4.1
    IL_002D: add
    IL_002E: stloc.2
    IL_002F: ldloc.2
    IL_0030: ldloc.0
    IL_0031: blt.s IL_0017
    IL_0033: ldarg.1
    IL_0034: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Span`1<System.Byte> Z0.gbits::bitseq<T>(T)
// Span<byte> bitseq<byte>(byte src)
// AggressiveInlining
Span<byte> bitseq<byte>(byte src)
{
    IL_0000: call System.Int32 zfunc::bitsize<T>()
    IL_0005: newarr System.Byte
    IL_000A: call System.Span`1<System.Byte> System.Span`1<System.Byte>::op_Implicit(System.Byte[])
    IL_000F: stloc.0
    IL_0010: ldarg.0
    IL_0011: ldloc.0
    IL_0012: ldc.i4.0
    IL_0013: call System.Span`1<System.Byte> Z0.gbits::bitseq<T>(T,System.Span`1<System.Byte>,System.Int32)
    IL_0018: pop
    IL_0019: ldloc.0
    IL_001A: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Span`1<System.Byte> Z0.gbits::bitseq<T>(T)
// Span<byte> bitseq<ushort>(ushort src)
// AggressiveInlining
Span<byte> bitseq<ushort>(ushort src)
{
    IL_0000: call System.Int32 zfunc::bitsize<T>()
    IL_0005: newarr System.Byte
    IL_000A: call System.Span`1<System.Byte> System.Span`1<System.Byte>::op_Implicit(System.Byte[])
    IL_000F: stloc.0
    IL_0010: ldarg.0
    IL_0011: ldloc.0
    IL_0012: ldc.i4.0
    IL_0013: call System.Span`1<System.Byte> Z0.gbits::bitseq<T>(T,System.Span`1<System.Byte>,System.Int32)
    IL_0018: pop
    IL_0019: ldloc.0
    IL_001A: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Span`1<System.Byte> Z0.gbits::bitseq<T>(T)
// Span<byte> bitseq<uint>(uint src)
// AggressiveInlining
Span<byte> bitseq<uint>(uint src)
{
    IL_0000: call System.Int32 zfunc::bitsize<T>()
    IL_0005: newarr System.Byte
    IL_000A: call System.Span`1<System.Byte> System.Span`1<System.Byte>::op_Implicit(System.Byte[])
    IL_000F: stloc.0
    IL_0010: ldarg.0
    IL_0011: ldloc.0
    IL_0012: ldc.i4.0
    IL_0013: call System.Span`1<System.Byte> Z0.gbits::bitseq<T>(T,System.Span`1<System.Byte>,System.Int32)
    IL_0018: pop
    IL_0019: ldloc.0
    IL_001A: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Span`1<System.Byte> Z0.gbits::bitseq<T>(T)
// Span<byte> bitseq<ulong>(ulong src)
// AggressiveInlining
Span<byte> bitseq<ulong>(ulong src)
{
    IL_0000: call System.Int32 zfunc::bitsize<T>()
    IL_0005: newarr System.Byte
    IL_000A: call System.Span`1<System.Byte> System.Span`1<System.Byte>::op_Implicit(System.Byte[])
    IL_000F: stloc.0
    IL_0010: ldarg.0
    IL_0011: ldloc.0
    IL_0012: ldc.i4.0
    IL_0013: call System.Span`1<System.Byte> Z0.gbits::bitseq<T>(T,System.Span`1<System.Byte>,System.Int32)
    IL_0018: pop
    IL_0019: ldloc.0
    IL_001A: ret
}
------------------------------------------------------------------------------------------------------------------------
