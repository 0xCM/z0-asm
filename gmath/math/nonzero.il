// Id := 100663748, Name := Z0.bit Z0.math::nonzero(System.SByte)
// bit nonzero(sbyte src)
// AggressiveInlining
bit nonzero(sbyte src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.0
    IL_0002: cgt.un
    IL_0004: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0009: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663749, Name := Z0.bit Z0.math::nonzero(System.Byte)
// bit nonzero(byte src)
// AggressiveInlining
bit nonzero(byte src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.0
    IL_0002: cgt.un
    IL_0004: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0009: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663750, Name := Z0.bit Z0.math::nonzero(System.Int16)
// bit nonzero(Int16 src)
// AggressiveInlining
bit nonzero(Int16 src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.0
    IL_0002: cgt.un
    IL_0004: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0009: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663751, Name := Z0.bit Z0.math::nonzero(System.UInt16)
// bit nonzero(ushort src)
// AggressiveInlining
bit nonzero(ushort src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.0
    IL_0002: cgt.un
    IL_0004: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0009: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663752, Name := Z0.bit Z0.math::nonzero(System.Int32)
// bit nonzero(int src)
// AggressiveInlining
bit nonzero(int src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.0
    IL_0002: cgt.un
    IL_0004: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0009: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663753, Name := Z0.bit Z0.math::nonzero(System.UInt32)
// bit nonzero(uint src)
// AggressiveInlining
bit nonzero(uint src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.0
    IL_0002: cgt.un
    IL_0004: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0009: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663754, Name := Z0.bit Z0.math::nonzero(System.Int64)
// bit nonzero(long src)
// AggressiveInlining
bit nonzero(long src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.0
    IL_0002: conv.i8
    IL_0003: cgt.un
    IL_0005: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000A: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663755, Name := Z0.bit Z0.math::nonzero(System.UInt64)
// bit nonzero(ulong src)
// AggressiveInlining
bit nonzero(ulong src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.0
    IL_0002: conv.i8
    IL_0003: cgt.un
    IL_0005: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000A: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663756, Name := Z0.bit Z0.math::nonzero(System.Single)
// bit nonzero(float src)
// AggressiveInlining
bit nonzero(float src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.r4 0
    IL_0006: ceq
    IL_0008: ldc.i4.0
    IL_0009: ceq
    IL_000B: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0010: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663757, Name := Z0.bit Z0.math::nonzero(System.Double)
// bit nonzero(double src)
// AggressiveInlining
bit nonzero(double src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.r8 0
    IL_000A: ceq
    IL_000C: ldc.i4.0
    IL_000D: ceq
    IL_000F: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0014: ret
}
------------------------------------------------------------------------------------------------------------------------
