// Id := 100663839, Name := System.Single Z0.fmath::dec(System.Single)
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
