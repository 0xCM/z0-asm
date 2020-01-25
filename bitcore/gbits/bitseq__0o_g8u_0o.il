// Id := 100663622, Name := System.Span`1<System.Byte> Z0.gbits::bitseq<T>(T,System.Span`1<System.Byte>,System.Int32)
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
