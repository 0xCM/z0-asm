// Id := 100663750, Name := Z0.bit Z0.math::nonzero(System.Int16)
// bit nonzero(Int16 src)
// AggressiveInlining
bit nonzero(Int16 src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.0
    IL_0002: cgt.un
    IL_0004: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0009: ret
}
