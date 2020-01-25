// Id := 100666422, Name := T Z0.Converter::convert<T>(System.UInt64)
// double convert<double>(ulong src)
// AggressiveInlining
double convert<double>(ulong src)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.SByte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brtrue.s IL_006C
    IL_001B: ldtoken T
    IL_0020: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0025: ldtoken System.Int16
    IL_002A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_002F: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0034: brtrue.s IL_006C
    IL_0036: ldtoken T
    IL_003B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0040: ldtoken System.Int32
    IL_0045: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_004A: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_004F: brtrue.s IL_006C
    IL_0051: ldtoken T
    IL_0056: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_005B: ldtoken System.Int64
    IL_0060: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0065: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_006A: brfalse.s IL_0073
    IL_006C: ldarg.0
    IL_006D: call T Z0.Converter::converti<T>(System.UInt64)
    IL_0072: ret
    IL_0073: ldtoken T
    IL_0078: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007D: ldtoken System.Byte
    IL_0082: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0087: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_008C: brtrue.s IL_00DF
    IL_008E: ldtoken T
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: ldtoken System.UInt16
    IL_009D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A2: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A7: brtrue.s IL_00DF
    IL_00A9: ldtoken T
    IL_00AE: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B3: ldtoken System.UInt32
    IL_00B8: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00BD: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00C2: brtrue.s IL_00DF
    IL_00C4: ldtoken T
    IL_00C9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CE: ldtoken System.UInt64
    IL_00D3: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D8: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DD: brfalse.s IL_00E6
    IL_00DF: ldarg.0
    IL_00E0: call T Z0.Converter::convertu<T>(System.UInt64)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convertx<T>(System.UInt64)
    IL_00EC: ret
}
