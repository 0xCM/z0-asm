// System.Char Z0.Numeric::char(Z0.NumericIndicator)
// char char(NumericIndicator:ushort src)
// AggressiveInlining
char char(NumericIndicator:ushort src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Boolean Z0.RootX::IsSome(Z0.NumericIndicator)
    IL_0006: brtrue.s IL_000B
    IL_0008: ldc.i4.s 101
    IL_000A: ret
    IL_000B: ldarg.0
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
