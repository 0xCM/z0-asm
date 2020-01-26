// Id := 100663904, Name := System.Single Z0.fmath::log(System.Single,System.Nullable`1<System.Single>)
// float log(float src, float b)
// AggressiveInlining
float log(float src, float b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: stloc.0
    IL_0003: ldloca.s V_0
    IL_0005: call System.Boolean System.Nullable`1<System.Single>::get_HasValue()
    IL_000A: brtrue.s IL_0013
    IL_000C: ldc.r4 10
    IL_0011: br.s IL_001A
    IL_0013: ldloca.s V_0
    IL_0015: call System.Single System.Nullable`1<System.Single>::GetValueOrDefault()
    IL_001A: call System.Single System.MathF::Log(System.Single,System.Single)
    IL_001F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663905, Name := System.Double Z0.fmath::log(System.Double,System.Nullable`1<System.Double>)
// double log(double src, double b)
// AggressiveInlining
double log(double src, double b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: stloc.0
    IL_0003: ldloca.s V_0
    IL_0005: call System.Boolean System.Nullable`1<System.Double>::get_HasValue()
    IL_000A: brtrue.s IL_0017
    IL_000C: ldc.r8 10
    IL_0015: br.s IL_001E
    IL_0017: ldloca.s V_0
    IL_0019: call System.Double System.Nullable`1<System.Double>::GetValueOrDefault()
    IL_001E: call System.Double System.Math::Log(System.Double,System.Double)
    IL_0023: ret
}
------------------------------------------------------------------------------------------------------------------------
