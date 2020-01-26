// Id := 100663847, Name := System.Single Z0.fmath::inc(System.Single)
// float inc(float src)
// AggressiveInlining
float inc(float src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.r4 1
    IL_0006: add
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663848, Name := System.Double Z0.fmath::inc(System.Double)
// double inc(double src)
// AggressiveInlining
double inc(double src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.r8 1
    IL_000A: add
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
