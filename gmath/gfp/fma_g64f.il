// Id := 100663793, Name := T Z0.gfp::fma<T>(T,T,T)
// double fma<double>(double x, double y, double z)
// AggressiveInlining
double fma<double>(double x, double y, double z)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Single
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_0038
    IL_001B: ldarg.0
    IL_001C: call System.Single Z0.As::float32<T>(T)
    IL_0021: ldarg.1
    IL_0022: call System.Single Z0.As::float32<T>(T)
    IL_0027: ldarg.2
    IL_0028: call System.Single Z0.As::float32<T>(T)
    IL_002D: call System.Single Z0.fmath::fma(System.Single,System.Single,System.Single)
    IL_0032: call T Z0.As::generic<T>(System.Single)
    IL_0037: ret
    IL_0038: ldtoken T
    IL_003D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0042: ldtoken System.Double
    IL_0047: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_004C: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0051: brfalse.s IL_0070
    IL_0053: ldarg.0
    IL_0054: call System.Double Z0.As::float64<T>(T)
    IL_0059: ldarg.1
    IL_005A: call System.Double Z0.As::float64<T>(T)
    IL_005F: ldarg.2
    IL_0060: call System.Double Z0.As::float64<T>(T)
    IL_0065: call System.Double Z0.fmath::fma(System.Double,System.Double,System.Double)
    IL_006A: call T Z0.As::generic<T>(System.Double)
    IL_006F: ret
    IL_0070: ldstr "fma"
    IL_0075: ldstr "J:\\dev\\projects\\z0\\gmath\\src\\core\\fractional\\arithmetic\\fma.fp.cs"
    IL_007A: ldc.i4.s 32
    IL_007C: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_0081: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_0086: throw
}
