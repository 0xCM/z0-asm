// System.Single Z0.fmath::log2(System.Single)
// float log2(float src)
// AggressiveInlining
float log2(float src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Single System.MathF::Log2(System.Single)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Double Z0.fmath::log2(System.Double)
// double log2(double src)
// AggressiveInlining
double log2(double src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Double System.Math::Log2(System.Double)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
