// Id := 100663746, Name := Z0.bit Z0.math::negative(System.Single)
// bit negative(float x)
// AggressiveInlining
bit negative(float x)
{
    IL_0000: ldarg.0
    IL_0001: ldc.r4 0
    IL_0006: clt
    IL_0008: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000D: ret
}
