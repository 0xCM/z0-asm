// Id := 100666409, Name := T Z0.Converter::convert<T>(System.Single)
// double convert<double>(float src)
// AggressiveInlining
double convert<double>(float src)
{
    IL_0000: ldarg.0
    IL_0001: call T Z0.Converter::convert_u<T>(System.Single)
    IL_0006: ret
}
