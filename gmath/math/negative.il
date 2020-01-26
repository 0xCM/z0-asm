// Id := 100663742, Name := Z0.bit Z0.math::negative(System.SByte)
// bit negative(sbyte x)
// AggressiveInlining
bit negative(sbyte x)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.0
    IL_0002: clt
    IL_0004: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0009: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663743, Name := Z0.bit Z0.math::negative(System.Int16)
// bit negative(short x)
// AggressiveInlining
bit negative(short x)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.0
    IL_0002: clt
    IL_0004: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0009: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663744, Name := Z0.bit Z0.math::negative(System.Int32)
// bit negative(int x)
// AggressiveInlining
bit negative(int x)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.0
    IL_0002: clt
    IL_0004: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0009: ret
}
------------------------------------------------------------------------------------------------------------------------
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
------------------------------------------------------------------------------------------------------------------------
// Id := 100663746, Name := Z0.bit Z0.math::negative(System.Single)
// bit negative(float x)
// AggressiveInlining
bit negative(float x)
{
    IL_0000: ldarg.0
    IL_0001: ldc.r4 0
    IL_0006: clt
    IL_0008: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663747, Name := Z0.bit Z0.math::negative(System.Double)
// bit negative(double x)
// AggressiveInlining
bit negative(double x)
{
    IL_0000: ldarg.0
    IL_0001: ldc.r8 0
    IL_000A: clt
    IL_000C: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
