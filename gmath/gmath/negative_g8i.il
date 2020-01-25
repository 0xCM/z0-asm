// Id := 100664115, Name := Z0.bit Z0.gmath::negative<T>(T)
// bit negative<sbyte>(sbyte src)
// AggressiveInlining
bit negative<sbyte>(sbyte src)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.SByte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_0027
    IL_001B: ldarg.0
    IL_001C: call System.SByte Z0.As::int8<T>(T)
    IL_0021: call Z0.bit Z0.math::negative(System.SByte)
    IL_0026: ret
    IL_0027: ldtoken T
    IL_002C: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0031: ldtoken System.Int16
    IL_0036: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_003B: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0040: brfalse.s IL_004E
    IL_0042: ldarg.0
    IL_0043: call System.Int16 Z0.As::int16<T>(T)
    IL_0048: call Z0.bit Z0.math::negative(System.Int16)
    IL_004D: ret
    IL_004E: ldtoken T
    IL_0053: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0058: ldtoken System.Int32
    IL_005D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0062: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0067: brfalse.s IL_0075
    IL_0069: ldarg.0
    IL_006A: call System.Int32 Z0.As::int32<T>(T)
    IL_006F: call Z0.bit Z0.math::negative(System.Int32)
    IL_0074: ret
    IL_0075: ldtoken T
    IL_007A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007F: ldtoken System.Int64
    IL_0084: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0089: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_008E: brfalse.s IL_009C
    IL_0090: ldarg.0
    IL_0091: call System.Int64 Z0.As::int64<T>(T)
    IL_0096: call Z0.bit Z0.math::negative(System.Int64)
    IL_009B: ret
    IL_009C: ldtoken T
    IL_00A1: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A6: ldtoken System.Single
    IL_00AB: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B0: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00B5: brfalse.s IL_00C3
    IL_00B7: ldarg.0
    IL_00B8: call System.Single Z0.As::float32<T>(T)
    IL_00BD: call Z0.bit Z0.math::negative(System.Single)
    IL_00C2: ret
    IL_00C3: ldtoken T
    IL_00C8: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CD: ldtoken System.Double
    IL_00D2: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D7: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DC: brfalse.s IL_00EA
    IL_00DE: ldarg.0
    IL_00DF: call System.Double Z0.As::float64<T>(T)
    IL_00E4: call Z0.bit Z0.math::negative(System.Double)
    IL_00E9: ret
    IL_00EA: ldc.i4.0
    IL_00EB: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_00F0: ret
}
