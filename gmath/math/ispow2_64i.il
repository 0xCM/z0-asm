// Id := 100663413, Name := Z0.bit Z0.math::ispow2(System.Int64)
// bit ispow2(long x)
// AggressiveInlining
bit ispow2(long x)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldc.i4.1
    IL_0003: conv.i8
    IL_0004: sub
    IL_0005: and
    IL_0006: ldc.i4.0
    IL_0007: conv.i8
    IL_0008: ceq
    IL_000A: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000F: ret
}
