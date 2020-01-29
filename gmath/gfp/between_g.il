// Z0.bit Z0.gfp::between<T>(T,T,T)
// bit between<float>(float x, float a, float b)
// AggressiveInlining
bit between<float>(float x, float a, float b)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Single
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_0033
    IL_001B: ldarg.0
    IL_001C: call System.Single Z0.As::float32<T>(T)
    IL_0021: ldarg.1
    IL_0022: call System.Single Z0.As::float32<T>(T)
    IL_0027: ldarg.2
    IL_0028: call System.Single Z0.As::float32<T>(T)
    IL_002D: call Z0.bit Z0.fmath::between(System.Single,System.Single,System.Single)
    IL_0032: ret
    IL_0033: ldtoken T
    IL_0038: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_003D: ldtoken System.Double
    IL_0042: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0047: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_004C: brfalse.s IL_0066
    IL_004E: ldarg.0
    IL_004F: call System.Double Z0.As::float64<T>(T)
    IL_0054: ldarg.1
    IL_0055: call System.Double Z0.As::float64<T>(T)
    IL_005A: ldarg.2
    IL_005B: call System.Double Z0.As::float64<T>(T)
    IL_0060: call Z0.bit Z0.fmath::between(System.Double,System.Double,System.Double)
    IL_0065: ret
    IL_0066: ldstr "between"
    IL_006B: ldstr "J:\\dev\\projects\\z0\\gmath\\src\\core\\fractional\\comparison\\between.fp.cs"
    IL_0070: ldc.i4.s 24
    IL_0072: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_0077: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_007C: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.gfp::between<T>(T,T,T)
// bit between<double>(double x, double a, double b)
// AggressiveInlining
bit between<double>(double x, double a, double b)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Single
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_0033
    IL_001B: ldarg.0
    IL_001C: call System.Single Z0.As::float32<T>(T)
    IL_0021: ldarg.1
    IL_0022: call System.Single Z0.As::float32<T>(T)
    IL_0027: ldarg.2
    IL_0028: call System.Single Z0.As::float32<T>(T)
    IL_002D: call Z0.bit Z0.fmath::between(System.Single,System.Single,System.Single)
    IL_0032: ret
    IL_0033: ldtoken T
    IL_0038: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_003D: ldtoken System.Double
    IL_0042: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0047: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_004C: brfalse.s IL_0066
    IL_004E: ldarg.0
    IL_004F: call System.Double Z0.As::float64<T>(T)
    IL_0054: ldarg.1
    IL_0055: call System.Double Z0.As::float64<T>(T)
    IL_005A: ldarg.2
    IL_005B: call System.Double Z0.As::float64<T>(T)
    IL_0060: call Z0.bit Z0.fmath::between(System.Double,System.Double,System.Double)
    IL_0065: ret
    IL_0066: ldstr "between"
    IL_006B: ldstr "J:\\dev\\projects\\z0\\gmath\\src\\core\\fractional\\comparison\\between.fp.cs"
    IL_0070: ldc.i4.s 24
    IL_0072: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_0077: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_007C: throw
}
------------------------------------------------------------------------------------------------------------------------
