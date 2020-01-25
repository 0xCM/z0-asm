// Id := 100663671, Name := Z0.bit Z0.math::between(System.SByte,System.SByte,System.SByte)
// bit between(sbyte t, sbyte min, sbyte max)
// AggressiveInlining
bit between(sbyte t, sbyte min, sbyte max)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: blt.s IL_000D
    IL_0004: ldarg.0
    IL_0005: ldarg.2
    IL_0006: cgt
    IL_0008: ldc.i4.0
    IL_0009: ceq
    IL_000B: br.s IL_000E
    IL_000D: ldc.i4.0
    IL_000E: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0013: ret
}
