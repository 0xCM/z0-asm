// Id := 100663699, Name := Z0.bit Z0.math::gt(System.UInt32,System.UInt32)
// bit gt(uint a, uint b)
// AggressiveInlining
bit gt(uint a, uint b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: cgt.un
    IL_0004: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0009: ret
}
