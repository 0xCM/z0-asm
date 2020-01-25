// Id := 100663914, Name := System.Double Z0.fmath::log(System.Double,System.Nullable`1<System.Double>)
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
