// Id := 100663895, Name := System.Single Z0.fmath::exp(System.Single)
// float exp(float pow)
// AggressiveInlining
float exp(float pow)
{
    IL_0000: ldarg.0
    IL_0001: call System.Single System.MathF::Exp(System.Single)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663896, Name := System.Double Z0.fmath::exp(System.Double)
// double exp(double pow)
// AggressiveInlining
double exp(double pow)
{
    IL_0000: ldarg.0
    IL_0001: call System.Double System.Math::Exp(System.Double)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
