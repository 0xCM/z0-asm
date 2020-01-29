// System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.CpuVector::vparts(Z0.N128,System.UInt64,System.UInt64)
// Vector128<ulong> vparts(N128 w, ulong x0, ulong x1)
// AggressiveInlining
Vector128<ulong> vparts(N128 w, ulong x0, ulong x1)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.2
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> System.Runtime.Intrinsics.Vector128::Create(System.UInt64,System.UInt64)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.CpuVector::vparts(Z0.N256,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte)
// Vector256<byte> vparts(N256 w, byte x0, byte x1, byte x2, byte x3, byte x4, byte x5, byte x6, byte x7, byte x8, byte x9, byte xa, byte xb, byte xc, byte xd, byte xe, byte xf, byte x10, byte x11, byte x12, byte x13, byte x14, byte x15, byte x16, byte x17, byte x18, byte x19, byte x1a, byte x1b, byte x1c, byte x1d, byte x1e, byte x1f)
// AggressiveInlining
Vector256<byte> vparts(N256 w, byte x0, byte x1, byte x2, byte x3, byte x4, byte x5, byte x6, byte x7, byte x8, byte x9, byte xa, byte xb, byte xc, byte xd, byte xe, byte xf, byte x10, byte x11, byte x12, byte x13, byte x14, byte x15, byte x16, byte x17, byte x18, byte x19, byte x1a, byte x1b, byte x1c, byte x1d, byte x1e, byte x1f)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.2
    IL_0002: ldarg.3
    IL_0003: ldarg.s x3
    IL_0005: ldarg.s x4
    IL_0007: ldarg.s x5
    IL_0009: ldarg.s x6
    IL_000B: ldarg.s x7
    IL_000D: ldarg.s x8
    IL_000F: ldarg.s x9
    IL_0011: ldarg.s xa
    IL_0013: ldarg.s xb
    IL_0015: ldarg.s xc
    IL_0017: ldarg.s xd
    IL_0019: ldarg.s xe
    IL_001B: ldarg.s xf
    IL_001D: ldarg.s x10
    IL_001F: ldarg.s x11
    IL_0021: ldarg.s x12
    IL_0023: ldarg.s x13
    IL_0025: ldarg.s x14
    IL_0027: ldarg.s x15
    IL_0029: ldarg.s x16
    IL_002B: ldarg.s x17
    IL_002D: ldarg.s x18
    IL_002F: ldarg.s x19
    IL_0031: ldarg.s x1a
    IL_0033: ldarg.s x1b
    IL_0035: ldarg.s x1c
    IL_0037: ldarg.s x1d
    IL_0039: ldarg.s x1e
    IL_003B: ldarg.s x1f
    IL_003D: call System.Runtime.Intrinsics.Vector256`1<System.Byte> System.Runtime.Intrinsics.Vector256::Create(System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte)
    IL_0042: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.CpuVector::vparts(Z0.N256,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16)
// Vector256<ushort> vparts(N256 w, ushort x0, ushort x1, ushort x2, ushort x3, ushort x4, ushort x5, ushort x6, ushort x7, ushort x8, ushort x9, ushort xA, ushort xB, ushort xC, ushort xD, ushort xE, ushort xF)
// AggressiveInlining
Vector256<ushort> vparts(N256 w, ushort x0, ushort x1, ushort x2, ushort x3, ushort x4, ushort x5, ushort x6, ushort x7, ushort x8, ushort x9, ushort xA, ushort xB, ushort xC, ushort xD, ushort xE, ushort xF)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.2
    IL_0002: ldarg.3
    IL_0003: ldarg.s x3
    IL_0005: ldarg.s x4
    IL_0007: ldarg.s x5
    IL_0009: ldarg.s x6
    IL_000B: ldarg.s x7
    IL_000D: ldarg.s x8
    IL_000F: ldarg.s x9
    IL_0011: ldarg.s xA
    IL_0013: ldarg.s xB
    IL_0015: ldarg.s xC
    IL_0017: ldarg.s xD
    IL_0019: ldarg.s xE
    IL_001B: ldarg.s xF
    IL_001D: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> System.Runtime.Intrinsics.Vector256::Create(System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16)
    IL_0022: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.CpuVector::vparts(Z0.N256,System.UInt32,System.UInt32,System.UInt32,System.UInt32,System.UInt32,System.UInt32,System.UInt32,System.UInt32)
// Vector256<uint> vparts(N256 w, uint x0, uint x1, uint x2, uint x3, uint x4, uint x5, uint x6, uint x7)
// AggressiveInlining
Vector256<uint> vparts(N256 w, uint x0, uint x1, uint x2, uint x3, uint x4, uint x5, uint x6, uint x7)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.2
    IL_0002: ldarg.3
    IL_0003: ldarg.s x3
    IL_0005: ldarg.s x4
    IL_0007: ldarg.s x5
    IL_0009: ldarg.s x6
    IL_000B: ldarg.s x7
    IL_000D: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> System.Runtime.Intrinsics.Vector256::Create(System.UInt32,System.UInt32,System.UInt32,System.UInt32,System.UInt32,System.UInt32,System.UInt32,System.UInt32)
    IL_0012: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.CpuVector::vparts(Z0.N256,System.UInt64,System.UInt64,System.UInt64,System.UInt64)
// Vector256<ulong> vparts(N256 w, ulong x0, ulong x1, ulong x2, ulong x3)
// AggressiveInlining
Vector256<ulong> vparts(N256 w, ulong x0, ulong x1, ulong x2, ulong x3)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.2
    IL_0002: ldarg.3
    IL_0003: ldarg.s x3
    IL_0005: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> System.Runtime.Intrinsics.Vector256::Create(System.UInt64,System.UInt64,System.UInt64,System.UInt64)
    IL_000A: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector512`1<System.UInt16> Z0.CpuVector::vparts(Z0.N512,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16)
// Vector512<ushort> vparts(N512 w, ushort x0, ushort x1, ushort x2, ushort x3, ushort x4, ushort x5, ushort x6, ushort x7, ushort x8, ushort x9, ushort x10, ushort x11, ushort x12, ushort x13, ushort x14, ushort x15, ushort x16, ushort x17, ushort x18, ushort x19, ushort x20, ushort x21, ushort x22, ushort x23, ushort x24, ushort x25, ushort x26, ushort x27, ushort x28, ushort x29, ushort x30, ushort x31)
// AggressiveInlining
Vector512<ushort> vparts(N512 w, ushort x0, ushort x1, ushort x2, ushort x3, ushort x4, ushort x5, ushort x6, ushort x7, ushort x8, ushort x9, ushort x10, ushort x11, ushort x12, ushort x13, ushort x14, ushort x15, ushort x16, ushort x17, ushort x18, ushort x19, ushort x20, ushort x21, ushort x22, ushort x23, ushort x24, ushort x25, ushort x26, ushort x27, ushort x28, ushort x29, ushort x30, ushort x31)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.2
    IL_0002: ldarg.3
    IL_0003: ldarg.s x3
    IL_0005: ldarg.s x4
    IL_0007: ldarg.s x5
    IL_0009: ldarg.s x6
    IL_000B: ldarg.s x7
    IL_000D: ldarg.s x8
    IL_000F: ldarg.s x9
    IL_0011: ldarg.s x10
    IL_0013: ldarg.s x11
    IL_0015: ldarg.s x12
    IL_0017: ldarg.s x13
    IL_0019: ldarg.s x14
    IL_001B: ldarg.s x15
    IL_001D: ldarg.s x16
    IL_001F: ldarg.s x17
    IL_0021: ldarg.s x18
    IL_0023: ldarg.s x19
    IL_0025: ldarg.s x20
    IL_0027: ldarg.s x21
    IL_0029: ldarg.s x22
    IL_002B: ldarg.s x23
    IL_002D: ldarg.s x24
    IL_002F: ldarg.s x25
    IL_0031: ldarg.s x26
    IL_0033: ldarg.s x27
    IL_0035: ldarg.s x28
    IL_0037: ldarg.s x29
    IL_0039: ldarg.s x30
    IL_003B: ldarg.s x31
    IL_003D: call Z0.Vector512`1<System.UInt16> Z0.Vector512::Create(System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16)
    IL_0042: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector512`1<System.UInt32> Z0.CpuVector::vparts(Z0.N512,System.UInt32,System.UInt32,System.UInt32,System.UInt32,System.UInt32,System.UInt32,System.UInt32,System.UInt32,System.UInt32,System.UInt32,System.UInt32,System.UInt32,System.UInt32,System.UInt32,System.UInt32,System.UInt32)
// Vector512<uint> vparts(N512 w, uint x0, uint x1, uint x2, uint x3, uint x4, uint x5, uint x6, uint x7, uint x8, uint x9, uint x10, uint x11, uint x12, uint x13, uint x14, uint x15)
// AggressiveInlining
Vector512<uint> vparts(N512 w, uint x0, uint x1, uint x2, uint x3, uint x4, uint x5, uint x6, uint x7, uint x8, uint x9, uint x10, uint x11, uint x12, uint x13, uint x14, uint x15)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.2
    IL_0002: ldarg.3
    IL_0003: ldarg.s x3
    IL_0005: ldarg.s x4
    IL_0007: ldarg.s x5
    IL_0009: ldarg.s x6
    IL_000B: ldarg.s x7
    IL_000D: ldarg.s x8
    IL_000F: ldarg.s x9
    IL_0011: ldarg.s x10
    IL_0013: ldarg.s x11
    IL_0015: ldarg.s x12
    IL_0017: ldarg.s x13
    IL_0019: ldarg.s x14
    IL_001B: ldarg.s x15
    IL_001D: call Z0.Vector512`1<System.UInt32> Z0.Vector512::Create(System.UInt32,System.UInt32,System.UInt32,System.UInt32,System.UInt32,System.UInt32,System.UInt32,System.UInt32,System.UInt32,System.UInt32,System.UInt32,System.UInt32,System.UInt32,System.UInt32,System.UInt32,System.UInt32)
    IL_0022: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector512`1<System.UInt64> Z0.CpuVector::vparts(Z0.N512,System.UInt64,System.UInt64,System.UInt64,System.UInt64,System.UInt64,System.UInt64,System.UInt64,System.UInt64)
// Vector512<ulong> vparts(N512 w, ulong x0, ulong x1, ulong x2, ulong x3, ulong x4, ulong x5, ulong x6, ulong x7)
// AggressiveInlining
Vector512<ulong> vparts(N512 w, ulong x0, ulong x1, ulong x2, ulong x3, ulong x4, ulong x5, ulong x6, ulong x7)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.2
    IL_0002: ldarg.3
    IL_0003: ldarg.s x3
    IL_0005: ldarg.s x4
    IL_0007: ldarg.s x5
    IL_0009: ldarg.s x6
    IL_000B: ldarg.s x7
    IL_000D: call Z0.Vector512`1<System.UInt64> Z0.Vector512::Create(System.UInt64,System.UInt64,System.UInt64,System.UInt64,System.UInt64,System.UInt64,System.UInt64,System.UInt64)
    IL_0012: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.CpuVector::vparts(Z0.N128,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte)
// Vector128<byte> vparts(N128 w, byte x0, byte x1, byte x2, byte x3, byte x4, byte x5, byte x6, byte x7, byte x8, byte x9, byte xa, byte xb, byte xc, byte xd, byte xe, byte xf)
// AggressiveInlining
Vector128<byte> vparts(N128 w, byte x0, byte x1, byte x2, byte x3, byte x4, byte x5, byte x6, byte x7, byte x8, byte x9, byte xa, byte xb, byte xc, byte xd, byte xe, byte xf)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.2
    IL_0002: ldarg.3
    IL_0003: ldarg.s x3
    IL_0005: ldarg.s x4
    IL_0007: ldarg.s x5
    IL_0009: ldarg.s x6
    IL_000B: ldarg.s x7
    IL_000D: ldarg.s x8
    IL_000F: ldarg.s x9
    IL_0011: ldarg.s xa
    IL_0013: ldarg.s xb
    IL_0015: ldarg.s xc
    IL_0017: ldarg.s xd
    IL_0019: ldarg.s xe
    IL_001B: ldarg.s xf
    IL_001D: call System.Runtime.Intrinsics.Vector128`1<System.Byte> System.Runtime.Intrinsics.Vector128::Create(System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte,System.Byte)
    IL_0022: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.CpuVector::vparts(Z0.N128,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16)
// Vector128<ushort> vparts(N128 w, ushort x0, ushort x1, ushort x2, ushort x3, ushort x4, ushort x5, ushort x6, ushort x7)
// AggressiveInlining
Vector128<ushort> vparts(N128 w, ushort x0, ushort x1, ushort x2, ushort x3, ushort x4, ushort x5, ushort x6, ushort x7)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.2
    IL_0002: ldarg.3
    IL_0003: ldarg.s x3
    IL_0005: ldarg.s x4
    IL_0007: ldarg.s x5
    IL_0009: ldarg.s x6
    IL_000B: ldarg.s x7
    IL_000D: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> System.Runtime.Intrinsics.Vector128::Create(System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16)
    IL_0012: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.CpuVector::vparts(Z0.N128,System.UInt32,System.UInt32,System.UInt32,System.UInt32)
// Vector128<uint> vparts(N128 w, uint x0, uint x1, uint x2, uint x3)
// AggressiveInlining
Vector128<uint> vparts(N128 w, uint x0, uint x1, uint x2, uint x3)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.2
    IL_0002: ldarg.3
    IL_0003: ldarg.s x3
    IL_0005: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> System.Runtime.Intrinsics.Vector128::Create(System.UInt32,System.UInt32,System.UInt32,System.UInt32)
    IL_000A: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.CpuVector::vparts(System.UInt32,System.UInt32,System.UInt32,System.UInt32)
// Vector128<uint> vparts(uint x0, uint x1, uint x2, uint x3)
// AggressiveInlining
Vector128<uint> vparts(uint x0, uint x1, uint x2, uint x3)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: ldarg.3
    IL_0004: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> System.Runtime.Intrinsics.Vector128::Create(System.UInt32,System.UInt32,System.UInt32,System.UInt32)
    IL_0009: ret
}
------------------------------------------------------------------------------------------------------------------------
