// Id := 100663912, Name := System.Double Z0.fmath::ln(System.Double)
// double ln(double src)
// AggressiveInlining
double ln(double src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Double System.Math::Log(System.Double)
    IL_0006: ret
}
