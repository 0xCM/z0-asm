// System.Void Z0.Bits::part64x1(System.UInt64,System.Span`1<System.Byte>)
// void part64x1(ulong src, Span<byte> dst)
// AggressiveInlining
void part64x1(ulong src, Span<byte> dst)
{
    IL_0000: ldarg.1
    IL_0001: call System.UInt64& zfunc::head64<System.Byte>(System.Span`1<System.Byte>)
    IL_0006: stloc.0
    IL_0007: ldloc.0
    IL_0008: ldc.i4.0
    IL_0009: call System.UInt64& zfunc::seek<System.UInt64>(System.UInt64&,System.Int32)
    IL_000E: ldarg.0
    IL_000F: call System.UInt64 Z0.Bits::lsb8x1<System.UInt64>(System.UInt64)
    IL_0014: stind.i8
    IL_0015: ldloc.0
    IL_0016: ldc.i4.1
    IL_0017: call System.UInt64& zfunc::seek<System.UInt64>(System.UInt64&,System.Int32)
    IL_001C: ldarg.0
    IL_001D: ldc.i4.8
    IL_001E: shr.un
    IL_001F: call System.UInt64 Z0.Bits::lsb8x1<System.UInt64>(System.UInt64)
    IL_0024: stind.i8
    IL_0025: ldloc.0
    IL_0026: ldc.i4.2
    IL_0027: call System.UInt64& zfunc::seek<System.UInt64>(System.UInt64&,System.Int32)
    IL_002C: ldarg.0
    IL_002D: ldc.i4.s 16
    IL_002F: shr.un
    IL_0030: call System.UInt64 Z0.Bits::lsb8x1<System.UInt64>(System.UInt64)
    IL_0035: stind.i8
    IL_0036: ldloc.0
    IL_0037: ldc.i4.3
    IL_0038: call System.UInt64& zfunc::seek<System.UInt64>(System.UInt64&,System.Int32)
    IL_003D: ldarg.0
    IL_003E: ldc.i4.s 24
    IL_0040: shr.un
    IL_0041: call System.UInt64 Z0.Bits::lsb8x1<System.UInt64>(System.UInt64)
    IL_0046: stind.i8
    IL_0047: ldloc.0
    IL_0048: ldc.i4.4
    IL_0049: call System.UInt64& zfunc::seek<System.UInt64>(System.UInt64&,System.Int32)
    IL_004E: ldarg.0
    IL_004F: ldc.i4.s 32
    IL_0051: shr.un
    IL_0052: call System.UInt64 Z0.Bits::lsb8x1<System.UInt64>(System.UInt64)
    IL_0057: stind.i8
    IL_0058: ldloc.0
    IL_0059: ldc.i4.5
    IL_005A: call System.UInt64& zfunc::seek<System.UInt64>(System.UInt64&,System.Int32)
    IL_005F: ldarg.0
    IL_0060: ldc.i4.s 40
    IL_0062: shr.un
    IL_0063: call System.UInt64 Z0.Bits::lsb8x1<System.UInt64>(System.UInt64)
    IL_0068: stind.i8
    IL_0069: ldloc.0
    IL_006A: ldc.i4.6
    IL_006B: call System.UInt64& zfunc::seek<System.UInt64>(System.UInt64&,System.Int32)
    IL_0070: ldarg.0
    IL_0071: ldc.i4.s 48
    IL_0073: shr.un
    IL_0074: call System.UInt64 Z0.Bits::lsb8x1<System.UInt64>(System.UInt64)
    IL_0079: stind.i8
    IL_007A: ldloc.0
    IL_007B: ldc.i4.7
    IL_007C: call System.UInt64& zfunc::seek<System.UInt64>(System.UInt64&,System.Int32)
    IL_0081: ldarg.0
    IL_0082: ldc.i4.s 56
    IL_0084: shr.un
    IL_0085: call System.UInt64 Z0.Bits::lsb8x1<System.UInt64>(System.UInt64)
    IL_008A: stind.i8
    IL_008B: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.Bits::part64x1(System.UInt64,System.Span`1<Z0.bit>)
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
------------------------------------------------------------------------------------------------------------------------
