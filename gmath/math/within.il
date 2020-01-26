// Id := 100663768, Name := Z0.bit Z0.math::within(System.SByte,System.SByte,System.SByte)
// bit within(sbyte a, sbyte b, sbyte tolerance)
// AggressiveInlining
bit within(sbyte a, sbyte b, sbyte tolerance)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt64 Z0.math::dist(System.SByte,System.SByte)
    IL_0007: ldarg.2
    IL_0008: conv.u8
    IL_0009: cgt.un
    IL_000B: ldc.i4.0
    IL_000C: ceq
    IL_000E: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0013: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663769, Name := Z0.bit Z0.math::within(System.Byte,System.Byte,System.Byte)
// bit within(byte a, byte b, byte tolerance)
// AggressiveInlining
bit within(byte a, byte b, byte tolerance)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt64 Z0.math::dist(System.Byte,System.Byte)
    IL_0007: ldarg.2
    IL_0008: conv.u8
    IL_0009: cgt.un
    IL_000B: ldc.i4.0
    IL_000C: ceq
    IL_000E: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0013: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663770, Name := Z0.bit Z0.math::within(System.Int16,System.Int16,System.Int16)
// bit within(Int16 a, Int16 b, Int16 tolerance)
// AggressiveInlining
bit within(Int16 a, Int16 b, Int16 tolerance)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt64 Z0.math::dist(System.Int16,System.Int16)
    IL_0007: ldarg.2
    IL_0008: conv.u8
    IL_0009: cgt.un
    IL_000B: ldc.i4.0
    IL_000C: ceq
    IL_000E: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0013: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663771, Name := Z0.bit Z0.math::within(System.UInt16,System.UInt16,System.UInt16)
// bit within(ushort a, ushort b, ushort tolerance)
// AggressiveInlining
bit within(ushort a, ushort b, ushort tolerance)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt64 Z0.math::dist(System.UInt16,System.UInt16)
    IL_0007: ldarg.2
    IL_0008: conv.u8
    IL_0009: cgt.un
    IL_000B: ldc.i4.0
    IL_000C: ceq
    IL_000E: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0013: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663772, Name := Z0.bit Z0.math::within(System.Int32,System.Int32,System.Int32)
// bit within(int a, int b, int tolerance)
// AggressiveInlining
bit within(int a, int b, int tolerance)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt64 Z0.math::dist(System.Int32,System.Int32)
    IL_0007: ldarg.2
    IL_0008: conv.u8
    IL_0009: cgt.un
    IL_000B: ldc.i4.0
    IL_000C: ceq
    IL_000E: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0013: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663773, Name := Z0.bit Z0.math::within(System.UInt32,System.UInt32,System.UInt32)
// bit within(uint a, uint b, uint tolerance)
// AggressiveInlining
bit within(uint a, uint b, uint tolerance)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt64 Z0.math::dist(System.UInt32,System.UInt32)
    IL_0007: ldarg.2
    IL_0008: conv.u8
    IL_0009: cgt.un
    IL_000B: ldc.i4.0
    IL_000C: ceq
    IL_000E: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0013: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663774, Name := Z0.bit Z0.math::within(System.Int64,System.Int64,System.Int64)
// bit within(long a, long b, long tolerance)
// AggressiveInlining
bit within(long a, long b, long tolerance)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt64 Z0.math::dist(System.Int64,System.Int64)
    IL_0007: ldarg.2
    IL_0008: cgt.un
    IL_000A: ldc.i4.0
    IL_000B: ceq
    IL_000D: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0012: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663775, Name := Z0.bit Z0.math::within(System.UInt64,System.UInt64,System.UInt64)
// bit within(ulong a, ulong b, ulong tolerance)
// AggressiveInlining
bit within(ulong a, ulong b, ulong tolerance)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt64 Z0.math::dist(System.UInt64,System.UInt64)
    IL_0007: ldarg.2
    IL_0008: cgt.un
    IL_000A: ldc.i4.0
    IL_000B: ceq
    IL_000D: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0012: ret
}
------------------------------------------------------------------------------------------------------------------------
