// System.Type Z0.Numeric::type(Z0.NumericKind)
// Type type(NumericKind:uint k)
// IL
Type type(NumericKind:uint k)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4 1107296288
    IL_0006: bgt.un.s IL_004E
    IL_0008: ldarg.0
    IL_0009: ldc.i4 537133072
    IL_000E: bgt.un.s IL_0028
    IL_0010: ldarg.0
    IL_0011: ldc.i4 536936456
    IL_0016: beq.s IL_008B
    IL_0018: ldarg.0
    IL_0019: ldc.i4 537133072
    IL_001E: beq IL_00A8
    IL_0023: br IL_0110
    IL_0028: ldarg.0
    IL_0029: ldc.i4 537919520
    IL_002E: beq IL_00C2
    IL_0033: ldarg.0
    IL_0034: ldc.i4 541065280
    IL_0039: beq IL_00E9
    IL_003E: ldarg.0
    IL_003F: ldc.i4 1107296288
    IL_0044: beq IL_00F6
    IL_0049: br IL_0110
    IL_004E: ldarg.0
    IL_004F: ldc.i4 -2147352568
    IL_0054: bgt.un.s IL_006E
    IL_0056: ldarg.0
    IL_0057: ldc.i4 1140850752
    IL_005C: beq IL_0103
    IL_0061: ldarg.0
    IL_0062: ldc.i4 -2147352568
    IL_0067: beq.s IL_009B
    IL_0069: br IL_0110
    IL_006E: ldarg.0
    IL_006F: ldc.i4 -2146959344
    IL_0074: beq.s IL_00B5
    IL_0076: ldarg.0
    IL_0077: ldc.i4 -2145386464
    IL_007C: beq.s IL_00CF
    IL_007E: ldarg.0
    IL_007F: ldc.i4 -2139094976
    IL_0084: beq.s IL_00DC
    IL_0086: br IL_0110
    IL_008B: ldtoken System.Byte
    IL_0090: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0095: stloc.0
    IL_0096: br IL_0123
    IL_009B: ldtoken System.SByte
    IL_00A0: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A5: stloc.0
    IL_00A6: br.s IL_0123
    IL_00A8: ldtoken System.UInt16
    IL_00AD: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B2: stloc.0
    IL_00B3: br.s IL_0123
    IL_00B5: ldtoken System.Int16
    IL_00BA: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00BF: stloc.0
    IL_00C0: br.s IL_0123
    IL_00C2: ldtoken System.UInt32
    IL_00C7: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CC: stloc.0
    IL_00CD: br.s IL_0123
    IL_00CF: ldtoken System.Int32
    IL_00D4: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D9: stloc.0
    IL_00DA: br.s IL_0123
    IL_00DC: ldtoken System.Int64
    IL_00E1: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00E6: stloc.0
    IL_00E7: br.s IL_0123
    IL_00E9: ldtoken System.UInt64
    IL_00EE: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00F3: stloc.0
    IL_00F4: br.s IL_0123
    IL_00F6: ldtoken System.Single
    IL_00FB: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0100: stloc.0
    IL_0101: br.s IL_0123
    IL_0103: ldtoken System.Double
    IL_0108: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_010D: stloc.0
    IL_010E: br.s IL_0123
    IL_0110: ldarga.s k
    IL_0112: constrained. Z0.NumericKind
    IL_0118: callvirt System.String System.Object::ToString()
    IL_011D: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0122: throw
    IL_0123: ldloc.0
    IL_0124: ret
}
------------------------------------------------------------------------------------------------------------------------
