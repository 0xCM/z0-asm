// Id := 100663742, Name := Z0.bit Z0.math::negative(System.SByte)
// bit negative(sbyte x)
// AggressiveInlining
bit negative(sbyte x)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.0
    IL_0002: clt
    IL_0004: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0009: ret
}
