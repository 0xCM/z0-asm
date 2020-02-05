// Z0.NumericKind Z0.Numeric::from(Z0.FixedWidth,Z0.NumericIndicator)
// NumericKind:uint from(FixedWidth:uint width, NumericIndicator:ushort indicator)
// IL
NumericKind:uint from(FixedWidth:uint width, NumericIndicator:ushort indicator)
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
// Z0.NumericKind Z0.Numeric::from(Z0.FixedWidth,Z0.NumericClass)
// NumericKind:uint from(FixedWidth:uint width, NumericClass:uint c)
// IL
NumericKind:uint from(FixedWidth:uint width, NumericClass:uint c)
{
    IL_0000: ldarg.1
    IL_0001: ldc.i4 536870912
    IL_0006: beq.s IL_0060
    IL_0008: ldarg.1
    IL_0009: ldc.i4 1073741824
    IL_000E: beq IL_00A2
    IL_0013: ldarg.1
    IL_0014: ldc.i4 -2147483648
    IL_0019: bne.un IL_00C4
    IL_001E: ldarg.0
    IL_001F: ldc.i4.s 16
    IL_0021: bgt.un.s IL_002E
    IL_0023: ldarg.0
    IL_0024: ldc.i4.8
    IL_0025: beq.s IL_003A
    IL_0027: ldarg.0
    IL_0028: ldc.i4.s 16
    IL_002A: beq.s IL_0042
    IL_002C: br.s IL_005A
    IL_002E: ldarg.0
    IL_002F: ldc.i4.s 32
    IL_0031: beq.s IL_004A
    IL_0033: ldarg.0
    IL_0034: ldc.i4.s 64
    IL_0036: beq.s IL_0052
    IL_0038: br.s IL_005A
    IL_003A: ldc.i4 -2147352568
    IL_003F: stloc.1
    IL_0040: br.s IL_005C
    IL_0042: ldc.i4 -2146959344
    IL_0047: stloc.1
    IL_0048: br.s IL_005C
    IL_004A: ldc.i4 -2145386464
    IL_004F: stloc.1
    IL_0050: br.s IL_005C
    IL_0052: ldc.i4 -2139094976
    IL_0057: stloc.1
    IL_0058: br.s IL_005C
    IL_005A: ldc.i4.0
    IL_005B: stloc.1
    IL_005C: ldloc.1
    IL_005D: stloc.0
    IL_005E: br.s IL_00C6
    IL_0060: ldarg.0
    IL_0061: ldc.i4.s 16
    IL_0063: bgt.un.s IL_0070
    IL_0065: ldarg.0
    IL_0066: ldc.i4.8
    IL_0067: beq.s IL_007C
    IL_0069: ldarg.0
    IL_006A: ldc.i4.s 16
    IL_006C: beq.s IL_0084
    IL_006E: br.s IL_009C
    IL_0070: ldarg.0
    IL_0071: ldc.i4.s 32
    IL_0073: beq.s IL_008C
    IL_0075: ldarg.0
    IL_0076: ldc.i4.s 64
    IL_0078: beq.s IL_0094
    IL_007A: br.s IL_009C
    IL_007C: ldc.i4 536936456
    IL_0081: stloc.1
    IL_0082: br.s IL_009E
    IL_0084: ldc.i4 537133072
    IL_0089: stloc.1
    IL_008A: br.s IL_009E
    IL_008C: ldc.i4 537919520
    IL_0091: stloc.1
    IL_0092: br.s IL_009E
    IL_0094: ldc.i4 541065280
    IL_0099: stloc.1
    IL_009A: br.s IL_009E
    IL_009C: ldc.i4.0
    IL_009D: stloc.1
    IL_009E: ldloc.1
    IL_009F: stloc.0
    IL_00A0: br.s IL_00C6
    IL_00A2: ldarg.0
    IL_00A3: ldc.i4.s 32
    IL_00A5: beq.s IL_00AE
    IL_00A7: ldarg.0
    IL_00A8: ldc.i4.s 64
    IL_00AA: beq.s IL_00B6
    IL_00AC: br.s IL_00BE
    IL_00AE: ldc.i4 1107296288
    IL_00B3: stloc.1
    IL_00B4: br.s IL_00C0
    IL_00B6: ldc.i4 1140850752
    IL_00BB: stloc.1
    IL_00BC: br.s IL_00C0
    IL_00BE: ldc.i4.0
    IL_00BF: stloc.1
    IL_00C0: ldloc.1
    IL_00C1: stloc.0
    IL_00C2: br.s IL_00C6
    IL_00C4: ldc.i4.0
    IL_00C5: stloc.0
    IL_00C6: ldloc.0
    IL_00C7: ret
}
------------------------------------------------------------------------------------------------------------------------
