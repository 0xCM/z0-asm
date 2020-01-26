// Id := 100664385, Name := System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<byte> vsrlr(Vector128<byte> src, Vector128<byte> count)
// AggressiveInlining
Vector128<byte> vsrlr(Vector128<byte> src, Vector128<byte> count)
{
    IL_0000: ldarg.1
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> zfunc::v16u<System.Byte>(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0006: stloc.0
    IL_0007: ldarg.0
    IL_0008: call Z0.N256 zfunc::get_n256()
    IL_000D: ldc.i4.0
    IL_000E: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.Byte>,Z0.N256,System.UInt16)
    IL_0013: ldloc.0
    IL_0014: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0019: stloc.1
    IL_001A: ldloc.1
    IL_001B: call Z0.N128 zfunc::get_n128()
    IL_0020: ldc.i4.0
    IL_0021: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,Z0.N128,System.Byte)
    IL_0026: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664386, Name := System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
// Vector128<sbyte> vsrlr(Vector128<sbyte> src, Vector128<sbyte> count)
// AggressiveInlining
Vector128<sbyte> vsrlr(Vector128<sbyte> src, Vector128<sbyte> count)
{
    IL_0000: ldarg.1
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Int16> zfunc::v16i<System.SByte>(System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0006: stloc.0
    IL_0007: ldarg.0
    IL_0008: call Z0.N256 zfunc::get_n256()
    IL_000D: ldc.i4.0
    IL_000E: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.SByte>,Z0.N256,System.Int16)
    IL_0013: ldloc.0
    IL_0014: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0019: stloc.1
    IL_001A: ldloc.1
    IL_001B: call Z0.N128 zfunc::get_n128()
    IL_0020: ldc.i4.0
    IL_0021: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.Int16>,Z0.N128,System.SByte)
    IL_0026: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664387, Name := System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
// Vector128<Int16> vsrlr(Vector128<Int16> src, Vector128<Int16> count)
// AggressiveInlining
Vector128<Int16> vsrlr(Vector128<Int16> src, Vector128<Int16> count)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Int16> System.Runtime.Intrinsics.X86.Sse2::ShiftRightLogical(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664388, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
// Vector128<ushort> vsrlr(Vector128<ushort> src, Vector128<ushort> count)
// AggressiveInlining
Vector128<ushort> vsrlr(Vector128<ushort> src, Vector128<ushort> count)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> System.Runtime.Intrinsics.X86.Sse2::ShiftRightLogical(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664389, Name := System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
// Vector128<int> vsrlr(Vector128<int> src, Vector128<int> count)
// AggressiveInlining
Vector128<int> vsrlr(Vector128<int> src, Vector128<int> count)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Int32> System.Runtime.Intrinsics.X86.Sse2::ShiftRightLogical(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664390, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
// Vector128<uint> vsrlr(Vector128<uint> src, Vector128<uint> count)
// AggressiveInlining
Vector128<uint> vsrlr(Vector128<uint> src, Vector128<uint> count)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> System.Runtime.Intrinsics.X86.Sse2::ShiftRightLogical(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664391, Name := System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>)
// Vector128<long> vsrlr(Vector128<long> src, Vector128<long> count)
// AggressiveInlining
Vector128<long> vsrlr(Vector128<long> src, Vector128<long> count)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Int64> System.Runtime.Intrinsics.X86.Sse2::ShiftRightLogical(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664392, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
// Vector128<ulong> vsrlr(Vector128<ulong> src, Vector128<ulong> count)
// AggressiveInlining
Vector128<ulong> vsrlr(Vector128<ulong> src, Vector128<ulong> count)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> System.Runtime.Intrinsics.X86.Sse2::ShiftRightLogical(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664393, Name := System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
// Vector256<sbyte> vsrlr(Vector256<sbyte> src, Vector128<sbyte> count)
// AggressiveInlining
Vector256<sbyte> vsrlr(Vector256<sbyte> src, Vector128<sbyte> count)
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
    IL_0019: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_001E: stloc.1
    IL_001F: ldarg.0
    IL_0020: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector256`1<System.SByte>)
    IL_0025: call Z0.N256 zfunc::get_n256()
    IL_002A: ldc.i4.0
    IL_002B: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.SByte>,Z0.N256,System.Int16)
    IL_0030: ldloc.0
    IL_0031: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0036: stloc.2
    IL_0037: ldloc.1
    IL_0038: ldloc.2
    IL_0039: call Z0.N256 zfunc::get_n256()
    IL_003E: ldc.i4.0
    IL_003F: call System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>,Z0.N256,System.SByte)
    IL_0044: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664394, Name := System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector256<byte> vsrlr(Vector256<byte> src, Vector128<byte> count)
// AggressiveInlining
Vector256<byte> vsrlr(Vector256<byte> src, Vector128<byte> count)
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
    IL_0019: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_001E: stloc.1
    IL_001F: ldarg.0
    IL_0020: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0025: call Z0.N256 zfunc::get_n256()
    IL_002A: ldc.i4.0
    IL_002B: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.Byte>,Z0.N256,System.UInt16)
    IL_0030: ldloc.0
    IL_0031: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0036: stloc.2
    IL_0037: ldloc.1
    IL_0038: ldloc.2
    IL_0039: call Z0.N256 zfunc::get_n256()
    IL_003E: ldc.i4.0
    IL_003F: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>,Z0.N256,System.Byte)
    IL_0044: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664395, Name := System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
// Vector256<Int16> vsrlr(Vector256<Int16> src, Vector128<Int16> count)
// AggressiveInlining
Vector256<Int16> vsrlr(Vector256<Int16> src, Vector128<Int16> count)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Int16> System.Runtime.Intrinsics.X86.Avx2::ShiftRightLogical(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664396, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
// Vector256<ushort> vsrlr(Vector256<ushort> src, Vector128<ushort> count)
// AggressiveInlining
Vector256<ushort> vsrlr(Vector256<ushort> src, Vector128<ushort> count)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> System.Runtime.Intrinsics.X86.Avx2::ShiftRightLogical(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664397, Name := System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
// Vector256<int> vsrlr(Vector256<int> src, Vector128<int> count)
// AggressiveInlining
Vector256<int> vsrlr(Vector256<int> src, Vector128<int> count)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::ShiftRightLogical(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664398, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
// Vector256<uint> vsrlr(Vector256<uint> src, Vector128<uint> count)
// AggressiveInlining
Vector256<uint> vsrlr(Vector256<uint> src, Vector128<uint> count)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::ShiftRightLogical(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664399, Name := System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>)
// Vector256<long> vsrlr(Vector256<long> src, Vector128<long> count)
// AggressiveInlining
Vector256<long> vsrlr(Vector256<long> src, Vector128<long> count)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::ShiftRightLogical(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664400, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
// Vector256<ulong> vsrlr(Vector256<ulong> src, Vector128<ulong> count)
// AggressiveInlining
Vector256<ulong> vsrlr(Vector256<ulong> src, Vector128<ulong> count)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> System.Runtime.Intrinsics.X86.Avx2::ShiftRightLogical(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664401, Name := System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.SByte)
// Vector128<sbyte> vsrlr(Vector128<sbyte> src, sbyte count)
// AggressiveInlining
Vector128<sbyte> vsrlr(Vector128<sbyte> src, sbyte count)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vscalar(Z0.N128,System.SByte)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664402, Name := System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Byte)
// Vector128<byte> vsrlr(Vector128<byte> src, byte count)
// AggressiveInlining
Vector128<byte> vsrlr(Vector128<byte> src, byte count)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vscalar(Z0.N128,System.Byte)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664403, Name := System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Int16)
// Vector128<Int16> vsrlr(Vector128<Int16> src, Int16 count)
// AggressiveInlining
Vector128<Int16> vsrlr(Vector128<Int16> src, Int16 count)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vscalar(Z0.N128,System.Int16)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664404, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.UInt16)
// Vector128<ushort> vsrlr(Vector128<ushort> src, ushort count)
// AggressiveInlining
Vector128<ushort> vsrlr(Vector128<ushort> src, ushort count)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vscalar(Z0.N128,System.UInt16)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664405, Name := System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Int32)
// Vector128<int> vsrlr(Vector128<int> src, int count)
// AggressiveInlining
Vector128<int> vsrlr(Vector128<int> src, int count)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vscalar(Z0.N128,System.Int32)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664406, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.UInt32)
// Vector128<uint> vsrlr(Vector128<uint> src, uint count)
// AggressiveInlining
Vector128<uint> vsrlr(Vector128<uint> src, uint count)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vscalar(Z0.N128,System.UInt32)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664407, Name := System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Int64)
// Vector128<long> vsrlr(Vector128<long> src, long count)
// AggressiveInlining
Vector128<long> vsrlr(Vector128<long> src, long count)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vscalar(Z0.N128,System.Int64)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664408, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.UInt64)
// Vector128<ulong> vsrlr(Vector128<ulong> src, ulong count)
// AggressiveInlining
Vector128<ulong> vsrlr(Vector128<ulong> src, ulong count)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vscalar(Z0.N128,System.UInt64)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664409, Name := System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.SByte)
// Vector256<sbyte> vsrlr(Vector256<sbyte> src, sbyte count)
// AggressiveInlining
Vector256<sbyte> vsrlr(Vector256<sbyte> src, sbyte count)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vscalar(Z0.N128,System.SByte)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664410, Name := System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Byte)
// Vector256<byte> vsrlr(Vector256<byte> src, byte count)
// AggressiveInlining
Vector256<byte> vsrlr(Vector256<byte> src, byte count)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vscalar(Z0.N128,System.Byte)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664411, Name := System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Int16)
// Vector256<Int16> vsrlr(Vector256<Int16> src, Int16 count)
// AggressiveInlining
Vector256<Int16> vsrlr(Vector256<Int16> src, Int16 count)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vscalar(Z0.N128,System.Int16)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664412, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.UInt16)
// Vector256<ushort> vsrlr(Vector256<ushort> src, ushort count)
// AggressiveInlining
Vector256<ushort> vsrlr(Vector256<ushort> src, ushort count)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vscalar(Z0.N128,System.UInt16)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664413, Name := System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Int32)
// Vector256<int> vsrlr(Vector256<int> src, int count)
// AggressiveInlining
Vector256<int> vsrlr(Vector256<int> src, int count)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vscalar(Z0.N128,System.Int32)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664414, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.UInt32)
// Vector256<uint> vsrlr(Vector256<uint> src, uint count)
// AggressiveInlining
Vector256<uint> vsrlr(Vector256<uint> src, uint count)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vscalar(Z0.N128,System.UInt32)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664415, Name := System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Int64)
// Vector256<long> vsrlr(Vector256<long> src, long count)
// AggressiveInlining
Vector256<long> vsrlr(Vector256<long> src, long count)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vscalar(Z0.N128,System.Int64)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664416, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.UInt64)
// Vector256<ulong> vsrlr(Vector256<ulong> src, ulong count)
// AggressiveInlining
Vector256<ulong> vsrlr(Vector256<ulong> src, ulong count)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vscalar(Z0.N128,System.UInt64)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
