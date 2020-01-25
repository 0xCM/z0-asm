// Id := 100663747, Name := Z0.bit Z0.math::negative(System.Double)
// bit negative(double x)
// AggressiveInlining
bit negative(double x)
{
    IL_0000: ldarg.0
    IL_0001: ldc.r8 0
    IL_000A: clt
    IL_000C: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0011: ret
}
