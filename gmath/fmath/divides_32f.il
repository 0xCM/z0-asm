// Id := 100663844, Name := Z0.bit Z0.fmath::divides(System.Single,System.Single)
// bit divides(float a, float b)
// AggressiveInlining
bit divides(float a, float b)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: rem
    IL_0003: ldc.r4 0
    IL_0008: ceq
    IL_000A: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000F: ret
}
