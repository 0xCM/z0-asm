// Id := 100663766, Name := Z0.bit Z0.math::positive(System.Single)
// bit positive(float a)
// AggressiveInlining
bit positive(float a)
{
    IL_0000: ldarg.0
    IL_0001: ldc.r4 0
    IL_0006: cgt
    IL_0008: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000D: ret
}
