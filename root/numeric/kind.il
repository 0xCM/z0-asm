// Z0.NumericKind Z0.Numeric::kind(System.Type)
// NumericKind:uint kind(Type t)
// AggressiveInlining
NumericKind:uint kind(Type t)
{
    IL_0000: ldarg.0
    IL_0001: callvirt System.Boolean System.Type::get_IsEnum()
    IL_0006: brfalse.s IL_000F
    IL_0008: ldc.i4.0
    IL_0009: stloc.0
    IL_000A: br IL_00A1
    IL_000F: ldarg.0
    IL_0010: call System.Type Z0.RootX::EffectiveType(System.Type)
    IL_0015: call System.TypeCode System.Type::GetTypeCode(System.Type)
    IL_001A: stloc.2
    IL_001B: ldloc.2
    IL_001C: ldc.i4.5
    IL_001D: sub
    IL_001E: switch(IL_0055,IL_004D,IL_005D,IL_0065,IL_006D,IL_0075,IL_007D,IL_0085,IL_008D,IL_0095)
    IL_004B: br.s IL_009D
    IL_004D: ldc.i4 536936456
    IL_0052: stloc.1
    IL_0053: br.s IL_009F
    IL_0055: ldc.i4 -2147352568
    IL_005A: stloc.1
    IL_005B: br.s IL_009F
    IL_005D: ldc.i4 -2146959344
    IL_0062: stloc.1
    IL_0063: br.s IL_009F
    IL_0065: ldc.i4 537133072
    IL_006A: stloc.1
    IL_006B: br.s IL_009F
    IL_006D: ldc.i4 -2145386464
    IL_0072: stloc.1
    IL_0073: br.s IL_009F
    IL_0075: ldc.i4 537919520
    IL_007A: stloc.1
    IL_007B: br.s IL_009F
    IL_007D: ldc.i4 -2139094976
    IL_0082: stloc.1
    IL_0083: br.s IL_009F
    IL_0085: ldc.i4 541065280
    IL_008A: stloc.1
    IL_008B: br.s IL_009F
    IL_008D: ldc.i4 1107296288
    IL_0092: stloc.1
    IL_0093: br.s IL_009F
    IL_0095: ldc.i4 1140850752
    IL_009A: stloc.1
    IL_009B: br.s IL_009F
    IL_009D: ldc.i4.0
    IL_009E: stloc.1
    IL_009F: ldloc.1
    IL_00A0: stloc.0
    IL_00A1: ldloc.0
    IL_00A2: ret
}
------------------------------------------------------------------------------------------------------------------------
