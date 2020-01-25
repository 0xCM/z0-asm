// Id := 100663743, Name := Z0.bit Z0.math::negative(System.Int16)
// bit negative(Int16 x)
// AggressiveInlining
bit negative(Int16 x)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.0
    IL_0002: clt
    IL_0004: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0009: ret
}
