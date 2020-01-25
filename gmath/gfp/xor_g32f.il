// Id := 100663806, Name := T Z0.gfp::xor<T>(T,T)
// float xor<float>(float a, float b)
// AggressiveInlining
float xor<float>(float a, float b)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Single
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_003E
    IL_001B: ldarga.s a
    IL_001D: call System.Single& Z0.AsIn::float32<T>(T&)
    IL_0022: ldind.r4
    IL_0023: ldarga.s b
    IL_0025: call System.Single& Z0.AsIn::float32<T>(T&)
    IL_002A: ldind.r4
    IL_002B: call System.Single Z0.fmath::xor(System.Single,System.Single)
    IL_0030: stloc.0
    IL_0031: ldloca.s V_0
    IL_0033: call T& Z0.AsIn::generic<T>(System.Single&)
    IL_0038: ldobj T
    IL_003D: ret
    IL_003E: ldtoken T
    IL_0043: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0048: ldtoken System.Double
    IL_004D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0052: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0057: brfalse.s IL_007C
    IL_0059: ldarga.s a
    IL_005B: call System.Double& Z0.AsIn::float64<T>(T&)
    IL_0060: ldind.r8
    IL_0061: ldarga.s b
    IL_0063: call System.Double& Z0.AsIn::float64<T>(T&)
    IL_0068: ldind.r8
    IL_0069: call System.Double Z0.fmath::xor(System.Double,System.Double)
    IL_006E: stloc.1
    IL_006F: ldloca.s V_1
    IL_0071: call T& Z0.AsIn::generic<T>(System.Double&)
    IL_0076: ldobj T
    IL_007B: ret
    IL_007C: ldstr "xor"
    IL_0081: ldstr "J:\\dev\\projects\\z0\\gmath\\src\\core\\fractional\\bitlogic\\xor.fp.cs"
    IL_0086: ldc.i4.s 25
    IL_0088: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_008D: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_0092: throw
}
