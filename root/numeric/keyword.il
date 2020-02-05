// System.String Z0.Numeric::keyword(Z0.NumericKind)
// string keyword(NumericKind:uint k)
// AggressiveInlining
string keyword(NumericKind:uint k)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4 1107296288
    IL_0006: bgt.un.s IL_0042
    IL_0008: ldarg.0
    IL_0009: ldc.i4 537133072
    IL_000E: bgt.un.s IL_0025
    IL_0010: ldarg.0
    IL_0011: ldc.i4 536936456
    IL_0016: beq.s IL_0076
    IL_0018: ldarg.0
    IL_0019: ldc.i4 537133072
    IL_001E: beq.s IL_0086
    IL_0020: br IL_00C6
    IL_0025: ldarg.0
    IL_0026: ldc.i4 537919520
    IL_002B: beq.s IL_0096
    IL_002D: ldarg.0
    IL_002E: ldc.i4 541065280
    IL_0033: beq.s IL_00AE
    IL_0035: ldarg.0
    IL_0036: ldc.i4 1107296288
    IL_003B: beq.s IL_00B6
    IL_003D: br IL_00C6
    IL_0042: ldarg.0
    IL_0043: ldc.i4 -2147352568
    IL_0048: bgt.un.s IL_005C
    IL_004A: ldarg.0
    IL_004B: ldc.i4 1140850752
    IL_0050: beq.s IL_00BE
    IL_0052: ldarg.0
    IL_0053: ldc.i4 -2147352568
    IL_0058: beq.s IL_007E
    IL_005A: br.s IL_00C6
    IL_005C: ldarg.0
    IL_005D: ldc.i4 -2146959344
    IL_0062: beq.s IL_008E
    IL_0064: ldarg.0
    IL_0065: ldc.i4 -2145386464
    IL_006A: beq.s IL_009E
    IL_006C: ldarg.0
    IL_006D: ldc.i4 -2139094976
    IL_0072: beq.s IL_00A6
    IL_0074: br.s IL_00C6
    IL_0076: ldstr "byte"
    IL_007B: stloc.0
    IL_007C: br.s IL_00D9
    IL_007E: ldstr "sbyte"
    IL_0083: stloc.0
    IL_0084: br.s IL_00D9
    IL_0086: ldstr "ushort"
    IL_008B: stloc.0
    IL_008C: br.s IL_00D9
    IL_008E: ldstr "short"
    IL_0093: stloc.0
    IL_0094: br.s IL_00D9
    IL_0096: ldstr "uint"
    IL_009B: stloc.0
    IL_009C: br.s IL_00D9
    IL_009E: ldstr "int"
    IL_00A3: stloc.0
    IL_00A4: br.s IL_00D9
    IL_00A6: ldstr "long"
    IL_00AB: stloc.0
    IL_00AC: br.s IL_00D9
    IL_00AE: ldstr "ulong"
    IL_00B3: stloc.0
    IL_00B4: br.s IL_00D9
    IL_00B6: ldstr "float"
    IL_00BB: stloc.0
    IL_00BC: br.s IL_00D9
    IL_00BE: ldstr "double"
    IL_00C3: stloc.0
    IL_00C4: br.s IL_00D9
    IL_00C6: ldarga.s k
    IL_00C8: constrained. Z0.NumericKind
    IL_00CE: callvirt System.String System.Object::ToString()
    IL_00D3: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_00D8: throw
    IL_00D9: ldloc.0
    IL_00DA: ret
}
------------------------------------------------------------------------------------------------------------------------
