// Id := 100663411, Name := Z0.bit Z0.math::ispow2(System.Int32)
// bit ispow2(int x)
// AggressiveInlining
bit ispow2(int x)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldc.i4.1
    IL_0003: sub
    IL_0004: and
    IL_0005: ldc.i4.0
    IL_0006: ceq
    IL_0008: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000D: ret
}
