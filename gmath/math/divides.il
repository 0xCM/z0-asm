// Id := 100663371, Name := Z0.bit Z0.math::divides(System.SByte,System.SByte)
// bit divides(sbyte a, sbyte b)
// AggressiveInlining
bit divides(sbyte a, sbyte b)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: rem
    IL_0003: ldc.i4.0
    IL_0004: ceq
    IL_0006: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663372, Name := Z0.bit Z0.math::divides(System.Byte,System.Byte)
// bit divides(byte a, byte b)
// AggressiveInlining
bit divides(byte a, byte b)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: rem
    IL_0003: ldc.i4.0
    IL_0004: ceq
    IL_0006: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663373, Name := Z0.bit Z0.math::divides(System.Int16,System.Int16)
// bit divides(Int16 a, Int16 b)
// AggressiveInlining
bit divides(Int16 a, Int16 b)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: rem
    IL_0003: ldc.i4.0
    IL_0004: ceq
    IL_0006: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663374, Name := Z0.bit Z0.math::divides(System.UInt16,System.UInt16)
// bit divides(ushort a, ushort b)
// AggressiveInlining
bit divides(ushort a, ushort b)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: rem
    IL_0003: ldc.i4.0
    IL_0004: ceq
    IL_0006: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663375, Name := Z0.bit Z0.math::divides(System.Int32,System.Int32)
// bit divides(int a, int b)
// AggressiveInlining
bit divides(int a, int b)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: rem
    IL_0003: ldc.i4.0
    IL_0004: ceq
    IL_0006: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663376, Name := Z0.bit Z0.math::divides(System.UInt32,System.UInt32)
// bit divides(uint a, uint b)
// AggressiveInlining
bit divides(uint a, uint b)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: rem.un
    IL_0003: ldc.i4.0
    IL_0004: ceq
    IL_0006: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663377, Name := Z0.bit Z0.math::divides(System.Int64,System.Int64)
// bit divides(long a, long b)
// AggressiveInlining
bit divides(long a, long b)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: rem
    IL_0003: ldc.i4.0
    IL_0004: conv.i8
    IL_0005: ceq
    IL_0007: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663378, Name := Z0.bit Z0.math::divides(System.UInt64,System.UInt64)
// bit divides(ulong a, ulong b)
// AggressiveInlining
bit divides(ulong a, ulong b)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: rem.un
    IL_0003: ldc.i4.0
    IL_0004: conv.i8
    IL_0005: ceq
    IL_0007: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
