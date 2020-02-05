// System.Collections.Generic.HashSet`1<Z0.NumericKind> Z0.Numeric::kindsetCreate(Z0.NumericKind)
// HashSet<NumericKind:uint> kindsetCreate(NumericKind:uint k)
// IL
HashSet<NumericKind:uint> kindsetCreate(NumericKind:uint k)
{
    IL_0000: newobj System.Void System.Collections.Generic.HashSet`1<Z0.NumericKind>::.ctor()
    IL_0005: stloc.0
    IL_0006: ldarg.0
    IL_0007: ldc.i4 65536
    IL_000C: call System.Boolean Z0.Numeric::is(Z0.NumericKind,Z0.NumericId)
    IL_0011: brfalse.s IL_001F
    IL_0013: ldloc.0
    IL_0014: ldc.i4 536936456
    IL_0019: callvirt System.Boolean System.Collections.Generic.HashSet`1<Z0.NumericKind>::Add(Z0.NumericKind)
    IL_001E: pop
    IL_001F: ldarg.0
    IL_0020: ldc.i4 131072
    IL_0025: call System.Boolean Z0.Numeric::is(Z0.NumericKind,Z0.NumericId)
    IL_002A: brfalse.s IL_0038
    IL_002C: ldloc.0
    IL_002D: ldc.i4 -2147352568
    IL_0032: callvirt System.Boolean System.Collections.Generic.HashSet`1<Z0.NumericKind>::Add(Z0.NumericKind)
    IL_0037: pop
    IL_0038: ldarg.0
    IL_0039: ldc.i4 262144
    IL_003E: call System.Boolean Z0.Numeric::is(Z0.NumericKind,Z0.NumericId)
    IL_0043: brfalse.s IL_0051
    IL_0045: ldloc.0
    IL_0046: ldc.i4 537133072
    IL_004B: callvirt System.Boolean System.Collections.Generic.HashSet`1<Z0.NumericKind>::Add(Z0.NumericKind)
    IL_0050: pop
    IL_0051: ldarg.0
    IL_0052: ldc.i4 524288
    IL_0057: call System.Boolean Z0.Numeric::is(Z0.NumericKind,Z0.NumericId)
    IL_005C: brfalse.s IL_006A
    IL_005E: ldloc.0
    IL_005F: ldc.i4 -2146959344
    IL_0064: callvirt System.Boolean System.Collections.Generic.HashSet`1<Z0.NumericKind>::Add(Z0.NumericKind)
    IL_0069: pop
    IL_006A: ldarg.0
    IL_006B: ldc.i4 1048576
    IL_0070: call System.Boolean Z0.Numeric::is(Z0.NumericKind,Z0.NumericId)
    IL_0075: brfalse.s IL_0083
    IL_0077: ldloc.0
    IL_0078: ldc.i4 537919520
    IL_007D: callvirt System.Boolean System.Collections.Generic.HashSet`1<Z0.NumericKind>::Add(Z0.NumericKind)
    IL_0082: pop
    IL_0083: ldarg.0
    IL_0084: ldc.i4 2097152
    IL_0089: call System.Boolean Z0.Numeric::is(Z0.NumericKind,Z0.NumericId)
    IL_008E: brfalse.s IL_009C
    IL_0090: ldloc.0
    IL_0091: ldc.i4 -2145386464
    IL_0096: callvirt System.Boolean System.Collections.Generic.HashSet`1<Z0.NumericKind>::Add(Z0.NumericKind)
    IL_009B: pop
    IL_009C: ldarg.0
    IL_009D: ldc.i4 4194304
    IL_00A2: call System.Boolean Z0.Numeric::is(Z0.NumericKind,Z0.NumericId)
    IL_00A7: brfalse.s IL_00B5
    IL_00A9: ldloc.0
    IL_00AA: ldc.i4 541065280
    IL_00AF: callvirt System.Boolean System.Collections.Generic.HashSet`1<Z0.NumericKind>::Add(Z0.NumericKind)
    IL_00B4: pop
    IL_00B5: ldarg.0
    IL_00B6: ldc.i4 8388608
    IL_00BB: call System.Boolean Z0.Numeric::is(Z0.NumericKind,Z0.NumericId)
    IL_00C0: brfalse.s IL_00CE
    IL_00C2: ldloc.0
    IL_00C3: ldc.i4 -2139094976
    IL_00C8: callvirt System.Boolean System.Collections.Generic.HashSet`1<Z0.NumericKind>::Add(Z0.NumericKind)
    IL_00CD: pop
    IL_00CE: ldarg.0
    IL_00CF: ldc.i4 33554432
    IL_00D4: call System.Boolean Z0.Numeric::is(Z0.NumericKind,Z0.NumericId)
    IL_00D9: brfalse.s IL_00E7
    IL_00DB: ldloc.0
    IL_00DC: ldc.i4 1107296288
    IL_00E1: callvirt System.Boolean System.Collections.Generic.HashSet`1<Z0.NumericKind>::Add(Z0.NumericKind)
    IL_00E6: pop
    IL_00E7: ldarg.0
    IL_00E8: ldc.i4 67108864
    IL_00ED: call System.Boolean Z0.Numeric::is(Z0.NumericKind,Z0.NumericId)
    IL_00F2: brfalse.s IL_0100
    IL_00F4: ldloc.0
    IL_00F5: ldc.i4 1140850752
    IL_00FA: callvirt System.Boolean System.Collections.Generic.HashSet`1<Z0.NumericKind>::Add(Z0.NumericKind)
    IL_00FF: pop
    IL_0100: ldloc.0
    IL_0101: ret
}
------------------------------------------------------------------------------------------------------------------------
