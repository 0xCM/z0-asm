// Id := 100663916, Name := System.Double Z0.fmath::pow(System.Double,System.Double)
// double pow(double src, double exp)
// AggressiveInlining
double pow(double src, double exp)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Double System.Math::Pow(System.Double,System.Double)
    IL_0007: ret
}
