// Id := 100663863, Name := System.Single Z0.fmath::sqrt(System.Single)
// float sqrt(float src)
// AggressiveInlining
float sqrt(float src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Single System.MathF::Sqrt(System.Single)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663864, Name := System.Double Z0.fmath::sqrt(System.Double)
// double sqrt(double src)
// AggressiveInlining
double sqrt(double src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Double System.Math::Sqrt(System.Double)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
