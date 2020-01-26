// Id := 100663906, Name := System.Single Z0.fmath::pow(System.Single,System.Single)
// float pow(float src, float exp)
// AggressiveInlining
float pow(float src, float exp)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Single System.MathF::Pow(System.Single,System.Single)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663907, Name := System.Double Z0.fmath::pow(System.Double,System.Double)
// double pow(double src, double exp)
// AggressiveInlining
double pow(double src, double exp)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Double System.Math::Pow(System.Double,System.Double)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
