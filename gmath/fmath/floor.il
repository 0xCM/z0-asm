// Id := 100663843, Name := System.Single Z0.fmath::floor(System.Single)
// float floor(float src)
// AggressiveInlining
float floor(float src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Single System.MathF::Floor(System.Single)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663844, Name := System.Double Z0.fmath::floor(System.Double)
// double floor(double src)
// AggressiveInlining
double floor(double src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Double System.Math::Floor(System.Double)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
