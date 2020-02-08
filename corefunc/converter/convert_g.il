// T Z0.Converter::convert<T>(System.Int16)
// byte convert<byte>(short src)
// AggressiveInlining
byte convert<byte>(short src)
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
    IL_006D: call T Z0.Converter::convert_i<T>(System.Int16)
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
    IL_00E0: call T Z0.Converter::convert_u<T>(System.Int16)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convert_x<T>(System.Int16)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Int16)
// sbyte convert<sbyte>(short src)
// AggressiveInlining
sbyte convert<sbyte>(short src)
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
    IL_006D: call T Z0.Converter::convert_i<T>(System.Int16)
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
    IL_00E0: call T Z0.Converter::convert_u<T>(System.Int16)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convert_x<T>(System.Int16)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Int16)
// ushort convert<ushort>(short src)
// AggressiveInlining
ushort convert<ushort>(short src)
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
    IL_006D: call T Z0.Converter::convert_i<T>(System.Int16)
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
    IL_00E0: call T Z0.Converter::convert_u<T>(System.Int16)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convert_x<T>(System.Int16)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Int16)
// short convert<short>(short src)
// AggressiveInlining
short convert<short>(short src)
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
    IL_006D: call T Z0.Converter::convert_i<T>(System.Int16)
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
    IL_00E0: call T Z0.Converter::convert_u<T>(System.Int16)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convert_x<T>(System.Int16)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Int16)
// uint convert<uint>(short src)
// AggressiveInlining
uint convert<uint>(short src)
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
    IL_006D: call T Z0.Converter::convert_i<T>(System.Int16)
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
    IL_00E0: call T Z0.Converter::convert_u<T>(System.Int16)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convert_x<T>(System.Int16)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Int16)
// int convert<int>(short src)
// AggressiveInlining
int convert<int>(short src)
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
    IL_006D: call T Z0.Converter::convert_i<T>(System.Int16)
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
    IL_00E0: call T Z0.Converter::convert_u<T>(System.Int16)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convert_x<T>(System.Int16)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Int16)
// ulong convert<ulong>(short src)
// AggressiveInlining
ulong convert<ulong>(short src)
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
    IL_006D: call T Z0.Converter::convert_i<T>(System.Int16)
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
    IL_00E0: call T Z0.Converter::convert_u<T>(System.Int16)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convert_x<T>(System.Int16)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Int16)
// long convert<long>(short src)
// AggressiveInlining
long convert<long>(short src)
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
    IL_006D: call T Z0.Converter::convert_i<T>(System.Int16)
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
    IL_00E0: call T Z0.Converter::convert_u<T>(System.Int16)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convert_x<T>(System.Int16)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Int16)
// float convert<float>(short src)
// AggressiveInlining
float convert<float>(short src)
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
    IL_006D: call T Z0.Converter::convert_i<T>(System.Int16)
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
    IL_00E0: call T Z0.Converter::convert_u<T>(System.Int16)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convert_x<T>(System.Int16)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Int16)
// double convert<double>(short src)
// AggressiveInlining
double convert<double>(short src)
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
    IL_006D: call T Z0.Converter::convert_i<T>(System.Int16)
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
    IL_00E0: call T Z0.Converter::convert_u<T>(System.Int16)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convert_x<T>(System.Int16)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.UInt16)
// byte convert<byte>(ushort src)
// AggressiveInlining
byte convert<byte>(ushort src)
{
    IL_0000: ldarg.0
    IL_0001: call T Z0.Converter::convert_u<T>(System.UInt16)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.UInt16)
// sbyte convert<sbyte>(ushort src)
// AggressiveInlining
sbyte convert<sbyte>(ushort src)
{
    IL_0000: ldarg.0
    IL_0001: call T Z0.Converter::convert_u<T>(System.UInt16)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.UInt16)
// ushort convert<ushort>(ushort src)
// AggressiveInlining
ushort convert<ushort>(ushort src)
{
    IL_0000: ldarg.0
    IL_0001: call T Z0.Converter::convert_u<T>(System.UInt16)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.UInt16)
// short convert<short>(ushort src)
// AggressiveInlining
short convert<short>(ushort src)
{
    IL_0000: ldarg.0
    IL_0001: call T Z0.Converter::convert_u<T>(System.UInt16)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.UInt16)
// uint convert<uint>(ushort src)
// AggressiveInlining
uint convert<uint>(ushort src)
{
    IL_0000: ldarg.0
    IL_0001: call T Z0.Converter::convert_u<T>(System.UInt16)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.UInt16)
// int convert<int>(ushort src)
// AggressiveInlining
int convert<int>(ushort src)
{
    IL_0000: ldarg.0
    IL_0001: call T Z0.Converter::convert_u<T>(System.UInt16)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.UInt16)
// ulong convert<ulong>(ushort src)
// AggressiveInlining
ulong convert<ulong>(ushort src)
{
    IL_0000: ldarg.0
    IL_0001: call T Z0.Converter::convert_u<T>(System.UInt16)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.UInt16)
// long convert<long>(ushort src)
// AggressiveInlining
long convert<long>(ushort src)
{
    IL_0000: ldarg.0
    IL_0001: call T Z0.Converter::convert_u<T>(System.UInt16)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.UInt16)
// float convert<float>(ushort src)
// AggressiveInlining
float convert<float>(ushort src)
{
    IL_0000: ldarg.0
    IL_0001: call T Z0.Converter::convert_u<T>(System.UInt16)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.UInt16)
// double convert<double>(ushort src)
// AggressiveInlining
double convert<double>(ushort src)
{
    IL_0000: ldarg.0
    IL_0001: call T Z0.Converter::convert_u<T>(System.UInt16)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Single)
// byte convert<byte>(float src)
// AggressiveInlining
byte convert<byte>(float src)
{
    IL_0000: ldarg.0
    IL_0001: call T Z0.Converter::convert_u<T>(System.Single)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Single)
// sbyte convert<sbyte>(float src)
// AggressiveInlining
sbyte convert<sbyte>(float src)
{
    IL_0000: ldarg.0
    IL_0001: call T Z0.Converter::convert_u<T>(System.Single)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Single)
// ushort convert<ushort>(float src)
// AggressiveInlining
ushort convert<ushort>(float src)
{
    IL_0000: ldarg.0
    IL_0001: call T Z0.Converter::convert_u<T>(System.Single)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Single)
// short convert<short>(float src)
// AggressiveInlining
short convert<short>(float src)
{
    IL_0000: ldarg.0
    IL_0001: call T Z0.Converter::convert_u<T>(System.Single)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Single)
// uint convert<uint>(float src)
// AggressiveInlining
uint convert<uint>(float src)
{
    IL_0000: ldarg.0
    IL_0001: call T Z0.Converter::convert_u<T>(System.Single)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Single)
// int convert<int>(float src)
// AggressiveInlining
int convert<int>(float src)
{
    IL_0000: ldarg.0
    IL_0001: call T Z0.Converter::convert_u<T>(System.Single)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Single)
// ulong convert<ulong>(float src)
// AggressiveInlining
ulong convert<ulong>(float src)
{
    IL_0000: ldarg.0
    IL_0001: call T Z0.Converter::convert_u<T>(System.Single)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Single)
// long convert<long>(float src)
// AggressiveInlining
long convert<long>(float src)
{
    IL_0000: ldarg.0
    IL_0001: call T Z0.Converter::convert_u<T>(System.Single)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Single)
// float convert<float>(float src)
// AggressiveInlining
float convert<float>(float src)
{
    IL_0000: ldarg.0
    IL_0001: call T Z0.Converter::convert_u<T>(System.Single)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Single)
// double convert<double>(float src)
// AggressiveInlining
double convert<double>(float src)
{
    IL_0000: ldarg.0
    IL_0001: call T Z0.Converter::convert_u<T>(System.Single)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Int32)
// byte convert<byte>(int src)
// AggressiveInlining
byte convert<byte>(int src)
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
    IL_006D: call T Z0.Converter::convert_i<T>(System.Int32)
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
    IL_00E0: call T Z0.Converter::convert_u<T>(System.Int32)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convert_x<T>(System.Int32)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Int32)
// sbyte convert<sbyte>(int src)
// AggressiveInlining
sbyte convert<sbyte>(int src)
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
    IL_006D: call T Z0.Converter::convert_i<T>(System.Int32)
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
    IL_00E0: call T Z0.Converter::convert_u<T>(System.Int32)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convert_x<T>(System.Int32)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Int32)
// ushort convert<ushort>(int src)
// AggressiveInlining
ushort convert<ushort>(int src)
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
    IL_006D: call T Z0.Converter::convert_i<T>(System.Int32)
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
    IL_00E0: call T Z0.Converter::convert_u<T>(System.Int32)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convert_x<T>(System.Int32)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Int32)
// short convert<short>(int src)
// AggressiveInlining
short convert<short>(int src)
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
    IL_006D: call T Z0.Converter::convert_i<T>(System.Int32)
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
    IL_00E0: call T Z0.Converter::convert_u<T>(System.Int32)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convert_x<T>(System.Int32)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Int32)
// uint convert<uint>(int src)
// AggressiveInlining
uint convert<uint>(int src)
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
    IL_006D: call T Z0.Converter::convert_i<T>(System.Int32)
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
    IL_00E0: call T Z0.Converter::convert_u<T>(System.Int32)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convert_x<T>(System.Int32)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Int32)
// int convert<int>(int src)
// AggressiveInlining
int convert<int>(int src)
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
    IL_006D: call T Z0.Converter::convert_i<T>(System.Int32)
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
    IL_00E0: call T Z0.Converter::convert_u<T>(System.Int32)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convert_x<T>(System.Int32)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Int32)
// ulong convert<ulong>(int src)
// AggressiveInlining
ulong convert<ulong>(int src)
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
    IL_006D: call T Z0.Converter::convert_i<T>(System.Int32)
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
    IL_00E0: call T Z0.Converter::convert_u<T>(System.Int32)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convert_x<T>(System.Int32)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Int32)
// long convert<long>(int src)
// AggressiveInlining
long convert<long>(int src)
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
    IL_006D: call T Z0.Converter::convert_i<T>(System.Int32)
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
    IL_00E0: call T Z0.Converter::convert_u<T>(System.Int32)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convert_x<T>(System.Int32)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Int32)
// float convert<float>(int src)
// AggressiveInlining
float convert<float>(int src)
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
    IL_006D: call T Z0.Converter::convert_i<T>(System.Int32)
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
    IL_00E0: call T Z0.Converter::convert_u<T>(System.Int32)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convert_x<T>(System.Int32)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Int32)
// double convert<double>(int src)
// AggressiveInlining
double convert<double>(int src)
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
    IL_006D: call T Z0.Converter::convert_i<T>(System.Int32)
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
    IL_00E0: call T Z0.Converter::convert_u<T>(System.Int32)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convert_x<T>(System.Int32)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.UInt32)
// byte convert<byte>(uint src)
// AggressiveInlining
byte convert<byte>(uint src)
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
    IL_006D: call T Z0.Converter::converti<T>(System.UInt32)
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
    IL_00E0: call T Z0.Converter::convertu<T>(System.UInt32)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convertx<T>(System.UInt32)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.UInt32)
// sbyte convert<sbyte>(uint src)
// AggressiveInlining
sbyte convert<sbyte>(uint src)
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
    IL_006D: call T Z0.Converter::converti<T>(System.UInt32)
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
    IL_00E0: call T Z0.Converter::convertu<T>(System.UInt32)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convertx<T>(System.UInt32)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.UInt32)
// ushort convert<ushort>(uint src)
// AggressiveInlining
ushort convert<ushort>(uint src)
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
    IL_006D: call T Z0.Converter::converti<T>(System.UInt32)
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
    IL_00E0: call T Z0.Converter::convertu<T>(System.UInt32)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convertx<T>(System.UInt32)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.UInt32)
// short convert<short>(uint src)
// AggressiveInlining
short convert<short>(uint src)
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
    IL_006D: call T Z0.Converter::converti<T>(System.UInt32)
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
    IL_00E0: call T Z0.Converter::convertu<T>(System.UInt32)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convertx<T>(System.UInt32)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.UInt32)
// uint convert<uint>(uint src)
// AggressiveInlining
uint convert<uint>(uint src)
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
    IL_006D: call T Z0.Converter::converti<T>(System.UInt32)
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
    IL_00E0: call T Z0.Converter::convertu<T>(System.UInt32)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convertx<T>(System.UInt32)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.UInt32)
// int convert<int>(uint src)
// AggressiveInlining
int convert<int>(uint src)
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
    IL_006D: call T Z0.Converter::converti<T>(System.UInt32)
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
    IL_00E0: call T Z0.Converter::convertu<T>(System.UInt32)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convertx<T>(System.UInt32)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.UInt32)
// ulong convert<ulong>(uint src)
// AggressiveInlining
ulong convert<ulong>(uint src)
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
    IL_006D: call T Z0.Converter::converti<T>(System.UInt32)
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
    IL_00E0: call T Z0.Converter::convertu<T>(System.UInt32)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convertx<T>(System.UInt32)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.UInt32)
// long convert<long>(uint src)
// AggressiveInlining
long convert<long>(uint src)
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
    IL_006D: call T Z0.Converter::converti<T>(System.UInt32)
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
    IL_00E0: call T Z0.Converter::convertu<T>(System.UInt32)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convertx<T>(System.UInt32)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.UInt32)
// float convert<float>(uint src)
// AggressiveInlining
float convert<float>(uint src)
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
    IL_006D: call T Z0.Converter::converti<T>(System.UInt32)
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
    IL_00E0: call T Z0.Converter::convertu<T>(System.UInt32)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convertx<T>(System.UInt32)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.UInt32)
// double convert<double>(uint src)
// AggressiveInlining
double convert<double>(uint src)
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
    IL_006D: call T Z0.Converter::converti<T>(System.UInt32)
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
    IL_00E0: call T Z0.Converter::convertu<T>(System.UInt32)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convertx<T>(System.UInt32)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Double)
// byte convert<byte>(double src)
// AggressiveInlining
byte convert<byte>(double src)
{
    IL_0000: ldarg.0
    IL_0001: call T Z0.Converter::convert_u<T>(System.Double)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Double)
// sbyte convert<sbyte>(double src)
// AggressiveInlining
sbyte convert<sbyte>(double src)
{
    IL_0000: ldarg.0
    IL_0001: call T Z0.Converter::convert_u<T>(System.Double)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Double)
// ushort convert<ushort>(double src)
// AggressiveInlining
ushort convert<ushort>(double src)
{
    IL_0000: ldarg.0
    IL_0001: call T Z0.Converter::convert_u<T>(System.Double)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Double)
// short convert<short>(double src)
// AggressiveInlining
short convert<short>(double src)
{
    IL_0000: ldarg.0
    IL_0001: call T Z0.Converter::convert_u<T>(System.Double)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Double)
// uint convert<uint>(double src)
// AggressiveInlining
uint convert<uint>(double src)
{
    IL_0000: ldarg.0
    IL_0001: call T Z0.Converter::convert_u<T>(System.Double)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Double)
// int convert<int>(double src)
// AggressiveInlining
int convert<int>(double src)
{
    IL_0000: ldarg.0
    IL_0001: call T Z0.Converter::convert_u<T>(System.Double)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Double)
// ulong convert<ulong>(double src)
// AggressiveInlining
ulong convert<ulong>(double src)
{
    IL_0000: ldarg.0
    IL_0001: call T Z0.Converter::convert_u<T>(System.Double)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Double)
// long convert<long>(double src)
// AggressiveInlining
long convert<long>(double src)
{
    IL_0000: ldarg.0
    IL_0001: call T Z0.Converter::convert_u<T>(System.Double)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Double)
// float convert<float>(double src)
// AggressiveInlining
float convert<float>(double src)
{
    IL_0000: ldarg.0
    IL_0001: call T Z0.Converter::convert_u<T>(System.Double)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Double)
// double convert<double>(double src)
// AggressiveInlining
double convert<double>(double src)
{
    IL_0000: ldarg.0
    IL_0001: call T Z0.Converter::convert_u<T>(System.Double)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Int64)
// byte convert<byte>(long src)
// AggressiveInlining
byte convert<byte>(long src)
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
    IL_006D: call T Z0.Converter::converti<T>(System.Int64)
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
    IL_00E0: call T Z0.Converter::convertu<T>(System.Int64)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convertx<T>(System.Int64)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Int64)
// sbyte convert<sbyte>(long src)
// AggressiveInlining
sbyte convert<sbyte>(long src)
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
    IL_006D: call T Z0.Converter::converti<T>(System.Int64)
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
    IL_00E0: call T Z0.Converter::convertu<T>(System.Int64)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convertx<T>(System.Int64)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Int64)
// ushort convert<ushort>(long src)
// AggressiveInlining
ushort convert<ushort>(long src)
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
    IL_006D: call T Z0.Converter::converti<T>(System.Int64)
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
    IL_00E0: call T Z0.Converter::convertu<T>(System.Int64)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convertx<T>(System.Int64)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Int64)
// short convert<short>(long src)
// AggressiveInlining
short convert<short>(long src)
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
    IL_006D: call T Z0.Converter::converti<T>(System.Int64)
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
    IL_00E0: call T Z0.Converter::convertu<T>(System.Int64)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convertx<T>(System.Int64)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Int64)
// uint convert<uint>(long src)
// AggressiveInlining
uint convert<uint>(long src)
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
    IL_006D: call T Z0.Converter::converti<T>(System.Int64)
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
    IL_00E0: call T Z0.Converter::convertu<T>(System.Int64)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convertx<T>(System.Int64)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Int64)
// int convert<int>(long src)
// AggressiveInlining
int convert<int>(long src)
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
    IL_006D: call T Z0.Converter::converti<T>(System.Int64)
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
    IL_00E0: call T Z0.Converter::convertu<T>(System.Int64)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convertx<T>(System.Int64)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Int64)
// ulong convert<ulong>(long src)
// AggressiveInlining
ulong convert<ulong>(long src)
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
    IL_006D: call T Z0.Converter::converti<T>(System.Int64)
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
    IL_00E0: call T Z0.Converter::convertu<T>(System.Int64)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convertx<T>(System.Int64)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Int64)
// long convert<long>(long src)
// AggressiveInlining
long convert<long>(long src)
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
    IL_006D: call T Z0.Converter::converti<T>(System.Int64)
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
    IL_00E0: call T Z0.Converter::convertu<T>(System.Int64)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convertx<T>(System.Int64)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Int64)
// float convert<float>(long src)
// AggressiveInlining
float convert<float>(long src)
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
    IL_006D: call T Z0.Converter::converti<T>(System.Int64)
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
    IL_00E0: call T Z0.Converter::convertu<T>(System.Int64)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convertx<T>(System.Int64)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Int64)
// double convert<double>(long src)
// AggressiveInlining
double convert<double>(long src)
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
    IL_006D: call T Z0.Converter::converti<T>(System.Int64)
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
    IL_00E0: call T Z0.Converter::convertu<T>(System.Int64)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convertx<T>(System.Int64)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.UInt64)
// byte convert<byte>(ulong src)
// AggressiveInlining
byte convert<byte>(ulong src)
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
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.UInt64)
// sbyte convert<sbyte>(ulong src)
// AggressiveInlining
sbyte convert<sbyte>(ulong src)
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
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.UInt64)
// ushort convert<ushort>(ulong src)
// AggressiveInlining
ushort convert<ushort>(ulong src)
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
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.UInt64)
// short convert<short>(ulong src)
// AggressiveInlining
short convert<short>(ulong src)
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
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.UInt64)
// uint convert<uint>(ulong src)
// AggressiveInlining
uint convert<uint>(ulong src)
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
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.UInt64)
// int convert<int>(ulong src)
// AggressiveInlining
int convert<int>(ulong src)
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
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.UInt64)
// ulong convert<ulong>(ulong src)
// AggressiveInlining
ulong convert<ulong>(ulong src)
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
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.UInt64)
// long convert<long>(ulong src)
// AggressiveInlining
long convert<long>(ulong src)
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
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.UInt64)
// float convert<float>(ulong src)
// AggressiveInlining
float convert<float>(ulong src)
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
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.UInt64)
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
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.SByte)
// byte convert<byte>(sbyte src)
// AggressiveInlining
byte convert<byte>(sbyte src)
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
    IL_006D: call T Z0.Converter::convert_i<T>(System.SByte)
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
    IL_00E0: call T Z0.Converter::convert_u<T>(System.SByte)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convert_x<T>(System.SByte)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.SByte)
// sbyte convert<sbyte>(sbyte src)
// AggressiveInlining
sbyte convert<sbyte>(sbyte src)
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
    IL_006D: call T Z0.Converter::convert_i<T>(System.SByte)
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
    IL_00E0: call T Z0.Converter::convert_u<T>(System.SByte)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convert_x<T>(System.SByte)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.SByte)
// ushort convert<ushort>(sbyte src)
// AggressiveInlining
ushort convert<ushort>(sbyte src)
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
    IL_006D: call T Z0.Converter::convert_i<T>(System.SByte)
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
    IL_00E0: call T Z0.Converter::convert_u<T>(System.SByte)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convert_x<T>(System.SByte)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.SByte)
// short convert<short>(sbyte src)
// AggressiveInlining
short convert<short>(sbyte src)
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
    IL_006D: call T Z0.Converter::convert_i<T>(System.SByte)
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
    IL_00E0: call T Z0.Converter::convert_u<T>(System.SByte)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convert_x<T>(System.SByte)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.SByte)
// uint convert<uint>(sbyte src)
// AggressiveInlining
uint convert<uint>(sbyte src)
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
    IL_006D: call T Z0.Converter::convert_i<T>(System.SByte)
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
    IL_00E0: call T Z0.Converter::convert_u<T>(System.SByte)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convert_x<T>(System.SByte)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.SByte)
// int convert<int>(sbyte src)
// AggressiveInlining
int convert<int>(sbyte src)
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
    IL_006D: call T Z0.Converter::convert_i<T>(System.SByte)
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
    IL_00E0: call T Z0.Converter::convert_u<T>(System.SByte)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convert_x<T>(System.SByte)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.SByte)
// ulong convert<ulong>(sbyte src)
// AggressiveInlining
ulong convert<ulong>(sbyte src)
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
    IL_006D: call T Z0.Converter::convert_i<T>(System.SByte)
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
    IL_00E0: call T Z0.Converter::convert_u<T>(System.SByte)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convert_x<T>(System.SByte)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.SByte)
// long convert<long>(sbyte src)
// AggressiveInlining
long convert<long>(sbyte src)
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
    IL_006D: call T Z0.Converter::convert_i<T>(System.SByte)
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
    IL_00E0: call T Z0.Converter::convert_u<T>(System.SByte)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convert_x<T>(System.SByte)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.SByte)
// float convert<float>(sbyte src)
// AggressiveInlining
float convert<float>(sbyte src)
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
    IL_006D: call T Z0.Converter::convert_i<T>(System.SByte)
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
    IL_00E0: call T Z0.Converter::convert_u<T>(System.SByte)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convert_x<T>(System.SByte)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.SByte)
// double convert<double>(sbyte src)
// AggressiveInlining
double convert<double>(sbyte src)
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
    IL_006D: call T Z0.Converter::convert_i<T>(System.SByte)
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
    IL_00E0: call T Z0.Converter::convert_u<T>(System.SByte)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convert_x<T>(System.SByte)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Byte)
// byte convert<byte>(byte src)
// AggressiveInlining
byte convert<byte>(byte src)
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
    IL_006D: call T Z0.Converter::convert_i<T>(System.Byte)
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
    IL_00E0: call T Z0.Converter::convert_u<T>(System.Byte)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convert_x<T>(System.Byte)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Byte)
// sbyte convert<sbyte>(byte src)
// AggressiveInlining
sbyte convert<sbyte>(byte src)
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
    IL_006D: call T Z0.Converter::convert_i<T>(System.Byte)
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
    IL_00E0: call T Z0.Converter::convert_u<T>(System.Byte)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convert_x<T>(System.Byte)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Byte)
// ushort convert<ushort>(byte src)
// AggressiveInlining
ushort convert<ushort>(byte src)
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
    IL_006D: call T Z0.Converter::convert_i<T>(System.Byte)
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
    IL_00E0: call T Z0.Converter::convert_u<T>(System.Byte)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convert_x<T>(System.Byte)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Byte)
// short convert<short>(byte src)
// AggressiveInlining
short convert<short>(byte src)
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
    IL_006D: call T Z0.Converter::convert_i<T>(System.Byte)
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
    IL_00E0: call T Z0.Converter::convert_u<T>(System.Byte)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convert_x<T>(System.Byte)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Byte)
// uint convert<uint>(byte src)
// AggressiveInlining
uint convert<uint>(byte src)
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
    IL_006D: call T Z0.Converter::convert_i<T>(System.Byte)
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
    IL_00E0: call T Z0.Converter::convert_u<T>(System.Byte)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convert_x<T>(System.Byte)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Byte)
// int convert<int>(byte src)
// AggressiveInlining
int convert<int>(byte src)
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
    IL_006D: call T Z0.Converter::convert_i<T>(System.Byte)
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
    IL_00E0: call T Z0.Converter::convert_u<T>(System.Byte)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convert_x<T>(System.Byte)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Byte)
// ulong convert<ulong>(byte src)
// AggressiveInlining
ulong convert<ulong>(byte src)
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
    IL_006D: call T Z0.Converter::convert_i<T>(System.Byte)
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
    IL_00E0: call T Z0.Converter::convert_u<T>(System.Byte)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convert_x<T>(System.Byte)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Byte)
// long convert<long>(byte src)
// AggressiveInlining
long convert<long>(byte src)
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
    IL_006D: call T Z0.Converter::convert_i<T>(System.Byte)
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
    IL_00E0: call T Z0.Converter::convert_u<T>(System.Byte)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convert_x<T>(System.Byte)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Byte)
// float convert<float>(byte src)
// AggressiveInlining
float convert<float>(byte src)
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
    IL_006D: call T Z0.Converter::convert_i<T>(System.Byte)
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
    IL_00E0: call T Z0.Converter::convert_u<T>(System.Byte)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convert_x<T>(System.Byte)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Converter::convert<T>(System.Byte)
// double convert<double>(byte src)
// AggressiveInlining
double convert<double>(byte src)
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
    IL_006D: call T Z0.Converter::convert_i<T>(System.Byte)
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
    IL_00E0: call T Z0.Converter::convert_u<T>(System.Byte)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call T Z0.Converter::convert_x<T>(System.Byte)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
