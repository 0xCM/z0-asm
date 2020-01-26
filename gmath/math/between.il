// Id := 100663670, Name := Z0.bit Z0.math::between(System.Byte,System.Byte,System.Byte)
// bit between(byte t, byte min, byte max)
// AggressiveInlining
bit between(byte t, byte min, byte max)
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
------------------------------------------------------------------------------------------------------------------------
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
------------------------------------------------------------------------------------------------------------------------
// Id := 100663672, Name := Z0.bit Z0.math::between(System.Int16,System.Int16,System.Int16)
// bit between(Int16 t, Int16 min, Int16 max)
// AggressiveInlining
bit between(Int16 t, Int16 min, Int16 max)
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
------------------------------------------------------------------------------------------------------------------------
// Id := 100663673, Name := Z0.bit Z0.math::between(System.UInt16,System.UInt16,System.UInt16)
// bit between(ushort t, ushort min, ushort max)
// AggressiveInlining
bit between(ushort t, ushort min, ushort max)
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
------------------------------------------------------------------------------------------------------------------------
// Id := 100663674, Name := Z0.bit Z0.math::between(System.Int32,System.Int32,System.Int32)
// bit between(int t, int min, int max)
// AggressiveInlining
bit between(int t, int min, int max)
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
------------------------------------------------------------------------------------------------------------------------
// Id := 100663675, Name := Z0.bit Z0.math::between(System.UInt32,System.UInt32,System.UInt32)
// bit between(uint t, uint min, uint max)
// AggressiveInlining
bit between(uint t, uint min, uint max)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: blt.un.s IL_000D
    IL_0004: ldarg.0
    IL_0005: ldarg.2
    IL_0006: cgt.un
    IL_0008: ldc.i4.0
    IL_0009: ceq
    IL_000B: br.s IL_000E
    IL_000D: ldc.i4.0
    IL_000E: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0013: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663676, Name := Z0.bit Z0.math::between(System.Int64,System.Int64,System.Int64)
// bit between(long t, long min, long max)
// AggressiveInlining
bit between(long t, long min, long max)
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
------------------------------------------------------------------------------------------------------------------------
// Id := 100663677, Name := Z0.bit Z0.math::between(System.UInt64,System.UInt64,System.UInt64)
// bit between(ulong t, ulong min, ulong max)
// AggressiveInlining
bit between(ulong t, ulong min, ulong max)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: blt.un.s IL_000D
    IL_0004: ldarg.0
    IL_0005: ldarg.2
    IL_0006: cgt.un
    IL_0008: ldc.i4.0
    IL_0009: ceq
    IL_000B: br.s IL_000E
    IL_000D: ldc.i4.0
    IL_000E: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_0013: ret
}
------------------------------------------------------------------------------------------------------------------------
