// Id := 100663836, Name := System.Double Z0.fmath::ceil(System.Double)
// double ceil(double src)
// AggressiveInlining
double ceil(double src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Double System.Math::Ceiling(System.Double)
    IL_0006: ret
}
