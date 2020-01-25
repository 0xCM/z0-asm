// Id := 100663968, Name := T Z0.gmath::div<T>(T,T)
// double div<double>(double a, double b)
// AggressiveInlining
double div<double>(double a, double b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call T Z0.gmath::div_u<T>(T,T)
    IL_0007: ret
}
