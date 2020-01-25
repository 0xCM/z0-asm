// Id := 100663838, Name := System.Double Z0.fmath::clamp(System.Double,System.Double)
// double clamp(double src, double max)
// AggressiveInlining
double clamp(double src, double max)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: bgt.s IL_0006
    IL_0004: ldarg.0
    IL_0005: ret
    IL_0006: ldarg.1
    IL_0007: ret
}
