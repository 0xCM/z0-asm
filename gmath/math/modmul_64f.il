// Id := 100663438, Name := System.Double Z0.math::modmul(System.Double,System.Double,System.Double)
// double modmul(double a, double b, double m)
// AggressiveInlining
double modmul(double a, double b, double m)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: mul
    IL_0003: ldarg.2
    IL_0004: rem
    IL_0005: ret
}
