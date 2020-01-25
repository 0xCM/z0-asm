// Id := 100663744, Name := Z0.bit Z0.math::negative(System.Int32)
// bit negative(int x)
// AggressiveInlining
bit negative(int x)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.0
    IL_0002: clt
    IL_0004: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0009: ret
}
