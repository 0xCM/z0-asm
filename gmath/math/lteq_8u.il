// Id := 100663719, Name := Z0.bit Z0.math::lteq(System.Byte,System.Byte)
// bit lteq(byte a, byte b)
// AggressiveInlining
bit lteq(byte a, byte b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: cgt
    IL_0004: ldc.i4.0
    IL_0005: ceq
    IL_0007: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000C: ret
}
