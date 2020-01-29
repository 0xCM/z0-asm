// Id := 100664891, Name := System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vgather(Z0.N128,System.Int32&,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
// Vector128<int> vgather(N128 w, in int src, Vector128<int> index)
// AggressiveInlining
Vector128<int> vgather(N128 w, in int src, Vector128<int> index)
{
    IL_0000: ldarg.1
    IL_0001: call System.Int32* zfunc::constptr<System.Int32>(System.Int32&)
    IL_0006: ldarg.2
    IL_0007: ldc.i4.4
    IL_0008: call System.Runtime.Intrinsics.Vector128`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::GatherVector128(System.Int32*,System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Byte)
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664892, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vgather(Z0.N128,System.UInt32&,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
// Vector128<uint> vgather(N128 w, in uint src, Vector256<ulong> vidx)
// AggressiveInlining
Vector128<uint> vgather(N128 w, in uint src, Vector256<ulong> vidx)
{
    IL_0000: ldarg.1
    IL_0001: call System.UInt32* zfunc::constptr<System.UInt32>(System.UInt32&)
    IL_0006: ldarg.2
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Int64> zfunc::v64i<System.UInt64>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_000C: ldc.i4.4
    IL_000D: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::GatherVector128(System.UInt32*,System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Byte)
    IL_0012: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664893, Name := System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vgather(Z0.N128,System.Int64&,System.Runtime.Intrinsics.Vector128`1<System.Int64>)
// Vector128<long> vgather(N128 w, in long src, Vector128<long> vidx)
// AggressiveInlining
Vector128<long> vgather(N128 w, in long src, Vector128<long> vidx)
{
    IL_0000: ldarg.1
    IL_0001: call System.Int64* zfunc::constptr<System.Int64>(System.Int64&)
    IL_0006: ldarg.2
    IL_0007: ldc.i4.8
    IL_0008: call System.Runtime.Intrinsics.Vector128`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::GatherVector128(System.Int64*,System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Byte)
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664894, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vgather(Z0.N128,System.UInt64&,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
// Vector128<ulong> vgather(N128 w, in ulong src, Vector128<ulong> vidx)
// AggressiveInlining
Vector128<ulong> vgather(N128 w, in ulong src, Vector128<ulong> vidx)
{
    IL_0000: ldarg.1
    IL_0001: call System.UInt64* zfunc::constptr<System.UInt64>(System.UInt64&)
    IL_0006: ldarg.2
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Int64> zfunc::v64i<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_000C: ldc.i4.8
    IL_000D: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> System.Runtime.Intrinsics.X86.Avx2::GatherVector128(System.UInt64*,System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Byte)
    IL_0012: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664895, Name := System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vgather(Z0.N256,System.Int32&,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
// Vector256<int> vgather(N256 w, in int src, Vector256<int> index)
// AggressiveInlining
Vector256<int> vgather(N256 w, in int src, Vector256<int> index)
{
    IL_0000: ldarg.1
    IL_0001: call System.Int32* zfunc::constptr<System.Int32>(System.Int32&)
    IL_0006: ldarg.2
    IL_0007: ldc.i4.4
    IL_0008: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::GatherVector256(System.Int32*,System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Byte)
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664896, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vgather(Z0.N128,System.UInt32&,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
// Vector128<uint> vgather(N128 w, in uint src, Vector128<uint> vidx)
// AggressiveInlining
Vector128<uint> vgather(N128 w, in uint src, Vector128<uint> vidx)
{
    IL_0000: ldarg.1
    IL_0001: call System.UInt32* zfunc::constptr<System.UInt32>(System.UInt32&)
    IL_0006: ldarg.2
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Int32> zfunc::v32i<System.UInt32>(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_000C: ldc.i4.4
    IL_000D: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::GatherVector128(System.UInt32*,System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Byte)
    IL_0012: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664897, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vgather(Z0.N256,System.UInt32&,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
// Vector256<uint> vgather(N256 w, in uint src, Vector256<uint> vidx)
// AggressiveInlining
Vector256<uint> vgather(N256 w, in uint src, Vector256<uint> vidx)
{
    IL_0000: ldarg.1
    IL_0001: call System.UInt32* zfunc::constptr<System.UInt32>(System.UInt32&)
    IL_0006: ldarg.2
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Int32> zfunc::v32i<System.UInt32>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_000C: ldc.i4.4
    IL_000D: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::GatherVector256(System.UInt32*,System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Byte)
    IL_0012: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664898, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vgather(Z0.N128,System.UInt16&,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
// Vector128<ushort> vgather(N128 w, in ushort src, Vector128<ushort> vidx)
// AggressiveInlining
Vector128<ushort> vgather(N128 w, in ushort src, Vector128<ushort> vidx)
{
    IL_0000: ldarg.1
    IL_0001: call System.UInt32& Z0.AsIn::uint32<System.UInt16>(System.UInt16&)
    IL_0006: call System.UInt32* zfunc::constptr<System.UInt32>(System.UInt32&)
    IL_000B: ldarg.2
    IL_000C: call Z0.N256 zfunc::get_n256()
    IL_0011: ldc.i4.0
    IL_0012: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,Z0.N256,System.UInt32)
    IL_0017: call System.Runtime.Intrinsics.Vector256`1<System.Int32> zfunc::v32i<System.UInt32>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_001C: ldc.i4.2
    IL_001D: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::GatherVector256(System.UInt32*,System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Byte)
    IL_0022: call Z0.N128 zfunc::get_n128()
    IL_0027: ldc.i4.0
    IL_0028: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,Z0.N128,System.UInt16)
    IL_002D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664899, Name := System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vgather(Z0.N128,System.Int16&,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
// Vector128<short> vgather(N128 w, in short src, Vector128<short> vidx)
// AggressiveInlining
Vector128<short> vgather(N128 w, in short src, Vector128<short> vidx)
{
    IL_0000: ldarg.1
    IL_0001: call System.UInt32& Z0.AsIn::uint32<System.Int16>(System.Int16&)
    IL_0006: call System.UInt32* zfunc::constptr<System.UInt32>(System.UInt32&)
    IL_000B: ldarg.2
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> zfunc::v16u<System.Int16>(System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0011: call Z0.N256 zfunc::get_n256()
    IL_0016: ldc.i4.0
    IL_0017: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,Z0.N256,System.UInt32)
    IL_001C: call System.Runtime.Intrinsics.Vector256`1<System.Int32> zfunc::v32i<System.UInt32>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0021: ldc.i4.2
    IL_0022: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::GatherVector256(System.UInt32*,System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Byte)
    IL_0027: call Z0.N128 zfunc::get_n128()
    IL_002C: ldc.i4.0
    IL_002D: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,Z0.N128,System.UInt16)
    IL_0032: call System.Runtime.Intrinsics.Vector128`1<System.Int16> zfunc::v16i<System.UInt16>(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0037: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664900, Name := System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vgather(Z0.N128,System.SByte&,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
// Vector128<sbyte> vgather(N128 w, in sbyte src, Vector128<sbyte> vidx)
// AggressiveInlining
Vector128<sbyte> vgather(N128 w, in sbyte src, Vector128<sbyte> vidx)
{
    IL_0000: ldarg.2
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Byte> zfunc::v8u<System.SByte>(System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0006: call Z0.N512 zfunc::get_n512()
    IL_000B: ldc.i4.0
    IL_000C: call Z0.Vector512`1<System.UInt32> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.Byte>,Z0.N512,System.UInt32)
    IL_0011: stloc.s V_4
    IL_0013: ldloca.s V_4
    IL_0015: ldloca.s V_5
    IL_0017: ldloca.s V_6
    IL_0019: call System.Void Z0.Vector512`1<System.UInt32>::Deconstruct(System.Runtime.Intrinsics.Vector256`1<System.UInt32>&,System.Runtime.Intrinsics.Vector256`1<System.UInt32>&)
    IL_001E: ldloc.s V_5
    IL_0020: stloc.0
    IL_0021: ldloc.s V_6
    IL_0023: stloc.1
    IL_0024: ldarg.1
    IL_0025: call System.UInt32& Z0.AsIn::uint32<System.SByte>(System.SByte&)
    IL_002A: call System.UInt32* zfunc::constptr<System.UInt32>(System.UInt32&)
    IL_002F: ldloc.0
    IL_0030: call System.Runtime.Intrinsics.Vector256`1<System.Int32> zfunc::v32i<System.UInt32>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0035: ldc.i4.1
    IL_0036: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::GatherVector256(System.UInt32*,System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Byte)
    IL_003B: stloc.2
    IL_003C: ldarg.1
    IL_003D: call System.UInt32& Z0.AsIn::uint32<System.SByte>(System.SByte&)
    IL_0042: call System.UInt32* zfunc::constptr<System.UInt32>(System.UInt32&)
    IL_0047: ldloc.1
    IL_0048: call System.Runtime.Intrinsics.Vector256`1<System.Int32> zfunc::v32i<System.UInt32>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_004D: ldc.i4.1
    IL_004E: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::GatherVector256(System.UInt32*,System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Byte)
    IL_0053: stloc.3
    IL_0054: ldloc.2
    IL_0055: ldloc.3
    IL_0056: call Z0.N128 zfunc::get_n128()
    IL_005B: ldc.i4.0
    IL_005C: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>,Z0.N128,System.Byte)
    IL_0061: call System.Runtime.Intrinsics.Vector128`1<System.SByte> zfunc::v8i<System.Byte>(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0066: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664901, Name := System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vgather(Z0.N128,System.Byte&,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<byte> vgather(N128 w, in byte src, Vector128<byte> vidx)
// AggressiveInlining
Vector128<byte> vgather(N128 w, in byte src, Vector128<byte> vidx)
{
    IL_0000: ldarg.2
    IL_0001: call Z0.N512 zfunc::get_n512()
    IL_0006: ldc.i4.0
    IL_0007: call Z0.Vector512`1<System.UInt32> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.Byte>,Z0.N512,System.UInt32)
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
    IL_0020: call System.UInt32& Z0.AsIn::uint32<System.Byte>(System.Byte&)
    IL_0025: call System.UInt32* zfunc::constptr<System.UInt32>(System.UInt32&)
    IL_002A: ldloc.0
    IL_002B: call System.Runtime.Intrinsics.Vector256`1<System.Int32> zfunc::v32i<System.UInt32>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0030: ldc.i4.1
    IL_0031: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::GatherVector256(System.UInt32*,System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Byte)
    IL_0036: stloc.2
    IL_0037: ldarg.1
    IL_0038: call System.UInt32& Z0.AsIn::uint32<System.Byte>(System.Byte&)
    IL_003D: call System.UInt32* zfunc::constptr<System.UInt32>(System.UInt32&)
    IL_0042: ldloc.1
    IL_0043: call System.Runtime.Intrinsics.Vector256`1<System.Int32> zfunc::v32i<System.UInt32>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0048: ldc.i4.1
    IL_0049: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::GatherVector256(System.UInt32*,System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Byte)
    IL_004E: stloc.3
    IL_004F: ldloc.2
    IL_0050: ldloc.3
    IL_0051: call Z0.N128 zfunc::get_n128()
    IL_0056: ldc.i4.0
    IL_0057: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>,Z0.N128,System.Byte)
    IL_005C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664902, Name := System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vgather(Z0.N256,System.SByte&,System.Runtime.Intrinsics.Vector256`1<System.SByte>)
// Vector256<sbyte> vgather(N256 w, in sbyte src, Vector256<sbyte> vidx)
// AggressiveInlining
Vector256<sbyte> vgather(N256 w, in sbyte src, Vector256<sbyte> vidx)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: ldarg.1
    IL_0006: ldarg.2
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.SByte>)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vgather(Z0.N128,System.SByte&,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0011: call Z0.N128 zfunc::get_n128()
    IL_0016: ldarg.1
    IL_0017: ldarg.2
    IL_0018: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector256`1<System.SByte>)
    IL_001D: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vgather(Z0.N128,System.SByte&,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0022: call System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vconcat(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0027: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664903, Name := System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vgather(Z0.N256,System.Byte&,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<byte> vgather(N256 w, in byte src, Vector256<byte> vidx)
// AggressiveInlining
Vector256<byte> vgather(N256 w, in byte src, Vector256<byte> vidx)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: ldarg.1
    IL_0006: ldarg.2
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vgather(Z0.N128,System.Byte&,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0011: call Z0.N128 zfunc::get_n128()
    IL_0016: ldarg.1
    IL_0017: ldarg.2
    IL_0018: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_001D: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vgather(Z0.N128,System.Byte&,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0022: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vconcat(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0027: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664904, Name := System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vgather(Z0.N256,System.Int16&,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
// Vector256<short> vgather(N256 w, in short src, Vector256<short> vidx)
// AggressiveInlining
Vector256<short> vgather(N256 w, in short src, Vector256<short> vidx)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: ldarg.1
    IL_0006: ldarg.2
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vgather(Z0.N128,System.Int16&,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0011: call Z0.N128 zfunc::get_n128()
    IL_0016: ldarg.1
    IL_0017: ldarg.2
    IL_0018: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_001D: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vgather(Z0.N128,System.Int16&,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0022: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vconcat(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0027: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664905, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vgather(Z0.N256,System.UInt16&,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
// Vector256<ushort> vgather(N256 w, in ushort src, Vector256<ushort> vidx)
// AggressiveInlining
Vector256<ushort> vgather(N256 w, in ushort src, Vector256<ushort> vidx)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: ldarg.1
    IL_0006: ldarg.2
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vgather(Z0.N128,System.UInt16&,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0011: call Z0.N128 zfunc::get_n128()
    IL_0016: ldarg.1
    IL_0017: ldarg.2
    IL_0018: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_001D: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vgather(Z0.N128,System.UInt16&,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0022: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vconcat(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0027: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664906, Name := System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vgather(Z0.N256,System.Int64&,System.Runtime.Intrinsics.Vector256`1<System.Int64>)
// Vector256<long> vgather(N256 w, in long src, Vector256<long> index)
// AggressiveInlining
Vector256<long> vgather(N256 w, in long src, Vector256<long> index)
{
    IL_0000: ldarg.1
    IL_0001: call System.Int64* zfunc::constptr<System.Int64>(System.Int64&)
    IL_0006: ldarg.2
    IL_0007: ldc.i4.8
    IL_0008: call System.Runtime.Intrinsics.Vector256`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::GatherVector256(System.Int64*,System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Byte)
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664907, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vgather(Z0.N256,System.UInt64&,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
// Vector256<ulong> vgather(N256 w, in ulong src, Vector256<ulong> vidx)
// AggressiveInlining
Vector256<ulong> vgather(N256 w, in ulong src, Vector256<ulong> vidx)
{
    IL_0000: ldarg.1
    IL_0001: call System.UInt64* zfunc::constptr<System.UInt64>(System.UInt64&)
    IL_0006: ldarg.2
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Int64> zfunc::v64i<System.UInt64>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_000C: ldc.i4.8
    IL_000D: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> System.Runtime.Intrinsics.X86.Avx2::GatherVector256(System.UInt64*,System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Byte)
    IL_0012: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664908, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vgather(Z0.N256,System.UInt64&,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
// Vector256<ulong> vgather(N256 w, in ulong src, Vector128<uint> vidx)
// AggressiveInlining
Vector256<ulong> vgather(N256 w, in ulong src, Vector128<uint> vidx)
{
    IL_0000: ldarg.1
    IL_0001: call System.UInt64* zfunc::constptr<System.UInt64>(System.UInt64&)
    IL_0006: ldarg.2
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Int32> zfunc::v32i<System.UInt32>(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_000C: ldc.i4.8
    IL_000D: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> System.Runtime.Intrinsics.X86.Avx2::GatherVector256(System.UInt64*,System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Byte)
    IL_0012: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664909, Name := System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vgather(Z0.N256,System.Int64&,System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Byte)
// Vector256<long> vgather(N256 w, in long src, Vector256<long> vidx, byte scale)
// AggressiveInlining
Vector256<long> vgather(N256 w, in long src, Vector256<long> vidx, byte scale)
{
    IL_0000: ldarg.1
    IL_0001: call System.Int64* zfunc::constptr<System.Int64>(System.Int64&)
    IL_0006: ldarg.2
    IL_0007: ldarg.3
    IL_0008: call System.Runtime.Intrinsics.Vector256`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::GatherVector256(System.Int64*,System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Byte)
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664910, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vgather(Z0.N256,System.UInt64&,System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Byte)
// Vector256<ulong> vgather(N256 w, in ulong src, Vector256<long> vidx, byte scale)
// AggressiveInlining
Vector256<ulong> vgather(N256 w, in ulong src, Vector256<long> vidx, byte scale)
{
    IL_0000: ldarg.1
    IL_0001: call System.UInt64* zfunc::constptr<System.UInt64>(System.UInt64&)
    IL_0006: ldarg.2
    IL_0007: ldarg.3
    IL_0008: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> System.Runtime.Intrinsics.X86.Avx2::GatherVector256(System.UInt64*,System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Byte)
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664911, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vgather(Z0.N256,System.UInt64&,System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Byte)
// Vector256<ulong> vgather(N256 w, in ulong src, Vector128<int> vidx, byte scale)
// AggressiveInlining
Vector256<ulong> vgather(N256 w, in ulong src, Vector128<int> vidx, byte scale)
{
    IL_0000: ldarg.1
    IL_0001: call System.UInt64* zfunc::constptr<System.UInt64>(System.UInt64&)
    IL_0006: ldarg.2
    IL_0007: ldarg.3
    IL_0008: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> System.Runtime.Intrinsics.X86.Avx2::GatherVector256(System.UInt64*,System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Byte)
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664912, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vgather(Z0.N256,System.UInt16&,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
// Vector256<uint> vgather(N256 w, in ushort src, Vector256<uint> vidx)
// AggressiveInlining
Vector256<uint> vgather(N256 w, in ushort src, Vector256<uint> vidx)
{
    IL_0000: ldarg.1
    IL_0001: call System.UInt32& Z0.AsIn::uint32<System.UInt16>(System.UInt16&)
    IL_0006: call System.UInt32* zfunc::constptr<System.UInt32>(System.UInt32&)
    IL_000B: ldarg.2
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.Int32> zfunc::v32i<System.UInt32>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0011: ldc.i4.2
    IL_0012: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::GatherVector256(System.UInt32*,System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Byte)
    IL_0017: ret
}
------------------------------------------------------------------------------------------------------------------------
