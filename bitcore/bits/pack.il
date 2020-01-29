// System.UInt32 Z0.Bits::pack(Z0.bit,Z0.bit)
// uint pack(bit b0, bit b1)
// AggressiveInlining
uint pack(bit b0, bit b1)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32 Z0.bit::op_Explicit(Z0.bit)
    IL_0006: stloc.0
    IL_0007: ldloc.0
    IL_0008: ldarg.1
    IL_0009: call System.UInt32 Z0.bit::op_Explicit(Z0.bit)
    IL_000E: ldc.i4.1
    IL_000F: shl
    IL_0010: or
    IL_0011: stloc.0
    IL_0012: ldloc.0
    IL_0013: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.Bits::pack(Z0.bit,Z0.bit,Z0.bit)
// uint pack(bit b0, bit b1, bit b2)
// AggressiveInlining
uint pack(bit b0, bit b1, bit b2)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32 Z0.bit::op_Explicit(Z0.bit)
    IL_0006: stloc.0
    IL_0007: ldloc.0
    IL_0008: ldarg.1
    IL_0009: call System.UInt32 Z0.bit::op_Explicit(Z0.bit)
    IL_000E: ldc.i4.1
    IL_000F: shl
    IL_0010: or
    IL_0011: stloc.0
    IL_0012: ldloc.0
    IL_0013: ldarg.2
    IL_0014: call System.UInt32 Z0.bit::op_Explicit(Z0.bit)
    IL_0019: ldc.i4.2
    IL_001A: shl
    IL_001B: or
    IL_001C: stloc.0
    IL_001D: ldloc.0
    IL_001E: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.Bits::pack(Z0.bit,Z0.bit,Z0.bit,Z0.bit)
// uint pack(bit b0, bit b1, bit b2, bit b3)
// AggressiveInlining
uint pack(bit b0, bit b1, bit b2, bit b3)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32 Z0.bit::op_Explicit(Z0.bit)
    IL_0006: stloc.0
    IL_0007: ldloc.0
    IL_0008: ldarg.1
    IL_0009: call System.UInt32 Z0.bit::op_Explicit(Z0.bit)
    IL_000E: ldc.i4.1
    IL_000F: shl
    IL_0010: or
    IL_0011: stloc.0
    IL_0012: ldloc.0
    IL_0013: ldarg.2
    IL_0014: call System.UInt32 Z0.bit::op_Explicit(Z0.bit)
    IL_0019: ldc.i4.2
    IL_001A: shl
    IL_001B: or
    IL_001C: stloc.0
    IL_001D: ldloc.0
    IL_001E: ldarg.3
    IL_001F: call System.UInt32 Z0.bit::op_Explicit(Z0.bit)
    IL_0024: ldc.i4.3
    IL_0025: shl
    IL_0026: or
    IL_0027: stloc.0
    IL_0028: ldloc.0
    IL_0029: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.Bits::pack(Z0.bit,Z0.bit,Z0.bit,Z0.bit,Z0.bit)
// uint pack(bit b0, bit b1, bit b2, bit b3, bit b4)
// AggressiveInlining
uint pack(bit b0, bit b1, bit b2, bit b3, bit b4)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32 Z0.bit::op_Explicit(Z0.bit)
    IL_0006: stloc.0
    IL_0007: ldloc.0
    IL_0008: ldarg.1
    IL_0009: call System.UInt32 Z0.bit::op_Explicit(Z0.bit)
    IL_000E: ldc.i4.1
    IL_000F: shl
    IL_0010: or
    IL_0011: stloc.0
    IL_0012: ldloc.0
    IL_0013: ldarg.2
    IL_0014: call System.UInt32 Z0.bit::op_Explicit(Z0.bit)
    IL_0019: ldc.i4.2
    IL_001A: shl
    IL_001B: or
    IL_001C: stloc.0
    IL_001D: ldloc.0
    IL_001E: ldarg.3
    IL_001F: call System.UInt32 Z0.bit::op_Explicit(Z0.bit)
    IL_0024: ldc.i4.3
    IL_0025: shl
    IL_0026: or
    IL_0027: stloc.0
    IL_0028: ldloc.0
    IL_0029: ldarg.s b4
    IL_002B: call System.UInt32 Z0.bit::op_Explicit(Z0.bit)
    IL_0030: ldc.i4.4
    IL_0031: shl
    IL_0032: or
    IL_0033: stloc.0
    IL_0034: ldloc.0
    IL_0035: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.Bits::pack(Z0.bit,Z0.bit,Z0.bit,Z0.bit,Z0.bit,Z0.bit,Z0.bit,Z0.bit)
// uint pack(bit b0, bit b1, bit b2, bit b3, bit b4, bit b5, bit b6, bit b7)
// AggressiveInlining
uint pack(bit b0, bit b1, bit b2, bit b3, bit b4, bit b5, bit b6, bit b7)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: ldarg.3
    IL_0004: call System.UInt32 Z0.Bits::pack(Z0.bit,Z0.bit,Z0.bit,Z0.bit)
    IL_0009: stloc.0
    IL_000A: ldloc.0
    IL_000B: ldarg.s b4
    IL_000D: ldarg.s b5
    IL_000F: ldarg.s b6
    IL_0011: ldarg.s b7
    IL_0013: call System.UInt32 Z0.Bits::pack(Z0.bit,Z0.bit,Z0.bit,Z0.bit)
    IL_0018: ldc.i4.4
    IL_0019: shl
    IL_001A: or
    IL_001B: stloc.0
    IL_001C: ldloc.0
    IL_001D: ret
}
------------------------------------------------------------------------------------------------------------------------
