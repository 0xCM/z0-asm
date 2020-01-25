// Id := 100663714, Name := Z0.bit Z0.math::lt(System.Int32,System.Int32)
// bit lt(int a, int b)
// AggressiveInlining
bit lt(int a, int b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: clt
    IL_0004: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0009: ret
}
