// Id := 100663836, Name := System.Single Z0.fmath::dec(System.Single)
// float dec(float src)
// AggressiveInlining
float dec(float src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.r4 1
    IL_0006: sub
    IL_0007: dup
    IL_0008: starg.s src
    IL_000A: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663837, Name := System.Double Z0.fmath::dec(System.Double)
// double dec(double src)
// AggressiveInlining
double dec(double src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.r8 1
    IL_000A: sub
    IL_000B: dup
    IL_000C: starg.s src
    IL_000E: ret
}
------------------------------------------------------------------------------------------------------------------------
