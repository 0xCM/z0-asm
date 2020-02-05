// System.Object Z0.Numeric::convert(Z0.NumericKind,System.Object)
// Object convert(NumericKind:uint dst, Object src)
// IL
Object convert(NumericKind:uint dst, Object src)
{
    IL_0000: ldarg.1
    IL_0001: brtrue.s IL_0006
    IL_0003: ldnull
    IL_0004: br.s IL_000C
    IL_0006: ldarg.1
    IL_0007: call System.Type System.Object::GetType()
    IL_000C: call System.TypeCode System.Type::GetTypeCode(System.Type)
    IL_0011: stloc.0
    IL_0012: ldloc.0
    IL_0013: ldc.i4.5
    IL_0014: sub
    IL_0015: switch(IL_0047,IL_0150,IL_0258,IL_0362,IL_046C,IL_0577,IL_0684,IL_078F,IL_089C,IL_09A8)
    IL_0042: br IL_0AB4
    IL_0047: ldarg.0
    IL_0048: ldc.i4 1107296288
    IL_004D: bgt.un.s IL_0095
    IL_004F: ldarg.0
    IL_0050: ldc.i4 537133072
    IL_0055: bgt.un.s IL_006F
    IL_0057: ldarg.0
    IL_0058: ldc.i4 536936456
    IL_005D: beq.s IL_00D2
    IL_005F: ldarg.0
    IL_0060: ldc.i4 537133072
    IL_0065: beq IL_00F7
    IL_006A: br IL_0AB4
    IL_006F: ldarg.0
    IL_0070: ldc.i4 537919520
    IL_0075: beq IL_0110
    IL_007A: ldarg.0
    IL_007B: ldc.i4 541065280
    IL_0080: beq IL_0129
    IL_0085: ldarg.0
    IL_0086: ldc.i4 1107296288
    IL_008B: beq IL_0136
    IL_0090: br IL_0AB4
    IL_0095: ldarg.0
    IL_0096: ldc.i4 -2147352568
    IL_009B: bgt.un.s IL_00B5
    IL_009D: ldarg.0
    IL_009E: ldc.i4 1140850752
    IL_00A3: beq IL_0143
    IL_00A8: ldarg.0
    IL_00A9: ldc.i4 -2147352568
    IL_00AE: beq.s IL_00DF
    IL_00B0: br IL_0AB4
    IL_00B5: ldarg.0
    IL_00B6: ldc.i4 -2146959344
    IL_00BB: beq.s IL_00EB
    IL_00BD: ldarg.0
    IL_00BE: ldc.i4 -2145386464
    IL_00C3: beq.s IL_0104
    IL_00C5: ldarg.0
    IL_00C6: ldc.i4 -2139094976
    IL_00CB: beq.s IL_011C
    IL_00CD: br IL_0AB4
    IL_00D2: ldarg.1
    IL_00D3: unbox.any System.SByte
    IL_00D8: conv.u1
    IL_00D9: box System.Byte
    IL_00DE: ret
    IL_00DF: ldarg.1
    IL_00E0: unbox.any System.SByte
    IL_00E5: box System.SByte
    IL_00EA: ret
    IL_00EB: ldarg.1
    IL_00EC: unbox.any System.SByte
    IL_00F1: box System.Int16
    IL_00F6: ret
    IL_00F7: ldarg.1
    IL_00F8: unbox.any System.SByte
    IL_00FD: conv.u2
    IL_00FE: box System.UInt16
    IL_0103: ret
    IL_0104: ldarg.1
    IL_0105: unbox.any System.SByte
    IL_010A: box System.Int32
    IL_010F: ret
    IL_0110: ldarg.1
    IL_0111: unbox.any System.SByte
    IL_0116: box System.UInt32
    IL_011B: ret
    IL_011C: ldarg.1
    IL_011D: unbox.any System.SByte
    IL_0122: conv.i8
    IL_0123: box System.Int64
    IL_0128: ret
    IL_0129: ldarg.1
    IL_012A: unbox.any System.SByte
    IL_012F: conv.i8
    IL_0130: box System.UInt64
    IL_0135: ret
    IL_0136: ldarg.1
    IL_0137: unbox.any System.SByte
    IL_013C: conv.r4
    IL_013D: box System.Single
    IL_0142: ret
    IL_0143: ldarg.1
    IL_0144: unbox.any System.SByte
    IL_0149: conv.r8
    IL_014A: box System.Double
    IL_014F: ret
    IL_0150: ldarg.0
    IL_0151: ldc.i4 1107296288
    IL_0156: bgt.un.s IL_019E
    IL_0158: ldarg.0
    IL_0159: ldc.i4 537133072
    IL_015E: bgt.un.s IL_0178
    IL_0160: ldarg.0
    IL_0161: ldc.i4 536936456
    IL_0166: beq.s IL_01DB
    IL_0168: ldarg.0
    IL_0169: ldc.i4 537133072
    IL_016E: beq IL_0200
    IL_0173: br IL_0AB4
    IL_0178: ldarg.0
    IL_0179: ldc.i4 537919520
    IL_017E: beq IL_0218
    IL_0183: ldarg.0
    IL_0184: ldc.i4 541065280
    IL_0189: beq IL_0231
    IL_018E: ldarg.0
    IL_018F: ldc.i4 1107296288
    IL_0194: beq IL_023E
    IL_0199: br IL_0AB4
    IL_019E: ldarg.0
    IL_019F: ldc.i4 -2147352568
    IL_01A4: bgt.un.s IL_01BE
    IL_01A6: ldarg.0
    IL_01A7: ldc.i4 1140850752
    IL_01AC: beq IL_024B
    IL_01B1: ldarg.0
    IL_01B2: ldc.i4 -2147352568
    IL_01B7: beq.s IL_01E7
    IL_01B9: br IL_0AB4
    IL_01BE: ldarg.0
    IL_01BF: ldc.i4 -2146959344
    IL_01C4: beq.s IL_01F4
    IL_01C6: ldarg.0
    IL_01C7: ldc.i4 -2145386464
    IL_01CC: beq.s IL_020C
    IL_01CE: ldarg.0
    IL_01CF: ldc.i4 -2139094976
    IL_01D4: beq.s IL_0224
    IL_01D6: br IL_0AB4
    IL_01DB: ldarg.1
    IL_01DC: unbox.any System.Byte
    IL_01E1: box System.Byte
    IL_01E6: ret
    IL_01E7: ldarg.1
    IL_01E8: unbox.any System.Byte
    IL_01ED: conv.i1
    IL_01EE: box System.SByte
    IL_01F3: ret
    IL_01F4: ldarg.1
    IL_01F5: unbox.any System.Byte
    IL_01FA: box System.Int16
    IL_01FF: ret
    IL_0200: ldarg.1
    IL_0201: unbox.any System.Byte
    IL_0206: box System.UInt16
    IL_020B: ret
    IL_020C: ldarg.1
    IL_020D: unbox.any System.Byte
    IL_0212: box System.Int32
    IL_0217: ret
    IL_0218: ldarg.1
    IL_0219: unbox.any System.Byte
    IL_021E: box System.UInt32
    IL_0223: ret
    IL_0224: ldarg.1
    IL_0225: unbox.any System.Byte
    IL_022A: conv.u8
    IL_022B: box System.Int64
    IL_0230: ret
    IL_0231: ldarg.1
    IL_0232: unbox.any System.Byte
    IL_0237: conv.u8
    IL_0238: box System.UInt64
    IL_023D: ret
    IL_023E: ldarg.1
    IL_023F: unbox.any System.Byte
    IL_0244: conv.r4
    IL_0245: box System.Single
    IL_024A: ret
    IL_024B: ldarg.1
    IL_024C: unbox.any System.Byte
    IL_0251: conv.r8
    IL_0252: box System.Double
    IL_0257: ret
    IL_0258: ldarg.0
    IL_0259: ldc.i4 1107296288
    IL_025E: bgt.un.s IL_02A6
    IL_0260: ldarg.0
    IL_0261: ldc.i4 537133072
    IL_0266: bgt.un.s IL_0280
    IL_0268: ldarg.0
    IL_0269: ldc.i4 536936456
    IL_026E: beq.s IL_02E3
    IL_0270: ldarg.0
    IL_0271: ldc.i4 537133072
    IL_0276: beq IL_0309
    IL_027B: br IL_0AB4
    IL_0280: ldarg.0
    IL_0281: ldc.i4 537919520
    IL_0286: beq IL_0322
    IL_028B: ldarg.0
    IL_028C: ldc.i4 541065280
    IL_0291: beq IL_033B
    IL_0296: ldarg.0
    IL_0297: ldc.i4 1107296288
    IL_029C: beq IL_0348
    IL_02A1: br IL_0AB4
    IL_02A6: ldarg.0
    IL_02A7: ldc.i4 -2147352568
    IL_02AC: bgt.un.s IL_02C6
    IL_02AE: ldarg.0
    IL_02AF: ldc.i4 1140850752
    IL_02B4: beq IL_0355
    IL_02B9: ldarg.0
    IL_02BA: ldc.i4 -2147352568
    IL_02BF: beq.s IL_02F0
    IL_02C1: br IL_0AB4
    IL_02C6: ldarg.0
    IL_02C7: ldc.i4 -2146959344
    IL_02CC: beq.s IL_02FD
    IL_02CE: ldarg.0
    IL_02CF: ldc.i4 -2145386464
    IL_02D4: beq.s IL_0316
    IL_02D6: ldarg.0
    IL_02D7: ldc.i4 -2139094976
    IL_02DC: beq.s IL_032E
    IL_02DE: br IL_0AB4
    IL_02E3: ldarg.1
    IL_02E4: unbox.any System.Int16
    IL_02E9: conv.u1
    IL_02EA: box System.Byte
    IL_02EF: ret
    IL_02F0: ldarg.1
    IL_02F1: unbox.any System.Int16
    IL_02F6: conv.i1
    IL_02F7: box System.SByte
    IL_02FC: ret
    IL_02FD: ldarg.1
    IL_02FE: unbox.any System.Int16
    IL_0303: box System.Int16
    IL_0308: ret
    IL_0309: ldarg.1
    IL_030A: unbox.any System.Int16
    IL_030F: conv.u2
    IL_0310: box System.UInt16
    IL_0315: ret
    IL_0316: ldarg.1
    IL_0317: unbox.any System.Int16
    IL_031C: box System.Int32
    IL_0321: ret
    IL_0322: ldarg.1
    IL_0323: unbox.any System.Int16
    IL_0328: box System.UInt32
    IL_032D: ret
    IL_032E: ldarg.1
    IL_032F: unbox.any System.Int16
    IL_0334: conv.i8
    IL_0335: box System.Int64
    IL_033A: ret
    IL_033B: ldarg.1
    IL_033C: unbox.any System.Int16
    IL_0341: conv.i8
    IL_0342: box System.UInt64
    IL_0347: ret
    IL_0348: ldarg.1
    IL_0349: unbox.any System.Int16
    IL_034E: conv.r4
    IL_034F: box System.Single
    IL_0354: ret
    IL_0355: ldarg.1
    IL_0356: unbox.any System.Int16
    IL_035B: conv.r8
    IL_035C: box System.Double
    IL_0361: ret
    IL_0362: ldarg.0
    IL_0363: ldc.i4 1107296288
    IL_0368: bgt.un.s IL_03B0
    IL_036A: ldarg.0
    IL_036B: ldc.i4 537133072
    IL_0370: bgt.un.s IL_038A
    IL_0372: ldarg.0
    IL_0373: ldc.i4 536936456
    IL_0378: beq.s IL_03ED
    IL_037A: ldarg.0
    IL_037B: ldc.i4 537133072
    IL_0380: beq IL_0414
    IL_0385: br IL_0AB4
    IL_038A: ldarg.0
    IL_038B: ldc.i4 537919520
    IL_0390: beq IL_042C
    IL_0395: ldarg.0
    IL_0396: ldc.i4 541065280
    IL_039B: beq IL_0445
    IL_03A0: ldarg.0
    IL_03A1: ldc.i4 1107296288
    IL_03A6: beq IL_0452
    IL_03AB: br IL_0AB4
    IL_03B0: ldarg.0
    IL_03B1: ldc.i4 -2147352568
    IL_03B6: bgt.un.s IL_03D0
    IL_03B8: ldarg.0
    IL_03B9: ldc.i4 1140850752
    IL_03BE: beq IL_045F
    IL_03C3: ldarg.0
    IL_03C4: ldc.i4 -2147352568
    IL_03C9: beq.s IL_03FA
    IL_03CB: br IL_0AB4
    IL_03D0: ldarg.0
    IL_03D1: ldc.i4 -2146959344
    IL_03D6: beq.s IL_0407
    IL_03D8: ldarg.0
    IL_03D9: ldc.i4 -2145386464
    IL_03DE: beq.s IL_0420
    IL_03E0: ldarg.0
    IL_03E1: ldc.i4 -2139094976
    IL_03E6: beq.s IL_0438
    IL_03E8: br IL_0AB4
    IL_03ED: ldarg.1
    IL_03EE: unbox.any System.UInt16
    IL_03F3: conv.u1
    IL_03F4: box System.Byte
    IL_03F9: ret
    IL_03FA: ldarg.1
    IL_03FB: unbox.any System.UInt16
    IL_0400: conv.i1
    IL_0401: box System.SByte
    IL_0406: ret
    IL_0407: ldarg.1
    IL_0408: unbox.any System.UInt16
    IL_040D: conv.i2
    IL_040E: box System.Int16
    IL_0413: ret
    IL_0414: ldarg.1
    IL_0415: unbox.any System.UInt16
    IL_041A: box System.UInt16
    IL_041F: ret
    IL_0420: ldarg.1
    IL_0421: unbox.any System.UInt16
    IL_0426: box System.Int32
    IL_042B: ret
    IL_042C: ldarg.1
    IL_042D: unbox.any System.UInt16
    IL_0432: box System.UInt32
    IL_0437: ret
    IL_0438: ldarg.1
    IL_0439: unbox.any System.UInt16
    IL_043E: conv.u8
    IL_043F: box System.Int64
    IL_0444: ret
    IL_0445: ldarg.1
    IL_0446: unbox.any System.UInt16
    IL_044B: conv.u8
    IL_044C: box System.UInt64
    IL_0451: ret
    IL_0452: ldarg.1
    IL_0453: unbox.any System.UInt16
    IL_0458: conv.r4
    IL_0459: box System.Single
    IL_045E: ret
    IL_045F: ldarg.1
    IL_0460: unbox.any System.UInt16
    IL_0465: conv.r8
    IL_0466: box System.Double
    IL_046B: ret
    IL_046C: ldarg.0
    IL_046D: ldc.i4 1107296288
    IL_0472: bgt.un.s IL_04BA
    IL_0474: ldarg.0
    IL_0475: ldc.i4 537133072
    IL_047A: bgt.un.s IL_0494
    IL_047C: ldarg.0
    IL_047D: ldc.i4 536936456
    IL_0482: beq.s IL_04F7
    IL_0484: ldarg.0
    IL_0485: ldc.i4 537133072
    IL_048A: beq IL_051E
    IL_048F: br IL_0AB4
    IL_0494: ldarg.0
    IL_0495: ldc.i4 537919520
    IL_049A: beq IL_0537
    IL_049F: ldarg.0
    IL_04A0: ldc.i4 541065280
    IL_04A5: beq IL_0550
    IL_04AA: ldarg.0
    IL_04AB: ldc.i4 1107296288
    IL_04B0: beq IL_055D
    IL_04B5: br IL_0AB4
    IL_04BA: ldarg.0
    IL_04BB: ldc.i4 -2147352568
    IL_04C0: bgt.un.s IL_04DA
    IL_04C2: ldarg.0
    IL_04C3: ldc.i4 1140850752
    IL_04C8: beq IL_056A
    IL_04CD: ldarg.0
    IL_04CE: ldc.i4 -2147352568
    IL_04D3: beq.s IL_0504
    IL_04D5: br IL_0AB4
    IL_04DA: ldarg.0
    IL_04DB: ldc.i4 -2146959344
    IL_04E0: beq.s IL_0511
    IL_04E2: ldarg.0
    IL_04E3: ldc.i4 -2145386464
    IL_04E8: beq.s IL_052B
    IL_04EA: ldarg.0
    IL_04EB: ldc.i4 -2139094976
    IL_04F0: beq.s IL_0543
    IL_04F2: br IL_0AB4
    IL_04F7: ldarg.1
    IL_04F8: unbox.any System.Int32
    IL_04FD: conv.u1
    IL_04FE: box System.Byte
    IL_0503: ret
    IL_0504: ldarg.1
    IL_0505: unbox.any System.Int32
    IL_050A: conv.i1
    IL_050B: box System.SByte
    IL_0510: ret
    IL_0511: ldarg.1
    IL_0512: unbox.any System.Int32
    IL_0517: conv.i2
    IL_0518: box System.Int16
    IL_051D: ret
    IL_051E: ldarg.1
    IL_051F: unbox.any System.Int32
    IL_0524: conv.u2
    IL_0525: box System.UInt16
    IL_052A: ret
    IL_052B: ldarg.1
    IL_052C: unbox.any System.Int32
    IL_0531: box System.Int32
    IL_0536: ret
    IL_0537: ldarg.1
    IL_0538: unbox.any System.Int32
    IL_053D: box System.UInt32
    IL_0542: ret
    IL_0543: ldarg.1
    IL_0544: unbox.any System.Int32
    IL_0549: conv.i8
    IL_054A: box System.Int64
    IL_054F: ret
    IL_0550: ldarg.1
    IL_0551: unbox.any System.Int32
    IL_0556: conv.i8
    IL_0557: box System.UInt64
    IL_055C: ret
    IL_055D: ldarg.1
    IL_055E: unbox.any System.Int32
    IL_0563: conv.r4
    IL_0564: box System.Single
    IL_0569: ret
    IL_056A: ldarg.1
    IL_056B: unbox.any System.Int32
    IL_0570: conv.r8
    IL_0571: box System.Double
    IL_0576: ret
    IL_0577: ldarg.0
    IL_0578: ldc.i4 1107296288
    IL_057D: bgt.un.s IL_05C5
    IL_057F: ldarg.0
    IL_0580: ldc.i4 537133072
    IL_0585: bgt.un.s IL_059F
    IL_0587: ldarg.0
    IL_0588: ldc.i4 536936456
    IL_058D: beq.s IL_0602
    IL_058F: ldarg.0
    IL_0590: ldc.i4 537133072
    IL_0595: beq IL_0629
    IL_059A: br IL_0AB4
    IL_059F: ldarg.0
    IL_05A0: ldc.i4 537919520
    IL_05A5: beq IL_0642
    IL_05AA: ldarg.0
    IL_05AB: ldc.i4 541065280
    IL_05B0: beq IL_065B
    IL_05B5: ldarg.0
    IL_05B6: ldc.i4 1107296288
    IL_05BB: beq IL_0668
    IL_05C0: br IL_0AB4
    IL_05C5: ldarg.0
    IL_05C6: ldc.i4 -2147352568
    IL_05CB: bgt.un.s IL_05E5
    IL_05CD: ldarg.0
    IL_05CE: ldc.i4 1140850752
    IL_05D3: beq IL_0676
    IL_05D8: ldarg.0
    IL_05D9: ldc.i4 -2147352568
    IL_05DE: beq.s IL_060F
    IL_05E0: br IL_0AB4
    IL_05E5: ldarg.0
    IL_05E6: ldc.i4 -2146959344
    IL_05EB: beq.s IL_061C
    IL_05ED: ldarg.0
    IL_05EE: ldc.i4 -2145386464
    IL_05F3: beq.s IL_0636
    IL_05F5: ldarg.0
    IL_05F6: ldc.i4 -2139094976
    IL_05FB: beq.s IL_064E
    IL_05FD: br IL_0AB4
    IL_0602: ldarg.1
    IL_0603: unbox.any System.UInt32
    IL_0608: conv.u1
    IL_0609: box System.Byte
    IL_060E: ret
    IL_060F: ldarg.1
    IL_0610: unbox.any System.UInt32
    IL_0615: conv.i1
    IL_0616: box System.SByte
    IL_061B: ret
    IL_061C: ldarg.1
    IL_061D: unbox.any System.UInt32
    IL_0622: conv.i2
    IL_0623: box System.Int16
    IL_0628: ret
    IL_0629: ldarg.1
    IL_062A: unbox.any System.UInt32
    IL_062F: conv.u2
    IL_0630: box System.UInt16
    IL_0635: ret
    IL_0636: ldarg.1
    IL_0637: unbox.any System.UInt32
    IL_063C: box System.Int32
    IL_0641: ret
    IL_0642: ldarg.1
    IL_0643: unbox.any System.UInt32
    IL_0648: box System.UInt32
    IL_064D: ret
    IL_064E: ldarg.1
    IL_064F: unbox.any System.UInt32
    IL_0654: conv.u8
    IL_0655: box System.Int64
    IL_065A: ret
    IL_065B: ldarg.1
    IL_065C: unbox.any System.UInt32
    IL_0661: conv.u8
    IL_0662: box System.UInt64
    IL_0667: ret
    IL_0668: ldarg.1
    IL_0669: unbox.any System.UInt32
    IL_066E: conv.r.un
    IL_066F: conv.r4
    IL_0670: box System.Single
    IL_0675: ret
    IL_0676: ldarg.1
    IL_0677: unbox.any System.UInt32
    IL_067C: conv.r.un
    IL_067D: conv.r8
    IL_067E: box System.Double
    IL_0683: ret
    IL_0684: ldarg.0
    IL_0685: ldc.i4 1107296288
    IL_068A: bgt.un.s IL_06D2
    IL_068C: ldarg.0
    IL_068D: ldc.i4 537133072
    IL_0692: bgt.un.s IL_06AC
    IL_0694: ldarg.0
    IL_0695: ldc.i4 536936456
    IL_069A: beq.s IL_070F
    IL_069C: ldarg.0
    IL_069D: ldc.i4 537133072
    IL_06A2: beq IL_0736
    IL_06A7: br IL_0AB4
    IL_06AC: ldarg.0
    IL_06AD: ldc.i4 537919520
    IL_06B2: beq IL_0750
    IL_06B7: ldarg.0
    IL_06B8: ldc.i4 541065280
    IL_06BD: beq IL_0769
    IL_06C2: ldarg.0
    IL_06C3: ldc.i4 1107296288
    IL_06C8: beq IL_0775
    IL_06CD: br IL_0AB4
    IL_06D2: ldarg.0
    IL_06D3: ldc.i4 -2147352568
    IL_06D8: bgt.un.s IL_06F2
    IL_06DA: ldarg.0
    IL_06DB: ldc.i4 1140850752
    IL_06E0: beq IL_0782
    IL_06E5: ldarg.0
    IL_06E6: ldc.i4 -2147352568
    IL_06EB: beq.s IL_071C
    IL_06ED: br IL_0AB4
    IL_06F2: ldarg.0
    IL_06F3: ldc.i4 -2146959344
    IL_06F8: beq.s IL_0729
    IL_06FA: ldarg.0
    IL_06FB: ldc.i4 -2145386464
    IL_0700: beq.s IL_0743
    IL_0702: ldarg.0
    IL_0703: ldc.i4 -2139094976
    IL_0708: beq.s IL_075D
    IL_070A: br IL_0AB4
    IL_070F: ldarg.1
    IL_0710: unbox.any System.Int64
    IL_0715: conv.u1
    IL_0716: box System.Byte
    IL_071B: ret
    IL_071C: ldarg.1
    IL_071D: unbox.any System.Int64
    IL_0722: conv.i1
    IL_0723: box System.SByte
    IL_0728: ret
    IL_0729: ldarg.1
    IL_072A: unbox.any System.Int64
    IL_072F: conv.i2
    IL_0730: box System.Int16
    IL_0735: ret
    IL_0736: ldarg.1
    IL_0737: unbox.any System.Int64
    IL_073C: conv.u2
    IL_073D: box System.UInt16
    IL_0742: ret
    IL_0743: ldarg.1
    IL_0744: unbox.any System.Int64
    IL_0749: conv.i4
    IL_074A: box System.Int32
    IL_074F: ret
    IL_0750: ldarg.1
    IL_0751: unbox.any System.Int64
    IL_0756: conv.u4
    IL_0757: box System.UInt32
    IL_075C: ret
    IL_075D: ldarg.1
    IL_075E: unbox.any System.Int64
    IL_0763: box System.Int64
    IL_0768: ret
    IL_0769: ldarg.1
    IL_076A: unbox.any System.Int64
    IL_076F: box System.UInt64
    IL_0774: ret
    IL_0775: ldarg.1
    IL_0776: unbox.any System.Int64
    IL_077B: conv.r4
    IL_077C: box System.Single
    IL_0781: ret
    IL_0782: ldarg.1
    IL_0783: unbox.any System.Int64
    IL_0788: conv.r8
    IL_0789: box System.Double
    IL_078E: ret
    IL_078F: ldarg.0
    IL_0790: ldc.i4 1107296288
    IL_0795: bgt.un.s IL_07DD
    IL_0797: ldarg.0
    IL_0798: ldc.i4 537133072
    IL_079D: bgt.un.s IL_07B7
    IL_079F: ldarg.0
    IL_07A0: ldc.i4 536936456
    IL_07A5: beq.s IL_081A
    IL_07A7: ldarg.0
    IL_07A8: ldc.i4 537133072
    IL_07AD: beq IL_0841
    IL_07B2: br IL_0AB4
    IL_07B7: ldarg.0
    IL_07B8: ldc.i4 537919520
    IL_07BD: beq IL_085B
    IL_07C2: ldarg.0
    IL_07C3: ldc.i4 541065280
    IL_07C8: beq IL_0874
    IL_07CD: ldarg.0
    IL_07CE: ldc.i4 1107296288
    IL_07D3: beq IL_0880
    IL_07D8: br IL_0AB4
    IL_07DD: ldarg.0
    IL_07DE: ldc.i4 -2147352568
    IL_07E3: bgt.un.s IL_07FD
    IL_07E5: ldarg.0
    IL_07E6: ldc.i4 1140850752
    IL_07EB: beq IL_088E
    IL_07F0: ldarg.0
    IL_07F1: ldc.i4 -2147352568
    IL_07F6: beq.s IL_0827
    IL_07F8: br IL_0AB4
    IL_07FD: ldarg.0
    IL_07FE: ldc.i4 -2146959344
    IL_0803: beq.s IL_0834
    IL_0805: ldarg.0
    IL_0806: ldc.i4 -2145386464
    IL_080B: beq.s IL_084E
    IL_080D: ldarg.0
    IL_080E: ldc.i4 -2139094976
    IL_0813: beq.s IL_0868
    IL_0815: br IL_0AB4
    IL_081A: ldarg.1
    IL_081B: unbox.any System.UInt64
    IL_0820: conv.u1
    IL_0821: box System.Byte
    IL_0826: ret
    IL_0827: ldarg.1
    IL_0828: unbox.any System.UInt64
    IL_082D: conv.i1
    IL_082E: box System.SByte
    IL_0833: ret
    IL_0834: ldarg.1
    IL_0835: unbox.any System.UInt64
    IL_083A: conv.i2
    IL_083B: box System.Int16
    IL_0840: ret
    IL_0841: ldarg.1
    IL_0842: unbox.any System.UInt64
    IL_0847: conv.u2
    IL_0848: box System.UInt16
    IL_084D: ret
    IL_084E: ldarg.1
    IL_084F: unbox.any System.UInt64
    IL_0854: conv.i4
    IL_0855: box System.Int32
    IL_085A: ret
    IL_085B: ldarg.1
    IL_085C: unbox.any System.UInt64
    IL_0861: conv.u4
    IL_0862: box System.UInt32
    IL_0867: ret
    IL_0868: ldarg.1
    IL_0869: unbox.any System.UInt64
    IL_086E: box System.Int64
    IL_0873: ret
    IL_0874: ldarg.1
    IL_0875: unbox.any System.UInt64
    IL_087A: box System.UInt64
    IL_087F: ret
    IL_0880: ldarg.1
    IL_0881: unbox.any System.UInt64
    IL_0886: conv.r.un
    IL_0887: conv.r4
    IL_0888: box System.Single
    IL_088D: ret
    IL_088E: ldarg.1
    IL_088F: unbox.any System.UInt64
    IL_0894: conv.r.un
    IL_0895: conv.r8
    IL_0896: box System.Double
    IL_089B: ret
    IL_089C: ldarg.0
    IL_089D: ldc.i4 1107296288
    IL_08A2: bgt.un.s IL_08EA
    IL_08A4: ldarg.0
    IL_08A5: ldc.i4 537133072
    IL_08AA: bgt.un.s IL_08C4
    IL_08AC: ldarg.0
    IL_08AD: ldc.i4 536936456
    IL_08B2: beq.s IL_0927
    IL_08B4: ldarg.0
    IL_08B5: ldc.i4 537133072
    IL_08BA: beq IL_094E
    IL_08BF: br IL_0AB4
    IL_08C4: ldarg.0
    IL_08C5: ldc.i4 537919520
    IL_08CA: beq IL_0968
    IL_08CF: ldarg.0
    IL_08D0: ldc.i4 541065280
    IL_08D5: beq IL_0982
    IL_08DA: ldarg.0
    IL_08DB: ldc.i4 1107296288
    IL_08E0: beq IL_098F
    IL_08E5: br IL_0AB4
    IL_08EA: ldarg.0
    IL_08EB: ldc.i4 -2147352568
    IL_08F0: bgt.un.s IL_090A
    IL_08F2: ldarg.0
    IL_08F3: ldc.i4 1140850752
    IL_08F8: beq IL_099B
    IL_08FD: ldarg.0
    IL_08FE: ldc.i4 -2147352568
    IL_0903: beq.s IL_0934
    IL_0905: br IL_0AB4
    IL_090A: ldarg.0
    IL_090B: ldc.i4 -2146959344
    IL_0910: beq.s IL_0941
    IL_0912: ldarg.0
    IL_0913: ldc.i4 -2145386464
    IL_0918: beq.s IL_095B
    IL_091A: ldarg.0
    IL_091B: ldc.i4 -2139094976
    IL_0920: beq.s IL_0975
    IL_0922: br IL_0AB4
    IL_0927: ldarg.1
    IL_0928: unbox.any System.Single
    IL_092D: conv.u1
    IL_092E: box System.Byte
    IL_0933: ret
    IL_0934: ldarg.1
    IL_0935: unbox.any System.Single
    IL_093A: conv.i1
    IL_093B: box System.SByte
    IL_0940: ret
    IL_0941: ldarg.1
    IL_0942: unbox.any System.Single
    IL_0947: conv.i2
    IL_0948: box System.Int16
    IL_094D: ret
    IL_094E: ldarg.1
    IL_094F: unbox.any System.Single
    IL_0954: conv.u2
    IL_0955: box System.UInt16
    IL_095A: ret
    IL_095B: ldarg.1
    IL_095C: unbox.any System.Single
    IL_0961: conv.i4
    IL_0962: box System.Int32
    IL_0967: ret
    IL_0968: ldarg.1
    IL_0969: unbox.any System.Single
    IL_096E: conv.u4
    IL_096F: box System.UInt32
    IL_0974: ret
    IL_0975: ldarg.1
    IL_0976: unbox.any System.Single
    IL_097B: conv.i8
    IL_097C: box System.Int64
    IL_0981: ret
    IL_0982: ldarg.1
    IL_0983: unbox.any System.Single
    IL_0988: conv.u8
    IL_0989: box System.UInt64
    IL_098E: ret
    IL_098F: ldarg.1
    IL_0990: unbox.any System.Single
    IL_0995: box System.Single
    IL_099A: ret
    IL_099B: ldarg.1
    IL_099C: unbox.any System.Single
    IL_09A1: conv.r8
    IL_09A2: box System.Double
    IL_09A7: ret
    IL_09A8: ldarg.0
    IL_09A9: ldc.i4 1107296288
    IL_09AE: bgt.un.s IL_09F6
    IL_09B0: ldarg.0
    IL_09B1: ldc.i4 537133072
    IL_09B6: bgt.un.s IL_09D0
    IL_09B8: ldarg.0
    IL_09B9: ldc.i4 536936456
    IL_09BE: beq.s IL_0A33
    IL_09C0: ldarg.0
    IL_09C1: ldc.i4 537133072
    IL_09C6: beq IL_0A5A
    IL_09CB: br IL_0AB4
    IL_09D0: ldarg.0
    IL_09D1: ldc.i4 537919520
    IL_09D6: beq IL_0A74
    IL_09DB: ldarg.0
    IL_09DC: ldc.i4 541065280
    IL_09E1: beq IL_0A8E
    IL_09E6: ldarg.0
    IL_09E7: ldc.i4 1107296288
    IL_09EC: beq IL_0A9B
    IL_09F1: br IL_0AB4
    IL_09F6: ldarg.0
    IL_09F7: ldc.i4 -2147352568
    IL_09FC: bgt.un.s IL_0A16
    IL_09FE: ldarg.0
    IL_09FF: ldc.i4 1140850752
    IL_0A04: beq IL_0AA8
    IL_0A09: ldarg.0
    IL_0A0A: ldc.i4 -2147352568
    IL_0A0F: beq.s IL_0A40
    IL_0A11: br IL_0AB4
    IL_0A16: ldarg.0
    IL_0A17: ldc.i4 -2146959344
    IL_0A1C: beq.s IL_0A4D
    IL_0A1E: ldarg.0
    IL_0A1F: ldc.i4 -2145386464
    IL_0A24: beq.s IL_0A67
    IL_0A26: ldarg.0
    IL_0A27: ldc.i4 -2139094976
    IL_0A2C: beq.s IL_0A81
    IL_0A2E: br IL_0AB4
    IL_0A33: ldarg.1
    IL_0A34: unbox.any System.Double
    IL_0A39: conv.u1
    IL_0A3A: box System.Byte
    IL_0A3F: ret
    IL_0A40: ldarg.1
    IL_0A41: unbox.any System.Double
    IL_0A46: conv.i1
    IL_0A47: box System.SByte
    IL_0A4C: ret
    IL_0A4D: ldarg.1
    IL_0A4E: unbox.any System.Double
    IL_0A53: conv.i2
    IL_0A54: box System.Int16
    IL_0A59: ret
    IL_0A5A: ldarg.1
    IL_0A5B: unbox.any System.Double
    IL_0A60: conv.u2
    IL_0A61: box System.UInt16
    IL_0A66: ret
    IL_0A67: ldarg.1
    IL_0A68: unbox.any System.Double
    IL_0A6D: conv.i4
    IL_0A6E: box System.Int32
    IL_0A73: ret
    IL_0A74: ldarg.1
    IL_0A75: unbox.any System.Double
    IL_0A7A: conv.u4
    IL_0A7B: box System.UInt32
    IL_0A80: ret
    IL_0A81: ldarg.1
    IL_0A82: unbox.any System.Double
    IL_0A87: conv.i8
    IL_0A88: box System.Int64
    IL_0A8D: ret
    IL_0A8E: ldarg.1
    IL_0A8F: unbox.any System.Double
    IL_0A94: conv.u8
    IL_0A95: box System.UInt64
    IL_0A9A: ret
    IL_0A9B: ldarg.1
    IL_0A9C: unbox.any System.Double
    IL_0AA1: conv.r4
    IL_0AA2: box System.Single
    IL_0AA7: ret
    IL_0AA8: ldarg.1
    IL_0AA9: unbox.any System.Double
    IL_0AAE: box System.Double
    IL_0AB3: ret
    IL_0AB4: ldarg.1
    IL_0AB5: ret
}
------------------------------------------------------------------------------------------------------------------------
