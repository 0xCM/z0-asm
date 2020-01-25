// Id := 100663840, Name := System.Double Z0.fmath::dec(System.Double)
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
