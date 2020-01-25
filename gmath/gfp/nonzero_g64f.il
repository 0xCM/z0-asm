// Id := 100663799, Name := Z0.bit Z0.gfp::nonzero<T>(T)
// bit nonzero<double>(double a)
// AggressiveInlining
bit nonzero<double>(double a)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Single
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_0027
    IL_001B: ldarg.0
    IL_001C: call System.Single Z0.As::float32<T>(T)
    IL_0021: call Z0.bit Z0.math::nonzero(System.Single)
    IL_0026: ret
    IL_0027: ldtoken T
    IL_002C: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0031: ldtoken System.Double
    IL_0036: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_003B: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0040: brfalse.s IL_004E
    IL_0042: ldarg.0
    IL_0043: call System.Double Z0.As::float64<T>(T)
    IL_0048: call Z0.bit Z0.math::nonzero(System.Double)
    IL_004D: ret
    IL_004E: ldstr "nonzero"
    IL_0053: ldstr "J:\\dev\\projects\\z0\\gmath\\src\\core\\fractional\\arithmetic\\nonzero.fp.cs"
    IL_0058: ldc.i4.s 24
    IL_005A: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_005F: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_0064: throw
}
