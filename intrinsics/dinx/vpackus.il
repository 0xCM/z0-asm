// System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vpackus(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
// Vector128<byte> vpackus(Vector128<short> x, Vector128<short> y)
// AggressiveInlining
Vector128<byte> vpackus(Vector128<short> x, Vector128<short> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Byte> System.Runtime.Intrinsics.X86.Sse2::PackUnsignedSaturate(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vpackus(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
// Vector128<byte> vpackus(Vector128<ushort> x, Vector128<ushort> y)
// AggressiveInlining
Vector128<byte> vpackus(Vector128<ushort> x, Vector128<ushort> y)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: ldc.i4 255
    IL_000A: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.CpuVector::vbroadcast<System.UInt16>(Z0.N128,System.UInt16)
    IL_000F: stloc.0
    IL_0010: ldarg.0
    IL_0011: ldloc.0
    IL_0012: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vand(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0017: call System.Runtime.Intrinsics.Vector128`1<System.Int16> zfunc::v16i<System.UInt16>(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_001C: stloc.1
    IL_001D: ldarg.1
    IL_001E: ldloc.0
    IL_001F: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vand(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0024: call System.Runtime.Intrinsics.Vector128`1<System.Int16> zfunc::v16i<System.UInt16>(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0029: stloc.2
    IL_002A: ldloc.1
    IL_002B: ldloc.2
    IL_002C: call System.Runtime.Intrinsics.Vector128`1<System.Byte> System.Runtime.Intrinsics.X86.Sse2::PackUnsignedSaturate(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0031: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vpackus(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
// Vector128<ushort> vpackus(Vector128<int> x, Vector128<int> y)
// AggressiveInlining
Vector128<ushort> vpackus(Vector128<int> x, Vector128<int> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> System.Runtime.Intrinsics.X86.Sse41::PackUnsignedSaturate(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vpackus(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
// Vector128<ushort> vpackus(Vector128<uint> x, Vector128<uint> y)
// AggressiveInlining
Vector128<ushort> vpackus(Vector128<uint> x, Vector128<uint> y)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: ldc.i4 65535
    IL_000A: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.CpuVector::vbroadcast<System.UInt32>(Z0.N128,System.UInt32)
    IL_000F: stloc.0
    IL_0010: ldarg.0
    IL_0011: ldloc.0
    IL_0012: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vand(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0017: call System.Runtime.Intrinsics.Vector128`1<System.Int32> zfunc::v32i<System.UInt32>(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_001C: stloc.1
    IL_001D: ldarg.1
    IL_001E: ldloc.0
    IL_001F: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vand(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0024: call System.Runtime.Intrinsics.Vector128`1<System.Int32> zfunc::v32i<System.UInt32>(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0029: stloc.2
    IL_002A: ldloc.1
    IL_002B: ldloc.2
    IL_002C: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> System.Runtime.Intrinsics.X86.Sse41::PackUnsignedSaturate(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0031: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vpackus(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
// Vector256<byte> vpackus(Vector256<short> x, Vector256<short> y)
// AggressiveInlining
Vector256<byte> vpackus(Vector256<short> x, Vector256<short> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Byte> System.Runtime.Intrinsics.X86.Avx2::PackUnsignedSaturate(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vpackus(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
// Vector256<byte> vpackus(Vector256<ushort> x, Vector256<ushort> y)
// AggressiveInlining
Vector256<byte> vpackus(Vector256<ushort> x, Vector256<ushort> y)
{
    IL_0000: call Z0.N256 zfunc::get_n256()
    IL_0005: ldc.i4 255
    IL_000A: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.CpuVector::vbroadcast<System.UInt16>(Z0.N256,System.UInt16)
    IL_000F: stloc.0
    IL_0010: ldarg.0
    IL_0011: ldloc.0
    IL_0012: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vand(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0017: call System.Runtime.Intrinsics.Vector256`1<System.Int16> zfunc::v16i<System.UInt16>(System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_001C: stloc.1
    IL_001D: ldarg.1
    IL_001E: ldloc.0
    IL_001F: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vand(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0024: call System.Runtime.Intrinsics.Vector256`1<System.Int16> zfunc::v16i<System.UInt16>(System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0029: stloc.2
    IL_002A: ldloc.1
    IL_002B: ldloc.2
    IL_002C: call System.Runtime.Intrinsics.Vector256`1<System.Byte> System.Runtime.Intrinsics.X86.Avx2::PackUnsignedSaturate(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0031: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vpackus(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
// Vector256<ushort> vpackus(Vector256<int> x, Vector256<int> y)
// AggressiveInlining
Vector256<ushort> vpackus(Vector256<int> x, Vector256<int> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> System.Runtime.Intrinsics.X86.Avx2::PackUnsignedSaturate(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vpackus(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
// Vector256<ushort> vpackus(Vector256<uint> x, Vector256<uint> y)
// AggressiveInlining
Vector256<ushort> vpackus(Vector256<uint> x, Vector256<uint> y)
{
    IL_0000: call Z0.N256 zfunc::get_n256()
    IL_0005: ldc.i4 65535
    IL_000A: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.CpuVector::vbroadcast<System.UInt32>(Z0.N256,System.UInt32)
    IL_000F: stloc.0
    IL_0010: ldarg.0
    IL_0011: ldloc.0
    IL_0012: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vand(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0017: call System.Runtime.Intrinsics.Vector256`1<System.Int32> zfunc::v32i<System.UInt32>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_001C: stloc.1
    IL_001D: ldarg.1
    IL_001E: ldloc.0
    IL_001F: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vand(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0024: call System.Runtime.Intrinsics.Vector256`1<System.Int32> zfunc::v32i<System.UInt32>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0029: stloc.2
    IL_002A: ldloc.1
    IL_002B: ldloc.2
    IL_002C: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> System.Runtime.Intrinsics.X86.Avx2::PackUnsignedSaturate(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_0031: ret
}
------------------------------------------------------------------------------------------------------------------------
