// System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<byte> vsllr(Vector128<byte> src, Vector128<byte> count)
// AggressiveInlining
Vector128<byte> vsllr(Vector128<byte> src, Vector128<byte> count)
{
    IL_0000: ldarg.1
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> zfunc::v16u<System.Byte>(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0006: stloc.0
    IL_0007: ldarg.0
    IL_0008: call Z0.N256 zfunc::get_n256()
    IL_000D: ldc.i4.0
    IL_000E: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.Byte>,Z0.N256,System.UInt16)
    IL_0013: ldloc.0
    IL_0014: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0019: stloc.1
    IL_001A: ldloc.1
    IL_001B: call Z0.N128 zfunc::get_n128()
    IL_0020: ldc.i4.0
    IL_0021: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,Z0.N128,System.Byte)
    IL_0026: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
// Vector128<sbyte> vsllr(Vector128<sbyte> src, Vector128<sbyte> count)
// AggressiveInlining
Vector128<sbyte> vsllr(Vector128<sbyte> src, Vector128<sbyte> count)
{
    IL_0000: ldarg.1
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Int16> zfunc::v16i<System.SByte>(System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0006: stloc.0
    IL_0007: ldarg.0
    IL_0008: call Z0.N256 zfunc::get_n256()
    IL_000D: ldc.i4.0
    IL_000E: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.SByte>,Z0.N256,System.Int16)
    IL_0013: ldloc.0
    IL_0014: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0019: stloc.1
    IL_001A: ldloc.1
    IL_001B: call Z0.N128 zfunc::get_n128()
    IL_0020: ldc.i4.0
    IL_0021: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.Int16>,Z0.N128,System.SByte)
    IL_0026: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
// Vector128<short> vsllr(Vector128<short> src, Vector128<short> count)
// AggressiveInlining
Vector128<short> vsllr(Vector128<short> src, Vector128<short> count)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Int16> System.Runtime.Intrinsics.X86.Sse2::ShiftLeftLogical(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
// Vector128<ushort> vsllr(Vector128<ushort> src, Vector128<ushort> count)
// AggressiveInlining
Vector128<ushort> vsllr(Vector128<ushort> src, Vector128<ushort> count)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> System.Runtime.Intrinsics.X86.Sse2::ShiftLeftLogical(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
// Vector128<int> vsllr(Vector128<int> src, Vector128<int> count)
// AggressiveInlining
Vector128<int> vsllr(Vector128<int> src, Vector128<int> count)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Int32> System.Runtime.Intrinsics.X86.Sse2::ShiftLeftLogical(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
// Vector128<uint> vsllr(Vector128<uint> src, Vector128<uint> count)
// AggressiveInlining
Vector128<uint> vsllr(Vector128<uint> src, Vector128<uint> count)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> System.Runtime.Intrinsics.X86.Sse2::ShiftLeftLogical(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>)
// Vector128<long> vsllr(Vector128<long> src, Vector128<long> count)
// AggressiveInlining
Vector128<long> vsllr(Vector128<long> src, Vector128<long> count)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Int64> System.Runtime.Intrinsics.X86.Sse2::ShiftLeftLogical(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
// Vector128<ulong> vsllr(Vector128<ulong> src, Vector128<ulong> count)
// AggressiveInlining
Vector128<ulong> vsllr(Vector128<ulong> src, Vector128<ulong> count)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> System.Runtime.Intrinsics.X86.Sse2::ShiftLeftLogical(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
// Vector256<sbyte> vsllr(Vector256<sbyte> src, Vector128<sbyte> count)
// AggressiveInlining
Vector256<sbyte> vsllr(Vector256<sbyte> src, Vector128<sbyte> count)
{
    IL_0000: ldarg.1
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Int16> zfunc::v16i<System.SByte>(System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0006: stloc.0
    IL_0007: ldarg.0
    IL_0008: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.SByte>)
    IL_000D: call Z0.N256 zfunc::get_n256()
    IL_0012: ldc.i4.0
    IL_0013: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.SByte>,Z0.N256,System.Int16)
    IL_0018: ldloc.0
    IL_0019: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_001E: stloc.1
    IL_001F: ldarg.0
    IL_0020: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector256`1<System.SByte>)
    IL_0025: call Z0.N256 zfunc::get_n256()
    IL_002A: ldc.i4.0
    IL_002B: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.SByte>,Z0.N256,System.Int16)
    IL_0030: ldloc.0
    IL_0031: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0036: stloc.2
    IL_0037: ldloc.1
    IL_0038: ldloc.2
    IL_0039: call Z0.N256 zfunc::get_n256()
    IL_003E: ldc.i4.0
    IL_003F: call System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>,Z0.N256,System.SByte)
    IL_0044: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector256<byte> vsllr(Vector256<byte> src, Vector128<byte> count)
// AggressiveInlining
Vector256<byte> vsllr(Vector256<byte> src, Vector128<byte> count)
{
    IL_0000: ldarg.1
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> zfunc::v16u<System.Byte>(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0006: stloc.0
    IL_0007: ldarg.0
    IL_0008: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_000D: call Z0.N256 zfunc::get_n256()
    IL_0012: ldc.i4.0
    IL_0013: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.Byte>,Z0.N256,System.UInt16)
    IL_0018: ldloc.0
    IL_0019: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_001E: stloc.1
    IL_001F: ldarg.0
    IL_0020: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0025: call Z0.N256 zfunc::get_n256()
    IL_002A: ldc.i4.0
    IL_002B: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.Byte>,Z0.N256,System.UInt16)
    IL_0030: ldloc.0
    IL_0031: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0036: stloc.2
    IL_0037: ldloc.1
    IL_0038: ldloc.2
    IL_0039: call Z0.N256 zfunc::get_n256()
    IL_003E: ldc.i4.0
    IL_003F: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>,Z0.N256,System.Byte)
    IL_0044: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
// Vector256<short> vsllr(Vector256<short> src, Vector128<short> count)
// AggressiveInlining
Vector256<short> vsllr(Vector256<short> src, Vector128<short> count)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Int16> System.Runtime.Intrinsics.X86.Avx2::ShiftLeftLogical(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
// Vector256<ushort> vsllr(Vector256<ushort> src, Vector128<ushort> count)
// AggressiveInlining
Vector256<ushort> vsllr(Vector256<ushort> src, Vector128<ushort> count)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> System.Runtime.Intrinsics.X86.Avx2::ShiftLeftLogical(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
// Vector256<int> vsllr(Vector256<int> src, Vector128<int> count)
// AggressiveInlining
Vector256<int> vsllr(Vector256<int> src, Vector128<int> count)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::ShiftLeftLogical(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
// Vector256<uint> vsllr(Vector256<uint> src, Vector128<uint> count)
// AggressiveInlining
Vector256<uint> vsllr(Vector256<uint> src, Vector128<uint> count)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::ShiftLeftLogical(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>)
// Vector256<long> vsllr(Vector256<long> src, Vector128<long> count)
// AggressiveInlining
Vector256<long> vsllr(Vector256<long> src, Vector128<long> count)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::ShiftLeftLogical(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
// Vector256<ulong> vsllr(Vector256<ulong> src, Vector128<ulong> count)
// AggressiveInlining
Vector256<ulong> vsllr(Vector256<ulong> src, Vector128<ulong> count)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> System.Runtime.Intrinsics.X86.Avx2::ShiftLeftLogical(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.SByte)
// Vector128<sbyte> vsllr(Vector128<sbyte> src, sbyte count)
// AggressiveInlining
Vector128<sbyte> vsllr(Vector128<sbyte> src, sbyte count)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vscalar(Z0.N128,System.SByte)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Byte)
// Vector128<byte> vsllr(Vector128<byte> src, byte count)
// AggressiveInlining
Vector128<byte> vsllr(Vector128<byte> src, byte count)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vscalar(Z0.N128,System.Byte)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Int16)
// Vector128<short> vsllr(Vector128<short> src, short count)
// AggressiveInlining
Vector128<short> vsllr(Vector128<short> src, short count)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vscalar(Z0.N128,System.Int16)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.UInt16)
// Vector128<ushort> vsllr(Vector128<ushort> src, ushort count)
// AggressiveInlining
Vector128<ushort> vsllr(Vector128<ushort> src, ushort count)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vscalar(Z0.N128,System.UInt16)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Int32)
// Vector128<int> vsllr(Vector128<int> src, int count)
// AggressiveInlining
Vector128<int> vsllr(Vector128<int> src, int count)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vscalar(Z0.N128,System.Int32)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.UInt32)
// Vector128<uint> vsllr(Vector128<uint> src, uint count)
// AggressiveInlining
Vector128<uint> vsllr(Vector128<uint> src, uint count)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vscalar(Z0.N128,System.UInt32)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Int64)
// Vector128<long> vsllr(Vector128<long> src, long count)
// AggressiveInlining
Vector128<long> vsllr(Vector128<long> src, long count)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vscalar(Z0.N128,System.Int64)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.UInt64)
// Vector128<ulong> vsllr(Vector128<ulong> src, ulong count)
// AggressiveInlining
Vector128<ulong> vsllr(Vector128<ulong> src, ulong count)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vscalar(Z0.N128,System.UInt64)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.SByte)
// Vector256<sbyte> vsllr(Vector256<sbyte> src, sbyte count)
// AggressiveInlining
Vector256<sbyte> vsllr(Vector256<sbyte> src, sbyte count)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vscalar(Z0.N128,System.SByte)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Byte)
// Vector256<byte> vsllr(Vector256<byte> src, byte count)
// AggressiveInlining
Vector256<byte> vsllr(Vector256<byte> src, byte count)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vscalar(Z0.N128,System.Byte)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Int16)
// Vector256<short> vsllr(Vector256<short> src, short count)
// AggressiveInlining
Vector256<short> vsllr(Vector256<short> src, short count)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vscalar(Z0.N128,System.Int16)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.UInt16)
// Vector256<ushort> vsllr(Vector256<ushort> src, ushort count)
// AggressiveInlining
Vector256<ushort> vsllr(Vector256<ushort> src, ushort count)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vscalar(Z0.N128,System.UInt16)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Int32)
// Vector256<int> vsllr(Vector256<int> src, int count)
// AggressiveInlining
Vector256<int> vsllr(Vector256<int> src, int count)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vscalar(Z0.N128,System.Int32)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.UInt32)
// Vector256<uint> vsllr(Vector256<uint> src, uint count)
// AggressiveInlining
Vector256<uint> vsllr(Vector256<uint> src, uint count)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vscalar(Z0.N128,System.UInt32)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Int64)
// Vector256<long> vsllr(Vector256<long> src, long count)
// AggressiveInlining
Vector256<long> vsllr(Vector256<long> src, long count)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vscalar(Z0.N128,System.Int64)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.UInt64)
// Vector256<ulong> vsllr(Vector256<ulong> src, ulong count)
// AggressiveInlining
Vector256<ulong> vsllr(Vector256<ulong> src, ulong count)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vscalar(Z0.N128,System.UInt64)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
