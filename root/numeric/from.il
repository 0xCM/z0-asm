// Z0.NumericKind Z0.Numeric::from(Z0.FixedWidth,Z0.NumericIndicator)
// NumericKind:uint from(FixedWidth:uint width, NumericIndicator:ushort ni)
// IL
NumericKind:uint from(FixedWidth:uint width, NumericIndicator:ushort ni)
{
    IL_0000: ldarg.1
    IL_0001: ldc.i4.s 102
    IL_0003: beq IL_009B
    IL_0008: ldarg.1
    IL_0009: ldc.i4.s 105
    IL_000B: beq.s IL_0017
    IL_000D: ldarg.1
    IL_000E: ldc.i4.s 117
    IL_0010: beq.s IL_0059
    IL_0012: br IL_00BD
    IL_0017: ldarg.0
    IL_0018: ldc.i4.s 16
    IL_001A: bgt.un.s IL_0027
    IL_001C: ldarg.0
    IL_001D: ldc.i4.8
    IL_001E: beq.s IL_0033
    IL_0020: ldarg.0
    IL_0021: ldc.i4.s 16
    IL_0023: beq.s IL_003B
    IL_0025: br.s IL_0053
    IL_0027: ldarg.0
    IL_0028: ldc.i4.s 32
    IL_002A: beq.s IL_0043
    IL_002C: ldarg.0
    IL_002D: ldc.i4.s 64
    IL_002F: beq.s IL_004B
    IL_0031: br.s IL_0053
    IL_0033: ldc.i4 -2147352568
    IL_0038: stloc.1
    IL_0039: br.s IL_0055
    IL_003B: ldc.i4 -2146959344
    IL_0040: stloc.1
    IL_0041: br.s IL_0055
    IL_0043: ldc.i4 -2145386464
    IL_0048: stloc.1
    IL_0049: br.s IL_0055
    IL_004B: ldc.i4 -2139094976
    IL_0050: stloc.1
    IL_0051: br.s IL_0055
    IL_0053: ldc.i4.0
    IL_0054: stloc.1
    IL_0055: ldloc.1
    IL_0056: stloc.0
    IL_0057: br.s IL_00BF
    IL_0059: ldarg.0
    IL_005A: ldc.i4.s 16
    IL_005C: bgt.un.s IL_0069
    IL_005E: ldarg.0
    IL_005F: ldc.i4.8
    IL_0060: beq.s IL_0075
    IL_0062: ldarg.0
    IL_0063: ldc.i4.s 16
    IL_0065: beq.s IL_007D
    IL_0067: br.s IL_0095
    IL_0069: ldarg.0
    IL_006A: ldc.i4.s 32
    IL_006C: beq.s IL_0085
    IL_006E: ldarg.0
    IL_006F: ldc.i4.s 64
    IL_0071: beq.s IL_008D
    IL_0073: br.s IL_0095
    IL_0075: ldc.i4 536936456
    IL_007A: stloc.1
    IL_007B: br.s IL_0097
    IL_007D: ldc.i4 537133072
    IL_0082: stloc.1
    IL_0083: br.s IL_0097
    IL_0085: ldc.i4 537919520
    IL_008A: stloc.1
    IL_008B: br.s IL_0097
    IL_008D: ldc.i4 541065280
    IL_0092: stloc.1
    IL_0093: br.s IL_0097
    IL_0095: ldc.i4.0
    IL_0096: stloc.1
    IL_0097: ldloc.1
    IL_0098: stloc.0
    IL_0099: br.s IL_00BF
    IL_009B: ldarg.0
    IL_009C: ldc.i4.s 32
    IL_009E: beq.s IL_00A7
    IL_00A0: ldarg.0
    IL_00A1: ldc.i4.s 64
    IL_00A3: beq.s IL_00AF
    IL_00A5: br.s IL_00B7
    IL_00A7: ldc.i4 1107296288
    IL_00AC: stloc.1
    IL_00AD: br.s IL_00B9
    IL_00AF: ldc.i4 1140850752
    IL_00B4: stloc.1
    IL_00B5: br.s IL_00B9
    IL_00B7: ldc.i4.0
    IL_00B8: stloc.1
    IL_00B9: ldloc.1
    IL_00BA: stloc.0
    IL_00BB: br.s IL_00BF
    IL_00BD: ldc.i4.0
    IL_00BE: stloc.0
    IL_00BF: ldloc.0
    IL_00C0: ret
}
------------------------------------------------------------------------------------------------------------------------
