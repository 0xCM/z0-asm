// Z0.NumericId Z0.Numeric::id(Z0.NumericKind)
// NumericId:uint id(NumericKind:uint k)
// AggressiveInlining
NumericId:uint id(NumericKind:uint k)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.3
    IL_0002: shl
    IL_0003: ldc.i4.3
    IL_0004: shr.un
    IL_0005: stloc.0
    IL_0006: ldloc.0
    IL_0007: ldc.i4.s 16
    IL_0009: shr.un
    IL_000A: ldc.i4.s 16
    IL_000C: shl
    IL_000D: stloc.1
    IL_000E: ldloc.1
    IL_000F: ret
}
------------------------------------------------------------------------------------------------------------------------
