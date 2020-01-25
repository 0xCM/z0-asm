// Id := 100663375, Name := Z0.bit Z0.math::divides(System.Int32,System.Int32)
// bit divides(int a, int b)
// AggressiveInlining
bit divides(int a, int b)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: rem
    IL_0003: ldc.i4.0
    IL_0004: ceq
    IL_0006: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000B: ret
}
