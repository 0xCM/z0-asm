// System.Byte Z0.Bits::stitch(System.Byte,System.Int32,System.Byte,System.Int32)
// byte stitch(byte left, int ldx, byte right, int rdx)
// AggressiveInlining
byte stitch(byte left, int ldx, byte right, int rdx)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 31
    IL_0004: and
    IL_0005: shl
    IL_0006: stloc.0
    IL_0007: ldarg.2
    IL_0008: ldarg.3
    IL_0009: ldc.i4.s 31
    IL_000B: and
    IL_000C: shr.un
    IL_000D: stloc.1
    IL_000E: ldloc.0
    IL_000F: ldloc.1
    IL_0010: or
    IL_0011: ldarg.3
    IL_0012: ldc.i4.s 31
    IL_0014: and
    IL_0015: shr.un
    IL_0016: conv.u1
    IL_0017: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt16 Z0.Bits::stitch(System.UInt16,System.Int32,System.UInt16,System.Int32)
// ushort stitch(ushort left, int ldx, ushort right, int rdx)
// AggressiveInlining
ushort stitch(ushort left, int ldx, ushort right, int rdx)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 31
    IL_0004: and
    IL_0005: shl
    IL_0006: stloc.0
    IL_0007: ldarg.2
    IL_0008: ldarg.3
    IL_0009: ldc.i4.s 31
    IL_000B: and
    IL_000C: shr.un
    IL_000D: stloc.1
    IL_000E: ldloc.0
    IL_000F: ldloc.1
    IL_0010: or
    IL_0011: ldarg.3
    IL_0012: ldc.i4.s 31
    IL_0014: and
    IL_0015: shr.un
    IL_0016: conv.u2
    IL_0017: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.Bits::stitch(System.UInt32,System.Int32,System.UInt32,System.Int32)
// uint stitch(uint left, int ldx, uint right, int rdx)
// AggressiveInlining
uint stitch(uint left, int ldx, uint right, int rdx)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 31
    IL_0004: and
    IL_0005: shl
    IL_0006: stloc.0
    IL_0007: ldarg.2
    IL_0008: ldarg.3
    IL_0009: ldc.i4.s 31
    IL_000B: and
    IL_000C: shr.un
    IL_000D: stloc.1
    IL_000E: ldloc.0
    IL_000F: ldloc.1
    IL_0010: or
    IL_0011: ldarg.3
    IL_0012: ldc.i4.s 31
    IL_0014: and
    IL_0015: shr.un
    IL_0016: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt64 Z0.Bits::stitch(System.UInt64,System.Int32,System.UInt64,System.Int32)
// ulong stitch(ulong left, int ldx, ulong right, int rdx)
// AggressiveInlining
ulong stitch(ulong left, int ldx, ulong right, int rdx)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 63
    IL_0004: and
    IL_0005: shl
    IL_0006: stloc.0
    IL_0007: ldarg.2
    IL_0008: ldarg.3
    IL_0009: ldc.i4.s 63
    IL_000B: and
    IL_000C: shr.un
    IL_000D: stloc.1
    IL_000E: ldloc.0
    IL_000F: ldloc.1
    IL_0010: or
    IL_0011: ldarg.3
    IL_0012: ldc.i4.s 63
    IL_0014: and
    IL_0015: shr.un
    IL_0016: ret
}
------------------------------------------------------------------------------------------------------------------------
