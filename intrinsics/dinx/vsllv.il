// Id := 100664346, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vsllv(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
// Vector128<uint> vsllv(Vector128<uint> src, Vector128<uint> counts)
// AggressiveInlining
Vector128<uint> vsllv(Vector128<uint> src, Vector128<uint> counts)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::ShiftLeftLogicalVariable(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664347, Name := System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vsllv(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>)
// Vector128<long> vsllv(Vector128<long> src, Vector128<long> counts)
// AggressiveInlining
Vector128<long> vsllv(Vector128<long> src, Vector128<long> counts)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> zfunc::v64u<System.Int64>(System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::ShiftLeftLogicalVariable(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664348, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vsllv(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
// Vector128<ulong> vsllv(Vector128<ulong> src, Vector128<ulong> counts)
// AggressiveInlining
Vector128<ulong> vsllv(Vector128<ulong> src, Vector128<ulong> counts)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> System.Runtime.Intrinsics.X86.Avx2::ShiftLeftLogicalVariable(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664349, Name := System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vsllv(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.SByte>)
// Vector256<sbyte> vsllv(Vector256<sbyte> src, Vector256<sbyte> counts)
// AggressiveInlining
Vector256<sbyte> vsllv(Vector256<sbyte> src, Vector256<sbyte> counts)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N512 zfunc::get_n512()
    IL_0006: ldc.i4.0
    IL_0007: call Z0.Vector512`1<System.Int16> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector256`1<System.SByte>,Z0.N512,System.Int16)
    IL_000C: stloc.s V_4
    IL_000E: ldloca.s V_4
    IL_0010: ldloca.s V_5
    IL_0012: ldloca.s V_6
    IL_0014: call System.Void Z0.Vector512`1<System.Int16>::Deconstruct(System.Runtime.Intrinsics.Vector256`1<System.Int16>&,System.Runtime.Intrinsics.Vector256`1<System.Int16>&)
    IL_0019: ldloc.s V_5
    IL_001B: stloc.0
    IL_001C: ldloc.s V_6
    IL_001E: stloc.1
    IL_001F: ldarg.1
    IL_0020: call Z0.N512 zfunc::get_n512()
    IL_0025: ldc.i4.0
    IL_0026: call Z0.Vector512`1<System.Int16> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector256`1<System.SByte>,Z0.N512,System.Int16)
    IL_002B: stloc.s V_4
    IL_002D: ldloca.s V_4
    IL_002F: ldloca.s V_6
    IL_0031: ldloca.s V_5
    IL_0033: call System.Void Z0.Vector512`1<System.Int16>::Deconstruct(System.Runtime.Intrinsics.Vector256`1<System.Int16>&,System.Runtime.Intrinsics.Vector256`1<System.Int16>&)
    IL_0038: ldloc.s V_6
    IL_003A: stloc.2
    IL_003B: ldloc.s V_5
    IL_003D: stloc.3
    IL_003E: ldloc.0
    IL_003F: ldloc.2
    IL_0040: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vsllv(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0045: ldloc.1
    IL_0046: ldloc.3
    IL_0047: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vsllv(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_004C: call Z0.N256 zfunc::get_n256()
    IL_0051: ldc.i4.0
    IL_0052: call System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>,Z0.N256,System.SByte)
    IL_0057: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664350, Name := System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vsllv(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<byte> vsllv(Vector256<byte> src, Vector256<byte> counts)
// AggressiveInlining
Vector256<byte> vsllv(Vector256<byte> src, Vector256<byte> counts)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N512 zfunc::get_n512()
    IL_0006: ldc.i4.0
    IL_0007: call Z0.Vector512`1<System.UInt16> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector256`1<System.Byte>,Z0.N512,System.UInt16)
    IL_000C: stloc.s V_4
    IL_000E: ldloca.s V_4
    IL_0010: ldloca.s V_5
    IL_0012: ldloca.s V_6
    IL_0014: call System.Void Z0.Vector512`1<System.UInt16>::Deconstruct(System.Runtime.Intrinsics.Vector256`1<System.UInt16>&,System.Runtime.Intrinsics.Vector256`1<System.UInt16>&)
    IL_0019: ldloc.s V_5
    IL_001B: stloc.0
    IL_001C: ldloc.s V_6
    IL_001E: stloc.1
    IL_001F: ldarg.1
    IL_0020: call Z0.N512 zfunc::get_n512()
    IL_0025: ldc.i4.0
    IL_0026: call Z0.Vector512`1<System.UInt16> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector256`1<System.Byte>,Z0.N512,System.UInt16)
    IL_002B: stloc.s V_4
    IL_002D: ldloca.s V_4
    IL_002F: ldloca.s V_6
    IL_0031: ldloca.s V_5
    IL_0033: call System.Void Z0.Vector512`1<System.UInt16>::Deconstruct(System.Runtime.Intrinsics.Vector256`1<System.UInt16>&,System.Runtime.Intrinsics.Vector256`1<System.UInt16>&)
    IL_0038: ldloc.s V_6
    IL_003A: stloc.2
    IL_003B: ldloc.s V_5
    IL_003D: stloc.3
    IL_003E: ldloc.0
    IL_003F: ldloc.2
    IL_0040: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vsllv(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0045: ldloc.1
    IL_0046: ldloc.3
    IL_0047: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vsllv(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_004C: call Z0.N256 zfunc::get_n256()
    IL_0051: ldc.i4.0
    IL_0052: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>,Z0.N256,System.Byte)
    IL_0057: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664351, Name := System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vsllv(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
// Vector256<short> vsllv(Vector256<short> src, Vector256<short> counts)
// AggressiveInlining
Vector256<short> vsllv(Vector256<short> src, Vector256<short> counts)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N512 zfunc::get_n512()
    IL_0006: ldc.i4.0
    IL_0007: call Z0.Vector512`1<System.Int32> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector256`1<System.Int16>,Z0.N512,System.Int32)
    IL_000C: stloc.s V_4
    IL_000E: ldloca.s V_4
    IL_0010: ldloca.s V_5
    IL_0012: ldloca.s V_6
    IL_0014: call System.Void Z0.Vector512`1<System.Int32>::Deconstruct(System.Runtime.Intrinsics.Vector256`1<System.Int32>&,System.Runtime.Intrinsics.Vector256`1<System.Int32>&)
    IL_0019: ldloc.s V_5
    IL_001B: stloc.0
    IL_001C: ldloc.s V_6
    IL_001E: stloc.1
    IL_001F: ldarg.1
    IL_0020: call Z0.N512 zfunc::get_n512()
    IL_0025: ldc.i4.0
    IL_0026: call Z0.Vector512`1<System.Int32> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector256`1<System.Int16>,Z0.N512,System.Int32)
    IL_002B: stloc.s V_4
    IL_002D: ldloca.s V_4
    IL_002F: ldloca.s V_6
    IL_0031: ldloca.s V_5
    IL_0033: call System.Void Z0.Vector512`1<System.Int32>::Deconstruct(System.Runtime.Intrinsics.Vector256`1<System.Int32>&,System.Runtime.Intrinsics.Vector256`1<System.Int32>&)
    IL_0038: ldloc.s V_6
    IL_003A: stloc.2
    IL_003B: ldloc.s V_5
    IL_003D: stloc.3
    IL_003E: ldloc.0
    IL_003F: ldloc.2
    IL_0040: call System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vsllv(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_0045: ldloc.1
    IL_0046: ldloc.3
    IL_0047: call System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vsllv(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_004C: call Z0.N256 zfunc::get_n256()
    IL_0051: ldc.i4.0
    IL_0052: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>,Z0.N256,System.Int16)
    IL_0057: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664352, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vsllv(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
// Vector256<ushort> vsllv(Vector256<ushort> src, Vector256<ushort> counts)
// AggressiveInlining
Vector256<ushort> vsllv(Vector256<ushort> src, Vector256<ushort> counts)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N512 zfunc::get_n512()
    IL_0006: ldc.i4.0
    IL_0007: call Z0.Vector512`1<System.UInt32> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,Z0.N512,System.UInt32)
    IL_000C: stloc.s V_4
    IL_000E: ldloca.s V_4
    IL_0010: ldloca.s V_5
    IL_0012: ldloca.s V_6
    IL_0014: call System.Void Z0.Vector512`1<System.UInt32>::Deconstruct(System.Runtime.Intrinsics.Vector256`1<System.UInt32>&,System.Runtime.Intrinsics.Vector256`1<System.UInt32>&)
    IL_0019: ldloc.s V_5
    IL_001B: stloc.0
    IL_001C: ldloc.s V_6
    IL_001E: stloc.1
    IL_001F: ldarg.1
    IL_0020: call Z0.N512 zfunc::get_n512()
    IL_0025: ldc.i4.0
    IL_0026: call Z0.Vector512`1<System.UInt32> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,Z0.N512,System.UInt32)
    IL_002B: stloc.s V_4
    IL_002D: ldloca.s V_4
    IL_002F: ldloca.s V_6
    IL_0031: ldloca.s V_5
    IL_0033: call System.Void Z0.Vector512`1<System.UInt32>::Deconstruct(System.Runtime.Intrinsics.Vector256`1<System.UInt32>&,System.Runtime.Intrinsics.Vector256`1<System.UInt32>&)
    IL_0038: ldloc.s V_6
    IL_003A: stloc.2
    IL_003B: ldloc.s V_5
    IL_003D: stloc.3
    IL_003E: ldloc.0
    IL_003F: ldloc.2
    IL_0040: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vsllv(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0045: ldloc.1
    IL_0046: ldloc.3
    IL_0047: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vsllv(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_004C: call Z0.N256 zfunc::get_n256()
    IL_0051: ldc.i4.0
    IL_0052: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>,Z0.N256,System.UInt16)
    IL_0057: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664353, Name := System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vsllv(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
// Vector256<int> vsllv(Vector256<int> src, Vector256<int> counts)
// AggressiveInlining
Vector256<int> vsllv(Vector256<int> src, Vector256<int> counts)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<System.Int32>(System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::ShiftLeftLogicalVariable(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664354, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vsllv(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
// Vector256<uint> vsllv(Vector256<uint> src, Vector256<uint> counts)
// AggressiveInlining
Vector256<uint> vsllv(Vector256<uint> src, Vector256<uint> counts)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::ShiftLeftLogicalVariable(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664355, Name := System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vsllv(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>)
// Vector256<long> vsllv(Vector256<long> src, Vector256<long> counts)
// AggressiveInlining
Vector256<long> vsllv(Vector256<long> src, Vector256<long> counts)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<System.Int64>(System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::ShiftLeftLogicalVariable(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664356, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vsllv(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
// Vector256<ulong> vsllv(Vector256<ulong> src, Vector256<ulong> counts)
// AggressiveInlining
Vector256<ulong> vsllv(Vector256<ulong> src, Vector256<ulong> counts)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> System.Runtime.Intrinsics.X86.Avx2::ShiftLeftLogicalVariable(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664341, Name := System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vsllv(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
// Vector128<sbyte> vsllv(Vector128<sbyte> src, Vector128<sbyte> counts)
// AggressiveInlining
Vector128<sbyte> vsllv(Vector128<sbyte> src, Vector128<sbyte> counts)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N256 zfunc::get_n256()
    IL_0006: ldc.i4.0
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.SByte>,Z0.N256,System.Int16)
    IL_000C: stloc.0
    IL_000D: ldarg.1
    IL_000E: call Z0.N256 zfunc::get_n256()
    IL_0013: ldc.i4.0
    IL_0014: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.SByte>,Z0.N256,System.Int16)
    IL_0019: stloc.1
    IL_001A: ldloc.0
    IL_001B: ldloc.1
    IL_001C: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vsllv(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0021: call Z0.N128 zfunc::get_n128()
    IL_0026: ldc.i4.0
    IL_0027: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.Int16>,Z0.N128,System.SByte)
    IL_002C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664342, Name := System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vsllv(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<byte> vsllv(Vector128<byte> src, Vector128<byte> counts)
// AggressiveInlining
Vector128<byte> vsllv(Vector128<byte> src, Vector128<byte> counts)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N256 zfunc::get_n256()
    IL_0006: ldc.i4.0
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.Byte>,Z0.N256,System.UInt16)
    IL_000C: stloc.0
    IL_000D: ldarg.1
    IL_000E: call Z0.N256 zfunc::get_n256()
    IL_0013: ldc.i4.0
    IL_0014: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.Byte>,Z0.N256,System.UInt16)
    IL_0019: stloc.1
    IL_001A: ldloc.0
    IL_001B: ldloc.1
    IL_001C: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vsllv(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0021: call Z0.N128 zfunc::get_n128()
    IL_0026: ldc.i4.0
    IL_0027: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,Z0.N128,System.Byte)
    IL_002C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664343, Name := System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vsllv(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
// Vector128<short> vsllv(Vector128<short> src, Vector128<short> counts)
// AggressiveInlining
Vector128<short> vsllv(Vector128<short> src, Vector128<short> counts)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N256 zfunc::get_n256()
    IL_0006: ldc.i4.0
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.Int16>,Z0.N256,System.Int32)
    IL_000C: stloc.0
    IL_000D: ldarg.1
    IL_000E: call Z0.N256 zfunc::get_n256()
    IL_0013: ldc.i4.0
    IL_0014: call System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.Int16>,Z0.N256,System.Int32)
    IL_0019: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<System.Int32>(System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_001E: stloc.1
    IL_001F: ldloc.0
    IL_0020: ldloc.1
    IL_0021: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::ShiftLeftLogicalVariable(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0026: stloc.2
    IL_0027: ldloc.2
    IL_0028: call Z0.N128 zfunc::get_n128()
    IL_002D: ldc.i4.0
    IL_002E: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.Int32>,Z0.N128,System.Int16)
    IL_0033: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664344, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vsllv(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
// Vector128<ushort> vsllv(Vector128<ushort> src, Vector128<ushort> counts)
// AggressiveInlining
Vector128<ushort> vsllv(Vector128<ushort> src, Vector128<ushort> counts)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N256 zfunc::get_n256()
    IL_0006: ldc.i4.0
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,Z0.N256,System.UInt32)
    IL_000C: stloc.0
    IL_000D: ldarg.1
    IL_000E: call Z0.N256 zfunc::get_n256()
    IL_0013: ldc.i4.0
    IL_0014: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,Z0.N256,System.UInt32)
    IL_0019: stloc.1
    IL_001A: ldloc.0
    IL_001B: ldloc.1
    IL_001C: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::ShiftLeftLogicalVariable(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0021: stloc.2
    IL_0022: ldloc.2
    IL_0023: call Z0.N128 zfunc::get_n128()
    IL_0028: ldc.i4.0
    IL_0029: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,Z0.N128,System.UInt16)
    IL_002E: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664345, Name := System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vsllv(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
// Vector128<int> vsllv(Vector128<int> src, Vector128<int> counts)
// AggressiveInlining
Vector128<int> vsllv(Vector128<int> src, Vector128<int> counts)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> zfunc::v32u<System.Int32>(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::ShiftLeftLogicalVariable(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
