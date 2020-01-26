// Id := 100663758, Name := Z0.bit Z0.math::positive(System.SByte)
// bit positive(sbyte a)
// AggressiveInlining
bit positive(sbyte a)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.0
    IL_0002: cgt
    IL_0004: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0009: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663759, Name := Z0.bit Z0.math::positive(System.Byte)
// bit positive(byte a)
// AggressiveInlining
bit positive(byte a)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.0
    IL_0002: cgt
    IL_0004: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0009: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663760, Name := Z0.bit Z0.math::positive(System.Int16)
// bit positive(short a)
// AggressiveInlining
bit positive(short a)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.0
    IL_0002: cgt
    IL_0004: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0009: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663761, Name := Z0.bit Z0.math::positive(System.UInt16)
// bit positive(ushort a)
// AggressiveInlining
bit positive(ushort a)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.0
    IL_0002: cgt
    IL_0004: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0009: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663762, Name := Z0.bit Z0.math::positive(System.Int32)
// bit positive(int a)
// AggressiveInlining
bit positive(int a)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.0
    IL_0002: cgt
    IL_0004: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0009: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663763, Name := Z0.bit Z0.math::positive(System.UInt32)
// bit positive(uint a)
// AggressiveInlining
bit positive(uint a)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.0
    IL_0002: cgt.un
    IL_0004: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0009: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663764, Name := Z0.bit Z0.math::positive(System.Int64)
// bit positive(long a)
// AggressiveInlining
bit positive(long a)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.0
    IL_0002: conv.i8
    IL_0003: cgt
    IL_0005: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000A: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663765, Name := Z0.bit Z0.math::positive(System.UInt64)
// bit positive(ulong a)
// AggressiveInlining
bit positive(ulong a)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.0
    IL_0002: conv.i8
    IL_0003: cgt.un
    IL_0005: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000A: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663766, Name := Z0.bit Z0.math::positive(System.Single)
// bit positive(float a)
// AggressiveInlining
bit positive(float a)
{
    IL_0000: ldarg.0
    IL_0001: ldc.r4 0
    IL_0006: cgt
    IL_0008: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663767, Name := Z0.bit Z0.math::positive(System.Double)
// bit positive(double a)
// AggressiveInlining
bit positive(double a)
{
    IL_0000: ldarg.0
    IL_0001: ldc.r8 0
    IL_000A: cgt
    IL_000C: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
