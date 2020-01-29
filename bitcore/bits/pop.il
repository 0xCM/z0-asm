// System.UInt32 Z0.Bits::pop(System.SByte)
// uint pop(sbyte src)
// AggressiveInlining
uint pop(sbyte src)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32 System.Runtime.Intrinsics.X86.Popcnt::PopCount(System.UInt32)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.Bits::pop(System.Byte)
// uint pop(byte src)
// AggressiveInlining
uint pop(byte src)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32 System.Runtime.Intrinsics.X86.Popcnt::PopCount(System.UInt32)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.Bits::pop(System.Int16)
// uint pop(short src)
// AggressiveInlining
uint pop(short src)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32 System.Runtime.Intrinsics.X86.Popcnt::PopCount(System.UInt32)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.Bits::pop(System.UInt16)
// uint pop(ushort src)
// AggressiveInlining
uint pop(ushort src)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32 System.Runtime.Intrinsics.X86.Popcnt::PopCount(System.UInt32)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.Bits::pop(System.Int32)
// uint pop(int src)
// AggressiveInlining
uint pop(int src)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32 System.Runtime.Intrinsics.X86.Popcnt::PopCount(System.UInt32)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.Bits::pop(System.UInt32)
// uint pop(uint src)
// AggressiveInlining
uint pop(uint src)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32 System.Runtime.Intrinsics.X86.Popcnt::PopCount(System.UInt32)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.Bits::pop(System.Int64)
// uint pop(long src)
// AggressiveInlining
uint pop(long src)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt64 System.Runtime.Intrinsics.X86.Popcnt/X64::PopCount(System.UInt64)
    IL_0006: conv.u4
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.Bits::pop(System.UInt64)
// uint pop(ulong src)
// AggressiveInlining
uint pop(ulong src)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt64 System.Runtime.Intrinsics.X86.Popcnt/X64::PopCount(System.UInt64)
    IL_0006: conv.u4
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.Bits::pop(System.UInt64,System.UInt64)
// uint pop(ulong x0, ulong x1)
// AggressiveInlining
uint pop(ulong x0, ulong x1)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt64 System.Runtime.Intrinsics.X86.Popcnt/X64::PopCount(System.UInt64)
    IL_0006: ldarg.1
    IL_0007: call System.UInt64 System.Runtime.Intrinsics.X86.Popcnt/X64::PopCount(System.UInt64)
    IL_000C: add
    IL_000D: conv.u4
    IL_000E: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.Bits::pop(System.UInt64,System.UInt64,System.UInt64)
// uint pop(ulong x, ulong y, ulong z)
// AggressiveInlining
uint pop(ulong x, ulong y, ulong z)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: xor
    IL_0003: ldarg.2
    IL_0004: and
    IL_0005: ldarg.0
    IL_0006: ldarg.1
    IL_0007: and
    IL_0008: or
    IL_0009: stloc.0
    IL_000A: ldarg.0
    IL_000B: ldarg.1
    IL_000C: xor
    IL_000D: ldarg.2
    IL_000E: xor
    IL_000F: stloc.1
    IL_0010: ldloc.0
    IL_0011: ldloc.0
    IL_0012: ldc.i4.1
    IL_0013: shr.un
    IL_0014: ldc.i8 6148914691236517205
    IL_001D: and
    IL_001E: sub
    IL_001F: stloc.0
    IL_0020: ldloc.1
    IL_0021: ldloc.1
    IL_0022: ldc.i4.1
    IL_0023: shr.un
    IL_0024: ldc.i8 6148914691236517205
    IL_002D: and
    IL_002E: sub
    IL_002F: stloc.1
    IL_0030: ldloc.0
    IL_0031: ldc.i8 3689348814741910323
    IL_003A: and
    IL_003B: ldloc.0
    IL_003C: ldc.i4.2
    IL_003D: shr.un
    IL_003E: ldc.i8 3689348814741910323
    IL_0047: and
    IL_0048: add
    IL_0049: stloc.0
    IL_004A: ldloc.1
    IL_004B: ldc.i8 3689348814741910323
    IL_0054: and
    IL_0055: ldloc.1
    IL_0056: ldc.i4.2
    IL_0057: shr.un
    IL_0058: ldc.i8 3689348814741910323
    IL_0061: and
    IL_0062: add
    IL_0063: stloc.1
    IL_0064: ldloc.0
    IL_0065: ldloc.0
    IL_0066: ldc.i4.4
    IL_0067: shr.un
    IL_0068: add
    IL_0069: ldc.i8 1085102592571150095
    IL_0072: and
    IL_0073: stloc.0
    IL_0074: ldloc.1
    IL_0075: ldloc.1
    IL_0076: ldc.i4.4
    IL_0077: shr.un
    IL_0078: add
    IL_0079: ldc.i8 1085102592571150095
    IL_0082: and
    IL_0083: stloc.1
    IL_0084: ldloc.0
    IL_0085: ldloc.0
    IL_0086: add
    IL_0087: ldloc.1
    IL_0088: add
    IL_0089: ldc.i8 72340172838076673
    IL_0092: mul
    IL_0093: ldc.i4.s 56
    IL_0095: shr.un
    IL_0096: stloc.1
    IL_0097: ldloc.1
    IL_0098: conv.u4
    IL_0099: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.Bits::pop(System.UInt64,System.UInt64,System.UInt64,System.UInt64)
// uint pop(ulong x0, ulong x1, ulong x2, ulong x3)
// AggressiveInlining
uint pop(ulong x0, ulong x1, ulong x2, ulong x3)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt64 System.Runtime.Intrinsics.X86.Popcnt/X64::PopCount(System.UInt64)
    IL_0006: ldarg.1
    IL_0007: call System.UInt64 System.Runtime.Intrinsics.X86.Popcnt/X64::PopCount(System.UInt64)
    IL_000C: add
    IL_000D: ldarg.2
    IL_000E: call System.UInt64 System.Runtime.Intrinsics.X86.Popcnt/X64::PopCount(System.UInt64)
    IL_0013: add
    IL_0014: ldarg.3
    IL_0015: call System.UInt64 System.Runtime.Intrinsics.X86.Popcnt/X64::PopCount(System.UInt64)
    IL_001A: add
    IL_001B: conv.u4
    IL_001C: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.Bits::pop(System.UInt64,System.UInt64,System.UInt64,System.UInt64,System.UInt64,System.UInt64,System.UInt64,System.UInt64)
// uint pop(ulong x0, ulong x1, ulong x2, ulong x3, ulong x4, ulong x5, ulong x6, ulong x7)
// AggressiveInlining
uint pop(ulong x0, ulong x1, ulong x2, ulong x3, ulong x4, ulong x5, ulong x6, ulong x7)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: ldarg.3
    IL_0004: call System.UInt32 Z0.Bits::pop(System.UInt64,System.UInt64,System.UInt64,System.UInt64)
    IL_0009: ldarg.s x4
    IL_000B: ldarg.s x5
    IL_000D: ldarg.s x6
    IL_000F: ldarg.s x7
    IL_0011: call System.UInt32 Z0.Bits::pop(System.UInt64,System.UInt64,System.UInt64,System.UInt64)
    IL_0016: add
    IL_0017: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.Bits::pop(System.UInt64,System.UInt64,System.UInt64,System.UInt64,System.UInt64,System.UInt64)
// uint pop(ulong x0, ulong x1, ulong x2, ulong x3, ulong x4, ulong x5)
// AggressiveInlining
uint pop(ulong x0, ulong x1, ulong x2, ulong x3, ulong x4, ulong x5)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.UInt32 Z0.Bits::pop(System.UInt64,System.UInt64,System.UInt64)
    IL_0008: ldarg.3
    IL_0009: ldarg.s x4
    IL_000B: ldarg.s x5
    IL_000D: call System.UInt32 Z0.Bits::pop(System.UInt64,System.UInt64,System.UInt64)
    IL_0012: add
    IL_0013: ret
}
------------------------------------------------------------------------------------------------------------------------
