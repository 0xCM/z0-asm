// Id := 100663918, Name := System.Double Z0.fmath::relerr(System.Double,System.Double)
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
