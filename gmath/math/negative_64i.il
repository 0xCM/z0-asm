// Id := 100663745, Name := Z0.bit Z0.math::negative(System.Int64)
// bit negative(long x)
// AggressiveInlining
bit negative(long x)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.0
    IL_0002: conv.i8
    IL_0003: clt
    IL_0005: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000A: ret
}
