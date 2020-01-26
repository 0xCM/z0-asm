// Id := 100664568, Name := System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vgt(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
// Vector128<sbyte> vgt(Vector128<sbyte> x, Vector128<sbyte> y)
// AggressiveInlining
Vector128<sbyte> vgt(Vector128<sbyte> x, Vector128<sbyte> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.SByte> System.Runtime.Intrinsics.X86.Sse2::CompareGreaterThan(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664569, Name := System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vgt(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<byte> vgt(Vector128<byte> x, Vector128<byte> y)
// AggressiveInlining
Vector128<byte> vgt(Vector128<byte> x, Vector128<byte> y)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: ldc.i4 128
    IL_000A: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.CpuVector::vbroadcast<System.Byte>(Z0.N128,System.Byte)
    IL_000F: stloc.0
    IL_0010: ldarg.0
    IL_0011: ldloc.0
    IL_0012: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0017: call System.Runtime.Intrinsics.Vector128`1<System.SByte> System.Runtime.Intrinsics.Vector128::AsSByte<System.Byte>(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_001C: stloc.1
    IL_001D: ldarg.1
    IL_001E: ldloc.0
    IL_001F: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0024: call System.Runtime.Intrinsics.Vector128`1<System.SByte> System.Runtime.Intrinsics.Vector128::AsSByte<System.Byte>(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0029: stloc.2
    IL_002A: ldloc.1
    IL_002B: ldloc.2
    IL_002C: call System.Runtime.Intrinsics.Vector128`1<System.SByte> System.Runtime.Intrinsics.X86.Sse2::CompareGreaterThan(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0031: call System.Runtime.Intrinsics.Vector128`1<System.Byte> System.Runtime.Intrinsics.Vector128::AsByte<System.SByte>(System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0036: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664570, Name := System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vgt(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
// Vector128<Int16> vgt(Vector128<Int16> x, Vector128<Int16> y)
// AggressiveInlining
Vector128<Int16> vgt(Vector128<Int16> x, Vector128<Int16> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Int16> System.Runtime.Intrinsics.X86.Sse2::CompareGreaterThan(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664571, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vgt(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
// Vector128<ushort> vgt(Vector128<ushort> x, Vector128<ushort> y)
// AggressiveInlining
Vector128<ushort> vgt(Vector128<ushort> x, Vector128<ushort> y)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: ldc.i4 32768
    IL_000A: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.CpuVector::vbroadcast<System.UInt16>(Z0.N128,System.UInt16)
    IL_000F: stloc.0
    IL_0010: ldarg.0
    IL_0011: ldloc.0
    IL_0012: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0017: call System.Runtime.Intrinsics.Vector128`1<System.Int16> System.Runtime.Intrinsics.Vector128::AsInt16<System.UInt16>(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_001C: stloc.1
    IL_001D: ldarg.1
    IL_001E: ldloc.0
    IL_001F: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0024: call System.Runtime.Intrinsics.Vector128`1<System.Int16> System.Runtime.Intrinsics.Vector128::AsInt16<System.UInt16>(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0029: stloc.2
    IL_002A: ldloc.1
    IL_002B: ldloc.2
    IL_002C: call System.Runtime.Intrinsics.Vector128`1<System.Int16> System.Runtime.Intrinsics.X86.Sse2::CompareGreaterThan(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0031: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> System.Runtime.Intrinsics.Vector128::AsUInt16<System.Int16>(System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0036: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664572, Name := System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vgt(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
// Vector128<int> vgt(Vector128<int> x, Vector128<int> y)
// AggressiveInlining
Vector128<int> vgt(Vector128<int> x, Vector128<int> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Int32> System.Runtime.Intrinsics.X86.Sse2::CompareGreaterThan(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664573, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vgt(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
// Vector128<uint> vgt(Vector128<uint> x, Vector128<uint> y)
// AggressiveInlining
Vector128<uint> vgt(Vector128<uint> x, Vector128<uint> y)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: ldc.i4 -2147483648
    IL_000A: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.CpuVector::vbroadcast<System.UInt32>(Z0.N128,System.UInt32)
    IL_000F: stloc.0
    IL_0010: ldarg.0
    IL_0011: ldloc.0
    IL_0012: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0017: call System.Runtime.Intrinsics.Vector128`1<System.Int32> System.Runtime.Intrinsics.Vector128::AsInt32<System.UInt32>(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_001C: stloc.1
    IL_001D: ldarg.1
    IL_001E: ldloc.0
    IL_001F: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0024: call System.Runtime.Intrinsics.Vector128`1<System.Int32> System.Runtime.Intrinsics.Vector128::AsInt32<System.UInt32>(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0029: stloc.2
    IL_002A: ldloc.1
    IL_002B: ldloc.2
    IL_002C: call System.Runtime.Intrinsics.Vector128`1<System.Int32> System.Runtime.Intrinsics.X86.Sse2::CompareGreaterThan(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0031: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> System.Runtime.Intrinsics.Vector128::AsUInt32<System.Int32>(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0036: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664574, Name := System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vgt(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>)
// Vector128<long> vgt(Vector128<long> x, Vector128<long> y)
// AggressiveInlining
Vector128<long> vgt(Vector128<long> x, Vector128<long> y)
{
    IL_0000: ldarg.0
    IL_0001: ldloca.s V_2
    IL_0003: initobj System.Runtime.Intrinsics.Vector256`1<System.Int64>
    IL_0009: ldloc.2
    IL_000A: ldc.i4.0
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.ginx::vinsert<System.Int64>(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Byte)
    IL_0010: stloc.0
    IL_0011: ldarg.1
    IL_0012: ldloca.s V_2
    IL_0014: initobj System.Runtime.Intrinsics.Vector256`1<System.Int64>
    IL_001A: ldloc.2
    IL_001B: ldc.i4.0
    IL_001C: call System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.ginx::vinsert<System.Int64>(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Byte)
    IL_0021: stloc.1
    IL_0022: ldloc.0
    IL_0023: ldloc.1
    IL_0024: call System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vgt(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_0029: call System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.ginx::vlo<System.Int64>(System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_002E: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664576, Name := System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vgt(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.SByte>)
// Vector256<sbyte> vgt(Vector256<sbyte> x, Vector256<sbyte> y)
// AggressiveInlining
Vector256<sbyte> vgt(Vector256<sbyte> x, Vector256<sbyte> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.SByte> System.Runtime.Intrinsics.X86.Avx2::CompareGreaterThan(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.SByte>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664577, Name := System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vgt(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<byte> vgt(Vector256<byte> x, Vector256<byte> y)
// AggressiveInlining
Vector256<byte> vgt(Vector256<byte> x, Vector256<byte> y)
{
    IL_0000: call Z0.N256 zfunc::get_n256()
    IL_0005: ldc.i4 128
    IL_000A: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.CpuVector::vbroadcast<System.Byte>(Z0.N256,System.Byte)
    IL_000F: stloc.0
    IL_0010: ldarg.0
    IL_0011: ldloc.0
    IL_0012: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0017: call System.Runtime.Intrinsics.Vector256`1<System.SByte> System.Runtime.Intrinsics.Vector256::AsSByte<System.Byte>(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_001C: stloc.1
    IL_001D: ldarg.1
    IL_001E: ldloc.0
    IL_001F: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0024: call System.Runtime.Intrinsics.Vector256`1<System.SByte> System.Runtime.Intrinsics.Vector256::AsSByte<System.Byte>(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0029: stloc.2
    IL_002A: ldloc.1
    IL_002B: ldloc.2
    IL_002C: call System.Runtime.Intrinsics.Vector256`1<System.SByte> System.Runtime.Intrinsics.X86.Avx2::CompareGreaterThan(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.SByte>)
    IL_0031: call System.Runtime.Intrinsics.Vector256`1<System.Byte> System.Runtime.Intrinsics.Vector256::AsByte<System.SByte>(System.Runtime.Intrinsics.Vector256`1<System.SByte>)
    IL_0036: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664578, Name := System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vgt(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
// Vector256<Int16> vgt(Vector256<Int16> x, Vector256<Int16> y)
// AggressiveInlining
Vector256<Int16> vgt(Vector256<Int16> x, Vector256<Int16> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Int16> System.Runtime.Intrinsics.X86.Avx2::CompareGreaterThan(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664579, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vgt(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
// Vector256<ushort> vgt(Vector256<ushort> x, Vector256<ushort> y)
// AggressiveInlining
Vector256<ushort> vgt(Vector256<ushort> x, Vector256<ushort> y)
{
    IL_0000: call Z0.N256 zfunc::get_n256()
    IL_0005: ldc.i4 32768
    IL_000A: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.CpuVector::vbroadcast<System.UInt16>(Z0.N256,System.UInt16)
    IL_000F: stloc.0
    IL_0010: ldarg.0
    IL_0011: ldloc.0
    IL_0012: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0017: call System.Runtime.Intrinsics.Vector256`1<System.Int16> System.Runtime.Intrinsics.Vector256::AsInt16<System.UInt16>(System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_001C: stloc.1
    IL_001D: ldarg.1
    IL_001E: ldloc.0
    IL_001F: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0024: call System.Runtime.Intrinsics.Vector256`1<System.Int16> System.Runtime.Intrinsics.Vector256::AsInt16<System.UInt16>(System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0029: stloc.2
    IL_002A: ldloc.1
    IL_002B: ldloc.2
    IL_002C: call System.Runtime.Intrinsics.Vector256`1<System.Int16> System.Runtime.Intrinsics.X86.Avx2::CompareGreaterThan(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0031: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> System.Runtime.Intrinsics.Vector256::AsUInt16<System.Int16>(System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0036: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664580, Name := System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vgt(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
// Vector256<int> vgt(Vector256<int> x, Vector256<int> y)
// AggressiveInlining
Vector256<int> vgt(Vector256<int> x, Vector256<int> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::CompareGreaterThan(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664581, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vgt(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
// Vector256<uint> vgt(Vector256<uint> x, Vector256<uint> y)
// AggressiveInlining
Vector256<uint> vgt(Vector256<uint> x, Vector256<uint> y)
{
    IL_0000: call Z0.N256 zfunc::get_n256()
    IL_0005: ldc.i4 -2147483648
    IL_000A: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.CpuVector::vbroadcast<System.UInt32>(Z0.N256,System.UInt32)
    IL_000F: stloc.0
    IL_0010: ldarg.0
    IL_0011: ldloc.0
    IL_0012: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0017: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.Vector256::AsInt32<System.UInt32>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_001C: stloc.1
    IL_001D: ldarg.1
    IL_001E: ldloc.0
    IL_001F: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0024: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.Vector256::AsInt32<System.UInt32>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0029: stloc.2
    IL_002A: ldloc.1
    IL_002B: ldloc.2
    IL_002C: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::CompareGreaterThan(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_0031: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> System.Runtime.Intrinsics.Vector256::AsUInt32<System.Int32>(System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_0036: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664582, Name := System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vgt(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>)
// Vector256<long> vgt(Vector256<long> x, Vector256<long> y)
// AggressiveInlining
Vector256<long> vgt(Vector256<long> x, Vector256<long> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::CompareGreaterThan(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
