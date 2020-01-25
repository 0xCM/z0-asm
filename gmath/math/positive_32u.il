// Id := 100663763, Name := Z0.bit Z0.math::positive(System.UInt32)
// bit positive(uint a)
// AggressiveInlining
bit positive(uint a)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.0
    IL_0002: cgt.un
    IL_0004: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0009: ret
}
