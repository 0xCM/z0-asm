// Id := 100663748, Name := Z0.bit Z0.math::nonzero(System.SByte)
// bit nonzero(sbyte src)
// AggressiveInlining
bit nonzero(sbyte src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.0
    IL_0002: cgt.un
    IL_0004: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0009: ret
}
