// Id := 100663798, Name := T Z0.gfp::negate<T>(T)
// double negate<double>(double lhs)
// AggressiveInlining
double negate<double>(double lhs)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Single
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_002C
    IL_001B: ldarg.0
    IL_001C: call System.Single Z0.As::float32<T>(T)
    IL_0021: call System.Single Z0.fmath::negate(System.Single)
    IL_0026: call T Z0.As::generic<T>(System.Single)
    IL_002B: ret
    IL_002C: ldtoken T
    IL_0031: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0036: ldtoken System.Double
    IL_003B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0040: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0045: brfalse.s IL_0058
    IL_0047: ldarg.0
    IL_0048: call System.Double Z0.As::float64<T>(T)
    IL_004D: call System.Double Z0.fmath::negate(System.Double)
    IL_0052: call T Z0.As::generic<T>(System.Double)
    IL_0057: ret
    IL_0058: ldstr "negate"
    IL_005D: ldstr "J:\\dev\\projects\\z0\\gmath\\src\\core\\fractional\\arithmetic\\negate.fp.cs"
    IL_0062: ldc.i4.s 24
    IL_0064: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_0069: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_006E: throw
}
