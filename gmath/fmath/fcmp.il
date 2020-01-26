// Id := 100663869, Name := System.Boolean Z0.fmath::fcmp(System.Single,System.Single,Z0.FpCmpMode)
// bool fcmp(float x, float y, FpCmpMode:byte mode)
// IL
bool fcmp(float x, float y, FpCmpMode:byte mode)
{
    IL_0000: ldarg.2
    IL_0001: switch(IL_0087,IL_00ED,IL_010F,IL_0171,IL_00C9,IL_0167,IL_0156,IL_0171,IL_009B,IL_0134,IL_0145,IL_0171,IL_00AF,IL_0123,IL_00FE,IL_0171,IL_0091,IL_00E3,IL_0105,IL_0171,IL_00D6,IL_015D,IL_014F,IL_0171,IL_00A5,IL_012D,IL_013B,IL_0171,IL_00BC,IL_0119,IL_00F7)
    IL_0082: br IL_0171
    IL_0087: ldarg.0
    IL_0088: ldarg.1
    IL_0089: ceq
    IL_008B: stloc.1
    IL_008C: br IL_0177
    IL_0091: ldarg.0
    IL_0092: ldarg.1
    IL_0093: ceq
    IL_0095: stloc.1
    IL_0096: br IL_0177
    IL_009B: ldarg.0
    IL_009C: ldarg.1
    IL_009D: ceq
    IL_009F: stloc.1
    IL_00A0: br IL_0177
    IL_00A5: ldarg.0
    IL_00A6: ldarg.1
    IL_00A7: ceq
    IL_00A9: stloc.1
    IL_00AA: br IL_0177
    IL_00AF: ldarg.0
    IL_00B0: ldarg.1
    IL_00B1: ceq
    IL_00B3: ldc.i4.0
    IL_00B4: ceq
    IL_00B6: stloc.1
    IL_00B7: br IL_0177
    IL_00BC: ldarg.0
    IL_00BD: ldarg.1
    IL_00BE: ceq
    IL_00C0: ldc.i4.0
    IL_00C1: ceq
    IL_00C3: stloc.1
    IL_00C4: br IL_0177
    IL_00C9: ldarg.0
    IL_00CA: ldarg.1
    IL_00CB: ceq
    IL_00CD: ldc.i4.0
    IL_00CE: ceq
    IL_00D0: stloc.1
    IL_00D1: br IL_0177
    IL_00D6: ldarg.0
    IL_00D7: ldarg.1
    IL_00D8: ceq
    IL_00DA: ldc.i4.0
    IL_00DB: ceq
    IL_00DD: stloc.1
    IL_00DE: br IL_0177
    IL_00E3: ldarg.0
    IL_00E4: ldarg.1
    IL_00E5: clt
    IL_00E7: stloc.1
    IL_00E8: br IL_0177
    IL_00ED: ldarg.0
    IL_00EE: ldarg.1
    IL_00EF: clt
    IL_00F1: stloc.1
    IL_00F2: br IL_0177
    IL_00F7: ldarg.0
    IL_00F8: ldarg.1
    IL_00F9: cgt
    IL_00FB: stloc.1
    IL_00FC: br.s IL_0177
    IL_00FE: ldarg.0
    IL_00FF: ldarg.1
    IL_0100: cgt
    IL_0102: stloc.1
    IL_0103: br.s IL_0177
    IL_0105: ldarg.0
    IL_0106: ldarg.1
    IL_0107: cgt.un
    IL_0109: ldc.i4.0
    IL_010A: ceq
    IL_010C: stloc.1
    IL_010D: br.s IL_0177
    IL_010F: ldarg.0
    IL_0110: ldarg.1
    IL_0111: cgt.un
    IL_0113: ldc.i4.0
    IL_0114: ceq
    IL_0116: stloc.1
    IL_0117: br.s IL_0177
    IL_0119: ldarg.0
    IL_011A: ldarg.1
    IL_011B: clt.un
    IL_011D: ldc.i4.0
    IL_011E: ceq
    IL_0120: stloc.1
    IL_0121: br.s IL_0177
    IL_0123: ldarg.0
    IL_0124: ldarg.1
    IL_0125: clt.un
    IL_0127: ldc.i4.0
    IL_0128: ceq
    IL_012A: stloc.1
    IL_012B: br.s IL_0177
    IL_012D: ldarg.0
    IL_012E: ldarg.1
    IL_012F: clt.un
    IL_0131: stloc.1
    IL_0132: br.s IL_0177
    IL_0134: ldarg.0
    IL_0135: ldarg.1
    IL_0136: clt.un
    IL_0138: stloc.1
    IL_0139: br.s IL_0177
    IL_013B: ldarg.0
    IL_013C: ldarg.1
    IL_013D: cgt
    IL_013F: ldc.i4.0
    IL_0140: ceq
    IL_0142: stloc.1
    IL_0143: br.s IL_0177
    IL_0145: ldarg.0
    IL_0146: ldarg.1
    IL_0147: cgt
    IL_0149: ldc.i4.0
    IL_014A: ceq
    IL_014C: stloc.1
    IL_014D: br.s IL_0177
    IL_014F: ldarg.0
    IL_0150: ldarg.1
    IL_0151: cgt.un
    IL_0153: stloc.1
    IL_0154: br.s IL_0177
    IL_0156: ldarg.0
    IL_0157: ldarg.1
    IL_0158: cgt.un
    IL_015A: stloc.1
    IL_015B: br.s IL_0177
    IL_015D: ldarg.0
    IL_015E: ldarg.1
    IL_015F: clt
    IL_0161: ldc.i4.0
    IL_0162: ceq
    IL_0164: stloc.1
    IL_0165: br.s IL_0177
    IL_0167: ldarg.0
    IL_0168: ldarg.1
    IL_0169: clt
    IL_016B: ldc.i4.0
    IL_016C: ceq
    IL_016E: stloc.1
    IL_016F: br.s IL_0177
    IL_0171: newobj System.Void System.NotSupportedException::.ctor()
    IL_0176: throw
    IL_0177: ldloc.1
    IL_0178: stloc.0
    IL_0179: ldloc.0
    IL_017A: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663870, Name := System.Boolean Z0.fmath::fcmp(System.Double,System.Double,Z0.FpCmpMode)
// bool fcmp(double x, double y, FpCmpMode:byte mode)
// IL
bool fcmp(double x, double y, FpCmpMode:byte mode)
{
    IL_0000: ldarg.2
    IL_0001: switch(IL_0087,IL_00ED,IL_010F,IL_0171,IL_00C9,IL_0167,IL_0156,IL_0171,IL_009B,IL_0134,IL_0145,IL_0171,IL_00AF,IL_0123,IL_00FE,IL_0171,IL_0091,IL_00E3,IL_0105,IL_0171,IL_00D6,IL_015D,IL_014F,IL_0171,IL_00A5,IL_012D,IL_013B,IL_0171,IL_00BC,IL_0119,IL_00F7)
    IL_0082: br IL_0171
    IL_0087: ldarg.0
    IL_0088: ldarg.1
    IL_0089: ceq
    IL_008B: stloc.1
    IL_008C: br IL_0177
    IL_0091: ldarg.0
    IL_0092: ldarg.1
    IL_0093: ceq
    IL_0095: stloc.1
    IL_0096: br IL_0177
    IL_009B: ldarg.0
    IL_009C: ldarg.1
    IL_009D: ceq
    IL_009F: stloc.1
    IL_00A0: br IL_0177
    IL_00A5: ldarg.0
    IL_00A6: ldarg.1
    IL_00A7: ceq
    IL_00A9: stloc.1
    IL_00AA: br IL_0177
    IL_00AF: ldarg.0
    IL_00B0: ldarg.1
    IL_00B1: ceq
    IL_00B3: ldc.i4.0
    IL_00B4: ceq
    IL_00B6: stloc.1
    IL_00B7: br IL_0177
    IL_00BC: ldarg.0
    IL_00BD: ldarg.1
    IL_00BE: ceq
    IL_00C0: ldc.i4.0
    IL_00C1: ceq
    IL_00C3: stloc.1
    IL_00C4: br IL_0177
    IL_00C9: ldarg.0
    IL_00CA: ldarg.1
    IL_00CB: ceq
    IL_00CD: ldc.i4.0
    IL_00CE: ceq
    IL_00D0: stloc.1
    IL_00D1: br IL_0177
    IL_00D6: ldarg.0
    IL_00D7: ldarg.1
    IL_00D8: ceq
    IL_00DA: ldc.i4.0
    IL_00DB: ceq
    IL_00DD: stloc.1
    IL_00DE: br IL_0177
    IL_00E3: ldarg.0
    IL_00E4: ldarg.1
    IL_00E5: clt
    IL_00E7: stloc.1
    IL_00E8: br IL_0177
    IL_00ED: ldarg.0
    IL_00EE: ldarg.1
    IL_00EF: clt
    IL_00F1: stloc.1
    IL_00F2: br IL_0177
    IL_00F7: ldarg.0
    IL_00F8: ldarg.1
    IL_00F9: cgt
    IL_00FB: stloc.1
    IL_00FC: br.s IL_0177
    IL_00FE: ldarg.0
    IL_00FF: ldarg.1
    IL_0100: cgt
    IL_0102: stloc.1
    IL_0103: br.s IL_0177
    IL_0105: ldarg.0
    IL_0106: ldarg.1
    IL_0107: cgt.un
    IL_0109: ldc.i4.0
    IL_010A: ceq
    IL_010C: stloc.1
    IL_010D: br.s IL_0177
    IL_010F: ldarg.0
    IL_0110: ldarg.1
    IL_0111: cgt.un
    IL_0113: ldc.i4.0
    IL_0114: ceq
    IL_0116: stloc.1
    IL_0117: br.s IL_0177
    IL_0119: ldarg.0
    IL_011A: ldarg.1
    IL_011B: clt.un
    IL_011D: ldc.i4.0
    IL_011E: ceq
    IL_0120: stloc.1
    IL_0121: br.s IL_0177
    IL_0123: ldarg.0
    IL_0124: ldarg.1
    IL_0125: clt.un
    IL_0127: ldc.i4.0
    IL_0128: ceq
    IL_012A: stloc.1
    IL_012B: br.s IL_0177
    IL_012D: ldarg.0
    IL_012E: ldarg.1
    IL_012F: clt.un
    IL_0131: stloc.1
    IL_0132: br.s IL_0177
    IL_0134: ldarg.0
    IL_0135: ldarg.1
    IL_0136: clt.un
    IL_0138: stloc.1
    IL_0139: br.s IL_0177
    IL_013B: ldarg.0
    IL_013C: ldarg.1
    IL_013D: cgt
    IL_013F: ldc.i4.0
    IL_0140: ceq
    IL_0142: stloc.1
    IL_0143: br.s IL_0177
    IL_0145: ldarg.0
    IL_0146: ldarg.1
    IL_0147: cgt
    IL_0149: ldc.i4.0
    IL_014A: ceq
    IL_014C: stloc.1
    IL_014D: br.s IL_0177
    IL_014F: ldarg.0
    IL_0150: ldarg.1
    IL_0151: cgt.un
    IL_0153: stloc.1
    IL_0154: br.s IL_0177
    IL_0156: ldarg.0
    IL_0157: ldarg.1
    IL_0158: cgt.un
    IL_015A: stloc.1
    IL_015B: br.s IL_0177
    IL_015D: ldarg.0
    IL_015E: ldarg.1
    IL_015F: clt
    IL_0161: ldc.i4.0
    IL_0162: ceq
    IL_0164: stloc.1
    IL_0165: br.s IL_0177
    IL_0167: ldarg.0
    IL_0168: ldarg.1
    IL_0169: clt
    IL_016B: ldc.i4.0
    IL_016C: ceq
    IL_016E: stloc.1
    IL_016F: br.s IL_0177
    IL_0171: newobj System.Void System.NotSupportedException::.ctor()
    IL_0176: throw
    IL_0177: ldloc.1
    IL_0178: stloc.0
    IL_0179: ldloc.0
    IL_017A: ret
}
------------------------------------------------------------------------------------------------------------------------
