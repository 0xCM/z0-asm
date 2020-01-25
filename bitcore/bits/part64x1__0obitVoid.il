// Id := 100663449, Name := System.Void Z0.Bits::part64x1(System.UInt64,System.Span`1<Z0.bit>)
// void part64x1(ulong src, Span<bit> dst)
// AggressiveInlining
void part64x1(ulong src, Span<bit> dst)
{
    IL_0000: ldarg.1
    IL_0001: call System.Span`1<System.UInt64> Z0.SpanExtend::As<Z0.bit,System.UInt64>(System.Span`1<Z0.bit>)
    IL_0006: call System.UInt64& zfunc::head<System.UInt64>(System.Span`1<System.UInt64>)
    IL_000B: stloc.0
    IL_000C: ldc.i4.0
    IL_000D: stloc.1
    IL_000E: br.s IL_0027
    IL_0010: ldloc.0
    IL_0011: ldloc.1
    IL_0012: call System.UInt64& zfunc::seek<System.UInt64>(System.UInt64&,System.Int32)
    IL_0017: ldarg.0
    IL_0018: ldloc.1
    IL_0019: ldc.i4.s 63
    IL_001B: and
    IL_001C: shr.un
    IL_001D: call System.UInt64 Z0.Bits::lsb32x1<System.UInt64>(System.UInt64)
    IL_0022: stind.i8
    IL_0023: ldloc.1
    IL_0024: ldc.i4.1
    IL_0025: add
    IL_0026: stloc.1
    IL_0027: ldloc.1
    IL_0028: ldc.i4.s 32
    IL_002A: blt.s IL_0010
    IL_002C: ret
}
