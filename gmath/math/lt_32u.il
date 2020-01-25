// Id := 100663715, Name := Z0.bit Z0.math::lt(System.UInt32,System.UInt32)
// bit lt(uint a, uint b)
// AggressiveInlining
bit lt(uint a, uint b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: clt.un
    IL_0004: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0009: ret
}
