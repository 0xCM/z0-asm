// Id := 100663700, Name := Z0.bit Z0.math::gt(System.Int64,System.Int64)
// bit gt(long a, long b)
// AggressiveInlining
bit gt(long a, long b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: cgt
    IL_0004: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0009: ret
}
