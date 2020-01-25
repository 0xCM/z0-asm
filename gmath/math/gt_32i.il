// Id := 100663698, Name := Z0.bit Z0.math::gt(System.Int32,System.Int32)
// bit gt(int a, int b)
// AggressiveInlining
bit gt(int a, int b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: cgt
    IL_0004: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0009: ret
}
