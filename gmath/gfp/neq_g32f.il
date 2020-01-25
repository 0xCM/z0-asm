// Id := 100663809, Name := Z0.bit Z0.gfp::neq<T>(T,T)
// bit neq<float>(float a, float b)
// AggressiveInlining
bit neq<float>(float a, float b)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Single
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_002D
    IL_001B: ldarg.0
    IL_001C: call System.Single Z0.As::float32<T>(T)
    IL_0021: ldarg.1
    IL_0022: call System.Single Z0.As::float32<T>(T)
    IL_0027: call Z0.bit Z0.fmath::neq(System.Single,System.Single)
    IL_002C: ret
    IL_002D: ldtoken T
    IL_0032: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0037: ldtoken System.Double
    IL_003C: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0041: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0046: brfalse.s IL_005A
    IL_0048: ldarg.0
    IL_0049: call System.Double Z0.As::float64<T>(T)
    IL_004E: ldarg.1
    IL_004F: call System.Double Z0.As::float64<T>(T)
    IL_0054: call Z0.bit Z0.fmath::neq(System.Double,System.Double)
    IL_0059: ret
    IL_005A: ldstr "neq"
    IL_005F: ldstr "J:\\dev\\projects\\z0\\gmath\\src\\core\\fractional\\comparison\\eq.fp.cs"
    IL_0064: ldc.i4.s 38
    IL_0066: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_006B: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_0070: throw
}
