// T Z0.gmath::abs<T>(T)
// sbyte abs<sbyte>(sbyte src)
// AggressiveInlining
sbyte abs<sbyte>(sbyte src)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.SByte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_002C
    IL_001B: ldarg.0
    IL_001C: call System.SByte Z0.As::int8<T>(T)
    IL_0021: call System.SByte Z0.math::abs(System.SByte)
    IL_0026: call T Z0.As::generic<T>(System.SByte)
    IL_002B: ret
    IL_002C: ldtoken T
    IL_0031: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0036: ldtoken System.Int16
    IL_003B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0040: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0045: brfalse.s IL_0058
    IL_0047: ldarg.0
    IL_0048: call System.Int16 Z0.As::int16<T>(T)
    IL_004D: call System.Int16 Z0.math::abs(System.Int16)
    IL_0052: call T Z0.As::generic<T>(System.Int16)
    IL_0057: ret
    IL_0058: ldtoken T
    IL_005D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0062: ldtoken System.Int32
    IL_0067: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_006C: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0071: brfalse.s IL_0084
    IL_0073: ldarg.0
    IL_0074: call System.Int32 Z0.As::int32<T>(T)
    IL_0079: call System.Int32 Z0.math::abs(System.Int32)
    IL_007E: call T Z0.As::generic<T>(System.Int32)
    IL_0083: ret
    IL_0084: ldtoken T
    IL_0089: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008E: ldtoken System.Int64
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_009D: brfalse.s IL_00B0
    IL_009F: ldarg.0
    IL_00A0: call System.Int64 Z0.As::int64<T>(T)
    IL_00A5: call System.Int64 Z0.math::abs(System.Int64)
    IL_00AA: call T Z0.As::generic<T>(System.Int64)
    IL_00AF: ret
    IL_00B0: call System.Boolean Z0.NumericType::unsigned<T>()
    IL_00B5: brfalse.s IL_00B9
    IL_00B7: ldarg.0
    IL_00B8: ret
    IL_00B9: ldarg.0
    IL_00BA: call T Z0.gfp::abs<T>(T)
    IL_00BF: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gmath::abs<T>(T)
// short abs<short>(short src)
// AggressiveInlining
short abs<short>(short src)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.SByte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_002C
    IL_001B: ldarg.0
    IL_001C: call System.SByte Z0.As::int8<T>(T)
    IL_0021: call System.SByte Z0.math::abs(System.SByte)
    IL_0026: call T Z0.As::generic<T>(System.SByte)
    IL_002B: ret
    IL_002C: ldtoken T
    IL_0031: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0036: ldtoken System.Int16
    IL_003B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0040: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0045: brfalse.s IL_0058
    IL_0047: ldarg.0
    IL_0048: call System.Int16 Z0.As::int16<T>(T)
    IL_004D: call System.Int16 Z0.math::abs(System.Int16)
    IL_0052: call T Z0.As::generic<T>(System.Int16)
    IL_0057: ret
    IL_0058: ldtoken T
    IL_005D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0062: ldtoken System.Int32
    IL_0067: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_006C: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0071: brfalse.s IL_0084
    IL_0073: ldarg.0
    IL_0074: call System.Int32 Z0.As::int32<T>(T)
    IL_0079: call System.Int32 Z0.math::abs(System.Int32)
    IL_007E: call T Z0.As::generic<T>(System.Int32)
    IL_0083: ret
    IL_0084: ldtoken T
    IL_0089: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008E: ldtoken System.Int64
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_009D: brfalse.s IL_00B0
    IL_009F: ldarg.0
    IL_00A0: call System.Int64 Z0.As::int64<T>(T)
    IL_00A5: call System.Int64 Z0.math::abs(System.Int64)
    IL_00AA: call T Z0.As::generic<T>(System.Int64)
    IL_00AF: ret
    IL_00B0: call System.Boolean Z0.NumericType::unsigned<T>()
    IL_00B5: brfalse.s IL_00B9
    IL_00B7: ldarg.0
    IL_00B8: ret
    IL_00B9: ldarg.0
    IL_00BA: call T Z0.gfp::abs<T>(T)
    IL_00BF: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gmath::abs<T>(T)
// int abs<int>(int src)
// AggressiveInlining
int abs<int>(int src)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.SByte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_002C
    IL_001B: ldarg.0
    IL_001C: call System.SByte Z0.As::int8<T>(T)
    IL_0021: call System.SByte Z0.math::abs(System.SByte)
    IL_0026: call T Z0.As::generic<T>(System.SByte)
    IL_002B: ret
    IL_002C: ldtoken T
    IL_0031: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0036: ldtoken System.Int16
    IL_003B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0040: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0045: brfalse.s IL_0058
    IL_0047: ldarg.0
    IL_0048: call System.Int16 Z0.As::int16<T>(T)
    IL_004D: call System.Int16 Z0.math::abs(System.Int16)
    IL_0052: call T Z0.As::generic<T>(System.Int16)
    IL_0057: ret
    IL_0058: ldtoken T
    IL_005D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0062: ldtoken System.Int32
    IL_0067: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_006C: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0071: brfalse.s IL_0084
    IL_0073: ldarg.0
    IL_0074: call System.Int32 Z0.As::int32<T>(T)
    IL_0079: call System.Int32 Z0.math::abs(System.Int32)
    IL_007E: call T Z0.As::generic<T>(System.Int32)
    IL_0083: ret
    IL_0084: ldtoken T
    IL_0089: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008E: ldtoken System.Int64
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_009D: brfalse.s IL_00B0
    IL_009F: ldarg.0
    IL_00A0: call System.Int64 Z0.As::int64<T>(T)
    IL_00A5: call System.Int64 Z0.math::abs(System.Int64)
    IL_00AA: call T Z0.As::generic<T>(System.Int64)
    IL_00AF: ret
    IL_00B0: call System.Boolean Z0.NumericType::unsigned<T>()
    IL_00B5: brfalse.s IL_00B9
    IL_00B7: ldarg.0
    IL_00B8: ret
    IL_00B9: ldarg.0
    IL_00BA: call T Z0.gfp::abs<T>(T)
    IL_00BF: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gmath::abs<T>(T)
// long abs<long>(long src)
// AggressiveInlining
long abs<long>(long src)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.SByte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_002C
    IL_001B: ldarg.0
    IL_001C: call System.SByte Z0.As::int8<T>(T)
    IL_0021: call System.SByte Z0.math::abs(System.SByte)
    IL_0026: call T Z0.As::generic<T>(System.SByte)
    IL_002B: ret
    IL_002C: ldtoken T
    IL_0031: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0036: ldtoken System.Int16
    IL_003B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0040: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0045: brfalse.s IL_0058
    IL_0047: ldarg.0
    IL_0048: call System.Int16 Z0.As::int16<T>(T)
    IL_004D: call System.Int16 Z0.math::abs(System.Int16)
    IL_0052: call T Z0.As::generic<T>(System.Int16)
    IL_0057: ret
    IL_0058: ldtoken T
    IL_005D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0062: ldtoken System.Int32
    IL_0067: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_006C: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0071: brfalse.s IL_0084
    IL_0073: ldarg.0
    IL_0074: call System.Int32 Z0.As::int32<T>(T)
    IL_0079: call System.Int32 Z0.math::abs(System.Int32)
    IL_007E: call T Z0.As::generic<T>(System.Int32)
    IL_0083: ret
    IL_0084: ldtoken T
    IL_0089: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008E: ldtoken System.Int64
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_009D: brfalse.s IL_00B0
    IL_009F: ldarg.0
    IL_00A0: call System.Int64 Z0.As::int64<T>(T)
    IL_00A5: call System.Int64 Z0.math::abs(System.Int64)
    IL_00AA: call T Z0.As::generic<T>(System.Int64)
    IL_00AF: ret
    IL_00B0: call System.Boolean Z0.NumericType::unsigned<T>()
    IL_00B5: brfalse.s IL_00B9
    IL_00B7: ldarg.0
    IL_00B8: ret
    IL_00B9: ldarg.0
    IL_00BA: call T Z0.gfp::abs<T>(T)
    IL_00BF: ret
}
------------------------------------------------------------------------------------------------------------------------
