// Id := 100663679, Name := Z0.bit Z0.math::eq(System.Byte,System.Byte)
// bit eq(byte a, byte b)
// AggressiveInlining
bit eq(byte a, byte b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ceq
    IL_0004: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0009: ret
}
