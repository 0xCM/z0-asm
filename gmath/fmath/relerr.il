// System.Single Z0.fmath::relerr(System.Single,System.Single)
// float relerr(float lhs, float rhs)
// AggressiveInlining
float relerr(float lhs, float rhs)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: sub
    IL_0003: ldarg.0
    IL_0004: div
    IL_0005: call System.Single Z0.fmath::abs(System.Single)
    IL_000A: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Double Z0.fmath::relerr(System.Double,System.Double)
// double relerr(double lhs, double rhs)
// AggressiveInlining
double relerr(double lhs, double rhs)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: sub
    IL_0003: ldarg.0
    IL_0004: div
    IL_0005: call System.Double Z0.fmath::abs(System.Double)
    IL_000A: ret
}
------------------------------------------------------------------------------------------------------------------------
