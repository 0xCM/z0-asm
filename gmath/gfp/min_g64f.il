// Id := 100663815, Name := T Z0.gfp::min<T>(T,T)
// double min<double>(double a, double b)
// AggressiveInlining
double min<double>(double a, double b)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Single
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_0032
    IL_001B: ldarg.0
    IL_001C: call System.Single Z0.As::float32<T>(T)
    IL_0021: ldarg.1
    IL_0022: call System.Single Z0.As::float32<T>(T)
    IL_0027: call System.Single Z0.fmath::min(System.Single,System.Single)
    IL_002C: call T Z0.As::generic<T>(System.Single)
    IL_0031: ret
    IL_0032: ldtoken T
    IL_0037: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_003C: ldtoken System.Double
    IL_0041: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0046: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_004B: brfalse.s IL_0064
    IL_004D: ldarg.0
    IL_004E: call System.Double Z0.As::float64<T>(T)
    IL_0053: ldarg.1
    IL_0054: call System.Double Z0.As::float64<T>(T)
    IL_0059: call System.Double Z0.fmath::min(System.Double,System.Double)
    IL_005E: call T Z0.As::generic<T>(System.Double)
    IL_0063: ret
    IL_0064: ldstr "min"
    IL_0069: ldstr "J:\\dev\\projects\\z0\\gmath\\src\\core\\fractional\\comparison\\min.fp.cs"
    IL_006E: ldc.i4.s 24
    IL_0070: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_0075: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_007A: throw
}
