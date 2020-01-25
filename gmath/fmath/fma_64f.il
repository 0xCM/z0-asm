// Id := 100663849, Name := System.Double Z0.fmath::fma(System.Double,System.Double,System.Double)
// double fma(double x, double y, double z)
// AggressiveInlining
double fma(double x, double y, double z)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Double System.Math::FusedMultiplyAdd(System.Double,System.Double,System.Double)
    IL_0008: ret
}
