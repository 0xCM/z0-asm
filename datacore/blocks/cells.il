// Z0.Block16`1<System.UInt16> Z0.DataBlocks::cells(Z0.N16,System.UInt16)
// Block16<ushort> cells(N16 n, ushort x0)
// AggressiveInlining
Block16<ushort> cells(N16 n, ushort x0)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: newarr System.UInt16
    IL_0007: dup
    IL_0008: ldc.i4.0
    IL_0009: ldarg.1
    IL_000A: stelem.i2
    IL_000B: call Z0.Block16`1<System.UInt16> Z0.DataBlocks::parts<System.UInt16>(Z0.N16,System.UInt16[])
    IL_0010: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block16`1<System.UInt64> Z0.DataBlocks::cells(Z0.N16,System.UInt64)
// Block16<ulong> cells(N16 n, ulong x0)
// AggressiveInlining
Block16<ulong> cells(N16 n, ulong x0)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: newarr System.UInt64
    IL_0007: dup
    IL_0008: ldc.i4.0
    IL_0009: ldarg.1
    IL_000A: stelem.i8
    IL_000B: call Z0.Block16`1<System.UInt64> Z0.DataBlocks::parts<System.UInt64>(Z0.N16,System.UInt64[])
    IL_0010: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block32`1<System.UInt64> Z0.DataBlocks::cells(Z0.N32,System.UInt64)
// Block32<ulong> cells(N32 n, ulong x0)
// AggressiveInlining
Block32<ulong> cells(N32 n, ulong x0)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: newarr System.UInt64
    IL_0007: dup
    IL_0008: ldc.i4.0
    IL_0009: ldarg.1
    IL_000A: stelem.i8
    IL_000B: call Z0.Block32`1<System.UInt64> Z0.DataBlocks::parts<System.UInt64>(Z0.N32,System.UInt64[])
    IL_0010: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block32`1<System.Byte> Z0.DataBlocks::cells(Z0.N32,System.Byte,System.Byte,System.Byte,System.Byte)
// Block32<byte> cells(N32 n, byte x0, byte x1, byte x2, byte x3)
// AggressiveInlining
Block32<byte> cells(N32 n, byte x0, byte x1, byte x2, byte x3)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.4
    IL_0002: newarr System.Byte
    IL_0007: dup
    IL_0008: ldc.i4.0
    IL_0009: ldarg.1
    IL_000A: stelem.i1
    IL_000B: dup
    IL_000C: ldc.i4.1
    IL_000D: ldarg.2
    IL_000E: stelem.i1
    IL_000F: dup
    IL_0010: ldc.i4.2
    IL_0011: ldarg.3
    IL_0012: stelem.i1
    IL_0013: dup
    IL_0014: ldc.i4.3
    IL_0015: ldarg.s x3
    IL_0017: stelem.i1
    IL_0018: call Z0.Block32`1<System.Byte> Z0.DataBlocks::parts<System.Byte>(Z0.N32,System.Byte[])
    IL_001D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block32`1<System.UInt16> Z0.DataBlocks::cells(Z0.N32,System.UInt16,System.UInt16)
// Block32<ushort> cells(N32 n, ushort x0, ushort x1)
// AggressiveInlining
Block32<ushort> cells(N32 n, ushort x0, ushort x1)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.2
    IL_0002: newarr System.UInt16
    IL_0007: dup
    IL_0008: ldc.i4.0
    IL_0009: ldarg.1
    IL_000A: stelem.i2
    IL_000B: dup
    IL_000C: ldc.i4.1
    IL_000D: ldarg.2
    IL_000E: stelem.i2
    IL_000F: call Z0.Block32`1<System.UInt16> Z0.DataBlocks::parts<System.UInt16>(Z0.N32,System.UInt16[])
    IL_0014: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block32`1<System.UInt32> Z0.DataBlocks::cells(Z0.N32,System.UInt32)
// Block32<uint> cells(N32 n, uint x0)
// AggressiveInlining
Block32<uint> cells(N32 n, uint x0)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: newarr System.UInt32
    IL_0007: dup
    IL_0008: ldc.i4.0
    IL_0009: ldarg.1
    IL_000A: stelem.i4
    IL_000B: call Z0.Block32`1<System.UInt32> Z0.DataBlocks::parts<System.UInt32>(Z0.N32,System.UInt32[])
    IL_0010: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block64`1<System.Byte> Z0.DataBlocks::cells(Z0.N64,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte)
// Block64<byte> cells(N64 n, byte x0, byte x1, byte x2, byte x3, byte x4, byte x5, byte x6, byte x7)
// AggressiveInlining
Block64<byte> cells(N64 n, byte x0, byte x1, byte x2, byte x3, byte x4, byte x5, byte x6, byte x7)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.8
    IL_0002: newarr System.Byte
    IL_0007: dup
    IL_0008: ldc.i4.0
    IL_0009: ldarg.1
    IL_000A: stelem.i1
    IL_000B: dup
    IL_000C: ldc.i4.1
    IL_000D: ldarg.2
    IL_000E: stelem.i1
    IL_000F: dup
    IL_0010: ldc.i4.2
    IL_0011: ldarg.3
    IL_0012: stelem.i1
    IL_0013: dup
    IL_0014: ldc.i4.3
    IL_0015: ldarg.s x3
    IL_0017: stelem.i1
    IL_0018: dup
    IL_0019: ldc.i4.4
    IL_001A: ldarg.s x4
    IL_001C: stelem.i1
    IL_001D: dup
    IL_001E: ldc.i4.5
    IL_001F: ldarg.s x5
    IL_0021: stelem.i1
    IL_0022: dup
    IL_0023: ldc.i4.6
    IL_0024: ldarg.s x6
    IL_0026: stelem.i1
    IL_0027: dup
    IL_0028: ldc.i4.7
    IL_0029: ldarg.s x7
    IL_002B: stelem.i1
    IL_002C: call Z0.Block64`1<System.Byte> Z0.DataBlocks::parts<System.Byte>(Z0.N64,System.Byte[])
    IL_0031: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block64`1<System.UInt16> Z0.DataBlocks::cells(Z0.N64,System.UInt16,System.UInt16,System.UInt16,System.UInt16)
// Block64<ushort> cells(N64 n, ushort x0, ushort x1, ushort x2, ushort x3)
// AggressiveInlining
Block64<ushort> cells(N64 n, ushort x0, ushort x1, ushort x2, ushort x3)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.4
    IL_0002: newarr System.UInt16
    IL_0007: dup
    IL_0008: ldc.i4.0
    IL_0009: ldarg.1
    IL_000A: stelem.i2
    IL_000B: dup
    IL_000C: ldc.i4.1
    IL_000D: ldarg.2
    IL_000E: stelem.i2
    IL_000F: dup
    IL_0010: ldc.i4.2
    IL_0011: ldarg.3
    IL_0012: stelem.i2
    IL_0013: dup
    IL_0014: ldc.i4.3
    IL_0015: ldarg.s x3
    IL_0017: stelem.i2
    IL_0018: call Z0.Block64`1<System.UInt16> Z0.DataBlocks::parts<System.UInt16>(Z0.N64,System.UInt16[])
    IL_001D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block64`1<System.UInt32> Z0.DataBlocks::cells(Z0.N64,System.UInt32,System.UInt32)
// Block64<uint> cells(N64 n, uint x0, uint x1)
// AggressiveInlining
Block64<uint> cells(N64 n, uint x0, uint x1)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.2
    IL_0002: newarr System.UInt32
    IL_0007: dup
    IL_0008: ldc.i4.0
    IL_0009: ldarg.1
    IL_000A: stelem.i4
    IL_000B: dup
    IL_000C: ldc.i4.1
    IL_000D: ldarg.2
    IL_000E: stelem.i4
    IL_000F: call Z0.Block64`1<System.UInt32> Z0.DataBlocks::parts<System.UInt32>(Z0.N64,System.UInt32[])
    IL_0014: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block64`1<System.UInt64> Z0.DataBlocks::cells(Z0.N64,System.UInt64)
// Block64<ulong> cells(N64 n, ulong x0)
// AggressiveInlining
Block64<ulong> cells(N64 n, ulong x0)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: newarr System.UInt64
    IL_0007: dup
    IL_0008: ldc.i4.0
    IL_0009: ldarg.1
    IL_000A: stelem.i8
    IL_000B: call Z0.Block64`1<System.UInt64> Z0.DataBlocks::parts<System.UInt64>(Z0.N64,System.UInt64[])
    IL_0010: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block128`1<System.Byte> Z0.DataBlocks::cells(Z0.N128,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte)
// Block128<byte> cells(N128 n, byte x0, byte x1, byte x2, byte x3, byte x4, byte x5, byte x6, byte x7, byte x8, byte x9, byte xA, byte xB, byte xC, byte xD, byte xE, byte xF)
// AggressiveInlining
Block128<byte> cells(N128 n, byte x0, byte x1, byte x2, byte x3, byte x4, byte x5, byte x6, byte x7, byte x8, byte x9, byte xA, byte xB, byte xC, byte xD, byte xE, byte xF)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.s 16
    IL_0003: newarr System.Byte
    IL_0008: dup
    IL_0009: ldc.i4.0
    IL_000A: ldarg.1
    IL_000B: stelem.i1
    IL_000C: dup
    IL_000D: ldc.i4.1
    IL_000E: ldarg.2
    IL_000F: stelem.i1
    IL_0010: dup
    IL_0011: ldc.i4.2
    IL_0012: ldarg.3
    IL_0013: stelem.i1
    IL_0014: dup
    IL_0015: ldc.i4.3
    IL_0016: ldarg.s x3
    IL_0018: stelem.i1
    IL_0019: dup
    IL_001A: ldc.i4.4
    IL_001B: ldarg.s x4
    IL_001D: stelem.i1
    IL_001E: dup
    IL_001F: ldc.i4.5
    IL_0020: ldarg.s x5
    IL_0022: stelem.i1
    IL_0023: dup
    IL_0024: ldc.i4.6
    IL_0025: ldarg.s x6
    IL_0027: stelem.i1
    IL_0028: dup
    IL_0029: ldc.i4.7
    IL_002A: ldarg.s x7
    IL_002C: stelem.i1
    IL_002D: dup
    IL_002E: ldc.i4.8
    IL_002F: ldarg.s x8
    IL_0031: stelem.i1
    IL_0032: dup
    IL_0033: ldc.i4.s 9
    IL_0035: ldarg.s x9
    IL_0037: stelem.i1
    IL_0038: dup
    IL_0039: ldc.i4.s 10
    IL_003B: ldarg.s xA
    IL_003D: stelem.i1
    IL_003E: dup
    IL_003F: ldc.i4.s 11
    IL_0041: ldarg.s xB
    IL_0043: stelem.i1
    IL_0044: dup
    IL_0045: ldc.i4.s 12
    IL_0047: ldarg.s xC
    IL_0049: stelem.i1
    IL_004A: dup
    IL_004B: ldc.i4.s 13
    IL_004D: ldarg.s xD
    IL_004F: stelem.i1
    IL_0050: dup
    IL_0051: ldc.i4.s 14
    IL_0053: ldarg.s xE
    IL_0055: stelem.i1
    IL_0056: dup
    IL_0057: ldc.i4.s 15
    IL_0059: ldarg.s xF
    IL_005B: stelem.i1
    IL_005C: call Z0.Block128`1<System.Byte> Z0.DataBlocks::parts<System.Byte>(Z0.N128,System.Byte[])
    IL_0061: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block128`1<System.UInt16> Z0.DataBlocks::cells(Z0.N128,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16)
// Block128<ushort> cells(N128 n, ushort x0, ushort x1, ushort x2, ushort x3, ushort x4, ushort x5, ushort x6, ushort x7)
// AggressiveInlining
Block128<ushort> cells(N128 n, ushort x0, ushort x1, ushort x2, ushort x3, ushort x4, ushort x5, ushort x6, ushort x7)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.8
    IL_0002: newarr System.UInt16
    IL_0007: dup
    IL_0008: ldc.i4.0
    IL_0009: ldarg.1
    IL_000A: stelem.i2
    IL_000B: dup
    IL_000C: ldc.i4.1
    IL_000D: ldarg.2
    IL_000E: stelem.i2
    IL_000F: dup
    IL_0010: ldc.i4.2
    IL_0011: ldarg.3
    IL_0012: stelem.i2
    IL_0013: dup
    IL_0014: ldc.i4.3
    IL_0015: ldarg.s x3
    IL_0017: stelem.i2
    IL_0018: dup
    IL_0019: ldc.i4.4
    IL_001A: ldarg.s x4
    IL_001C: stelem.i2
    IL_001D: dup
    IL_001E: ldc.i4.5
    IL_001F: ldarg.s x5
    IL_0021: stelem.i2
    IL_0022: dup
    IL_0023: ldc.i4.6
    IL_0024: ldarg.s x6
    IL_0026: stelem.i2
    IL_0027: dup
    IL_0028: ldc.i4.7
    IL_0029: ldarg.s x7
    IL_002B: stelem.i2
    IL_002C: call Z0.Block128`1<System.UInt16> Z0.DataBlocks::parts<System.UInt16>(Z0.N128,System.UInt16[])
    IL_0031: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block128`1<System.UInt32> Z0.DataBlocks::cells(Z0.N128,System.UInt32,System.UInt32,System.UInt32,System.UInt32)
// Block128<uint> cells(N128 n, uint x0, uint x1, uint x2, uint x3)
// AggressiveInlining
Block128<uint> cells(N128 n, uint x0, uint x1, uint x2, uint x3)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.4
    IL_0002: newarr System.UInt32
    IL_0007: dup
    IL_0008: ldc.i4.0
    IL_0009: ldarg.1
    IL_000A: stelem.i4
    IL_000B: dup
    IL_000C: ldc.i4.1
    IL_000D: ldarg.2
    IL_000E: stelem.i4
    IL_000F: dup
    IL_0010: ldc.i4.2
    IL_0011: ldarg.3
    IL_0012: stelem.i4
    IL_0013: dup
    IL_0014: ldc.i4.3
    IL_0015: ldarg.s x3
    IL_0017: stelem.i4
    IL_0018: call Z0.Block128`1<System.UInt32> Z0.DataBlocks::parts<System.UInt32>(Z0.N128,System.UInt32[])
    IL_001D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block128`1<System.UInt64> Z0.DataBlocks::cells(Z0.N128,System.UInt64,System.UInt64)
// Block128<ulong> cells(N128 n, ulong x0, ulong x1)
// AggressiveInlining
Block128<ulong> cells(N128 n, ulong x0, ulong x1)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.2
    IL_0002: newarr System.UInt64
    IL_0007: dup
    IL_0008: ldc.i4.0
    IL_0009: ldarg.1
    IL_000A: stelem.i8
    IL_000B: dup
    IL_000C: ldc.i4.1
    IL_000D: ldarg.2
    IL_000E: stelem.i8
    IL_000F: call Z0.Block128`1<System.UInt64> Z0.DataBlocks::parts<System.UInt64>(Z0.N128,System.UInt64[])
    IL_0014: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block256`1<System.Byte> Z0.DataBlocks::cells(Z0.N256,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte)
// Block256<byte> cells(N256 n, byte x0, byte x1, byte x2, byte x3, byte x4, byte x5, byte x6, byte x7, byte x8, byte x9, byte xA, byte xB, byte xC, byte xD, byte xE, byte xF, byte x10, byte x11, byte x12, byte x13, byte x14, byte x15, byte x16, byte x17, byte x18, byte x19, byte x1A, byte x1B, byte x1C, byte x1D, byte x1E, byte x1F)
// AggressiveInlining
Block256<byte> cells(N256 n, byte x0, byte x1, byte x2, byte x3, byte x4, byte x5, byte x6, byte x7, byte x8, byte x9, byte xA, byte xB, byte xC, byte xD, byte xE, byte xF, byte x10, byte x11, byte x12, byte x13, byte x14, byte x15, byte x16, byte x17, byte x18, byte x19, byte x1A, byte x1B, byte x1C, byte x1D, byte x1E, byte x1F)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.s 32
    IL_0003: newarr System.Byte
    IL_0008: dup
    IL_0009: ldc.i4.0
    IL_000A: ldarg.1
    IL_000B: stelem.i1
    IL_000C: dup
    IL_000D: ldc.i4.1
    IL_000E: ldarg.2
    IL_000F: stelem.i1
    IL_0010: dup
    IL_0011: ldc.i4.2
    IL_0012: ldarg.3
    IL_0013: stelem.i1
    IL_0014: dup
    IL_0015: ldc.i4.3
    IL_0016: ldarg.s x3
    IL_0018: stelem.i1
    IL_0019: dup
    IL_001A: ldc.i4.4
    IL_001B: ldarg.s x4
    IL_001D: stelem.i1
    IL_001E: dup
    IL_001F: ldc.i4.5
    IL_0020: ldarg.s x5
    IL_0022: stelem.i1
    IL_0023: dup
    IL_0024: ldc.i4.6
    IL_0025: ldarg.s x6
    IL_0027: stelem.i1
    IL_0028: dup
    IL_0029: ldc.i4.7
    IL_002A: ldarg.s x7
    IL_002C: stelem.i1
    IL_002D: dup
    IL_002E: ldc.i4.8
    IL_002F: ldarg.s x8
    IL_0031: stelem.i1
    IL_0032: dup
    IL_0033: ldc.i4.s 9
    IL_0035: ldarg.s x9
    IL_0037: stelem.i1
    IL_0038: dup
    IL_0039: ldc.i4.s 10
    IL_003B: ldarg.s xA
    IL_003D: stelem.i1
    IL_003E: dup
    IL_003F: ldc.i4.s 11
    IL_0041: ldarg.s xB
    IL_0043: stelem.i1
    IL_0044: dup
    IL_0045: ldc.i4.s 12
    IL_0047: ldarg.s xC
    IL_0049: stelem.i1
    IL_004A: dup
    IL_004B: ldc.i4.s 13
    IL_004D: ldarg.s xD
    IL_004F: stelem.i1
    IL_0050: dup
    IL_0051: ldc.i4.s 14
    IL_0053: ldarg.s xE
    IL_0055: stelem.i1
    IL_0056: dup
    IL_0057: ldc.i4.s 15
    IL_0059: ldarg.s xF
    IL_005B: stelem.i1
    IL_005C: dup
    IL_005D: ldc.i4.s 16
    IL_005F: ldarg.s x10
    IL_0061: stelem.i1
    IL_0062: dup
    IL_0063: ldc.i4.s 17
    IL_0065: ldarg.s x11
    IL_0067: stelem.i1
    IL_0068: dup
    IL_0069: ldc.i4.s 18
    IL_006B: ldarg.s x12
    IL_006D: stelem.i1
    IL_006E: dup
    IL_006F: ldc.i4.s 19
    IL_0071: ldarg.s x13
    IL_0073: stelem.i1
    IL_0074: dup
    IL_0075: ldc.i4.s 20
    IL_0077: ldarg.s x14
    IL_0079: stelem.i1
    IL_007A: dup
    IL_007B: ldc.i4.s 21
    IL_007D: ldarg.s x15
    IL_007F: stelem.i1
    IL_0080: dup
    IL_0081: ldc.i4.s 22
    IL_0083: ldarg.s x16
    IL_0085: stelem.i1
    IL_0086: dup
    IL_0087: ldc.i4.s 23
    IL_0089: ldarg.s x17
    IL_008B: stelem.i1
    IL_008C: dup
    IL_008D: ldc.i4.s 24
    IL_008F: ldarg.s x18
    IL_0091: stelem.i1
    IL_0092: dup
    IL_0093: ldc.i4.s 25
    IL_0095: ldarg.s x19
    IL_0097: stelem.i1
    IL_0098: dup
    IL_0099: ldc.i4.s 26
    IL_009B: ldarg.s x1A
    IL_009D: stelem.i1
    IL_009E: dup
    IL_009F: ldc.i4.s 27
    IL_00A1: ldarg.s x1B
    IL_00A3: stelem.i1
    IL_00A4: dup
    IL_00A5: ldc.i4.s 28
    IL_00A7: ldarg.s x1C
    IL_00A9: stelem.i1
    IL_00AA: dup
    IL_00AB: ldc.i4.s 29
    IL_00AD: ldarg.s x1D
    IL_00AF: stelem.i1
    IL_00B0: dup
    IL_00B1: ldc.i4.s 30
    IL_00B3: ldarg.s x1E
    IL_00B5: stelem.i1
    IL_00B6: dup
    IL_00B7: ldc.i4.s 31
    IL_00B9: ldarg.s x1F
    IL_00BB: stelem.i1
    IL_00BC: call Z0.Block256`1<System.Byte> Z0.DataBlocks::parts<System.Byte>(Z0.N256,System.Byte[])
    IL_00C1: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block256`1<System.UInt16> Z0.DataBlocks::cells(Z0.N256,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16)
// Block256<ushort> cells(N256 n, ushort x0, ushort x1, ushort x2, ushort x3, ushort x4, ushort x5, ushort x6, ushort x7, ushort x8, ushort x9, ushort xA, ushort xB, ushort xC, ushort xD, ushort xE, ushort xF)
// AggressiveInlining
Block256<ushort> cells(N256 n, ushort x0, ushort x1, ushort x2, ushort x3, ushort x4, ushort x5, ushort x6, ushort x7, ushort x8, ushort x9, ushort xA, ushort xB, ushort xC, ushort xD, ushort xE, ushort xF)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.s 16
    IL_0003: newarr System.UInt16
    IL_0008: dup
    IL_0009: ldc.i4.0
    IL_000A: ldarg.1
    IL_000B: stelem.i2
    IL_000C: dup
    IL_000D: ldc.i4.1
    IL_000E: ldarg.2
    IL_000F: stelem.i2
    IL_0010: dup
    IL_0011: ldc.i4.2
    IL_0012: ldarg.3
    IL_0013: stelem.i2
    IL_0014: dup
    IL_0015: ldc.i4.3
    IL_0016: ldarg.s x3
    IL_0018: stelem.i2
    IL_0019: dup
    IL_001A: ldc.i4.4
    IL_001B: ldarg.s x4
    IL_001D: stelem.i2
    IL_001E: dup
    IL_001F: ldc.i4.5
    IL_0020: ldarg.s x5
    IL_0022: stelem.i2
    IL_0023: dup
    IL_0024: ldc.i4.6
    IL_0025: ldarg.s x6
    IL_0027: stelem.i2
    IL_0028: dup
    IL_0029: ldc.i4.7
    IL_002A: ldarg.s x7
    IL_002C: stelem.i2
    IL_002D: dup
    IL_002E: ldc.i4.8
    IL_002F: ldarg.s x8
    IL_0031: stelem.i2
    IL_0032: dup
    IL_0033: ldc.i4.s 9
    IL_0035: ldarg.s x9
    IL_0037: stelem.i2
    IL_0038: dup
    IL_0039: ldc.i4.s 10
    IL_003B: ldarg.s xA
    IL_003D: stelem.i2
    IL_003E: dup
    IL_003F: ldc.i4.s 11
    IL_0041: ldarg.s xB
    IL_0043: stelem.i2
    IL_0044: dup
    IL_0045: ldc.i4.s 12
    IL_0047: ldarg.s xC
    IL_0049: stelem.i2
    IL_004A: dup
    IL_004B: ldc.i4.s 13
    IL_004D: ldarg.s xD
    IL_004F: stelem.i2
    IL_0050: dup
    IL_0051: ldc.i4.s 14
    IL_0053: ldarg.s xE
    IL_0055: stelem.i2
    IL_0056: dup
    IL_0057: ldc.i4.s 15
    IL_0059: ldarg.s xF
    IL_005B: stelem.i2
    IL_005C: call Z0.Block256`1<System.UInt16> Z0.DataBlocks::parts<System.UInt16>(Z0.N256,System.UInt16[])
    IL_0061: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block256`1<System.UInt32> Z0.DataBlocks::cells(Z0.N256,System.UInt32,System.UInt32,System.UInt32,System.UInt32,System.UInt32,System.UInt32,System.UInt32,System.UInt32)
// Block256<uint> cells(N256 n, uint x0, uint x1, uint x2, uint x3, uint x4, uint x5, uint x6, uint x7)
// AggressiveInlining
Block256<uint> cells(N256 n, uint x0, uint x1, uint x2, uint x3, uint x4, uint x5, uint x6, uint x7)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.8
    IL_0002: newarr System.UInt32
    IL_0007: dup
    IL_0008: ldc.i4.0
    IL_0009: ldarg.1
    IL_000A: stelem.i4
    IL_000B: dup
    IL_000C: ldc.i4.1
    IL_000D: ldarg.2
    IL_000E: stelem.i4
    IL_000F: dup
    IL_0010: ldc.i4.2
    IL_0011: ldarg.3
    IL_0012: stelem.i4
    IL_0013: dup
    IL_0014: ldc.i4.3
    IL_0015: ldarg.s x3
    IL_0017: stelem.i4
    IL_0018: dup
    IL_0019: ldc.i4.4
    IL_001A: ldarg.s x4
    IL_001C: stelem.i4
    IL_001D: dup
    IL_001E: ldc.i4.5
    IL_001F: ldarg.s x5
    IL_0021: stelem.i4
    IL_0022: dup
    IL_0023: ldc.i4.6
    IL_0024: ldarg.s x6
    IL_0026: stelem.i4
    IL_0027: dup
    IL_0028: ldc.i4.7
    IL_0029: ldarg.s x7
    IL_002B: stelem.i4
    IL_002C: call Z0.Block256`1<System.UInt32> Z0.DataBlocks::parts<System.UInt32>(Z0.N256,System.UInt32[])
    IL_0031: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block256`1<System.UInt64> Z0.DataBlocks::cells(Z0.N256,System.UInt64,System.UInt64,System.UInt64,System.UInt64)
// Block256<ulong> cells(N256 n, ulong x0, ulong x1, ulong x2, ulong x3)
// AggressiveInlining
Block256<ulong> cells(N256 n, ulong x0, ulong x1, ulong x2, ulong x3)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.4
    IL_0002: newarr System.UInt64
    IL_0007: dup
    IL_0008: ldc.i4.0
    IL_0009: ldarg.1
    IL_000A: stelem.i8
    IL_000B: dup
    IL_000C: ldc.i4.1
    IL_000D: ldarg.2
    IL_000E: stelem.i8
    IL_000F: dup
    IL_0010: ldc.i4.2
    IL_0011: ldarg.3
    IL_0012: stelem.i8
    IL_0013: dup
    IL_0014: ldc.i4.3
    IL_0015: ldarg.s x3
    IL_0017: stelem.i8
    IL_0018: call Z0.Block256`1<System.UInt64> Z0.DataBlocks::parts<System.UInt64>(Z0.N256,System.UInt64[])
    IL_001D: ret
}
------------------------------------------------------------------------------------------------------------------------
