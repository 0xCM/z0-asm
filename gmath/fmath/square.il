// Id := 100663861, Name := System.Single Z0.fmath::square(System.Single)
// float square(float src)
// AggressiveInlining
float square(float src)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: call System.Single Z0.fmath::mul(System.Single,System.Single)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663862, Name := System.Double Z0.fmath::square(System.Double)
// double square(double src)
// AggressiveInlining
double square(double src)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: call System.Double Z0.fmath::mul(System.Double,System.Double)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
