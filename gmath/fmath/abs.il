// System.Single Z0.fmath::abs(System.Single)
// float abs(float a)
// AggressiveInlining
float abs(float a)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.Float32Bits Z0.Float32Bits::Define(System.Single)
    IL_0006: stloc.0
    IL_0007: ldloca.s V_0
    IL_0009: ldflda System.UInt32 Z0.Float32Bits::Integral
    IL_000E: dup
    IL_000F: ldind.u4
    IL_0010: ldc.i4 2147483647
    IL_0015: and
    IL_0016: stind.i4
    IL_0017: ldloc.0
    IL_0018: ldfld System.Single Z0.Float32Bits::Fractional
    IL_001D: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Double Z0.fmath::abs(System.Double)
// double abs(double a)
// AggressiveInlining
double abs(double a)
{
    IL_0000: ldarg.0
    IL_0001: call System.Double Z0.Float64Bits::Abs(System.Double)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
