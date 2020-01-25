// Id := 100663712, Name := Z0.bit Z0.math::lt(System.Int16,System.Int16)
// bit lt(Int16 a, Int16 b)
// AggressiveInlining
bit lt(Int16 a, Int16 b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: clt
    IL_0004: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0009: ret
}
