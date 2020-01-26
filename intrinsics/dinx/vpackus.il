// Id := 100664882, Name := System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vpackus(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
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
// Id := 100664883, Name := System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vpackus(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
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
// Id := 100664884, Name := System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vpackus_alt(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
// Vector128<byte> vpackus_alt(Vector128<ushort> x, Vector128<ushort> y)
// AggressiveInlining
Vector128<byte> vpackus_alt(Vector128<ushort> x, Vector128<ushort> y)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: call Z0.N16 zfunc::get_n16()
    IL_000B: call Z0.N8 zfunc::get_n8()
    IL_0010: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.VData::packusLo(Z0.N128,Z0.N16,Z0.N8)
    IL_0015: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vshuf16x8(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_001A: ldarg.1
    IL_001B: call Z0.N128 zfunc::get_n128()
    IL_0020: call Z0.N16 zfunc::get_n16()
    IL_0025: call Z0.N8 zfunc::get_n8()
    IL_002A: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.VData::packusHi(Z0.N128,Z0.N16,Z0.N8)
    IL_002F: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vshuf16x8(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0034: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vor(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0039: call System.Runtime.Intrinsics.Vector128`1<System.Byte> zfunc::v8u<System.UInt16>(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_003E: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664885, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vpackus(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
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
// Id := 100664886, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vpackus(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
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
// Id := 100664887, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vpackus_alt(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
// Vector128<ushort> vpackus_alt(Vector128<uint> x, Vector128<uint> y)
// AggressiveInlining
Vector128<ushort> vpackus_alt(Vector128<uint> x, Vector128<uint> y)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: call Z0.N32 zfunc::get_n32()
    IL_000B: call Z0.N16 zfunc::get_n16()
    IL_0010: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.VData::packusLo(Z0.N128,Z0.N32,Z0.N16)
    IL_0015: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vshuf16x8(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_001A: stloc.0
    IL_001B: ldarg.1
    IL_001C: call Z0.N128 zfunc::get_n128()
    IL_0021: call Z0.N32 zfunc::get_n32()
    IL_0026: call Z0.N16 zfunc::get_n16()
    IL_002B: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.VData::packusHi(Z0.N128,Z0.N32,Z0.N16)
    IL_0030: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vshuf16x8(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0035: stloc.1
    IL_0036: ldloc.0
    IL_0037: ldloc.1
    IL_0038: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vor(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_003D: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> zfunc::v16u<System.UInt32>(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0042: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664888, Name := System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vpackus(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
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
// Id := 100664889, Name := System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vpackus(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
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
// Id := 100664890, Name := System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vpackus_alt(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
// Vector256<byte> vpackus_alt(Vector256<ushort> x, Vector256<ushort> y)
// AggressiveInlining
Vector256<byte> vpackus_alt(Vector256<ushort> x, Vector256<ushort> y)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N256 zfunc::get_n256()
    IL_0006: call Z0.N16 zfunc::get_n16()
    IL_000B: call Z0.N8 zfunc::get_n8()
    IL_0010: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.VData::packusLo(Z0.N256,Z0.N16,Z0.N8)
    IL_0015: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vshuf16x8(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_001A: stloc.0
    IL_001B: ldarg.1
    IL_001C: call Z0.N256 zfunc::get_n256()
    IL_0021: call Z0.N16 zfunc::get_n16()
    IL_0026: call Z0.N8 zfunc::get_n8()
    IL_002B: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.VData::packusHi(Z0.N256,Z0.N16,Z0.N8)
    IL_0030: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vshuf16x8(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0035: stloc.1
    IL_0036: ldloc.0
    IL_0037: ldloc.1
    IL_0038: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vor(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_003D: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<System.UInt16>(System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0042: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664891, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vpackus(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
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
// Id := 100664892, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vpackus(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
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
// Id := 100664893, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vpackus_alt(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
// Vector256<ushort> vpackus_alt(Vector256<uint> x, Vector256<uint> y)
// AggressiveInlining
Vector256<ushort> vpackus_alt(Vector256<uint> x, Vector256<uint> y)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N256 zfunc::get_n256()
    IL_0006: call Z0.N32 zfunc::get_n32()
    IL_000B: call Z0.N16 zfunc::get_n16()
    IL_0010: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.VData::packusLo(Z0.N256,Z0.N32,Z0.N16)
    IL_0015: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vshuf16x8(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_001A: stloc.0
    IL_001B: ldarg.1
    IL_001C: call Z0.N256 zfunc::get_n256()
    IL_0021: call Z0.N32 zfunc::get_n32()
    IL_0026: call Z0.N16 zfunc::get_n16()
    IL_002B: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.VData::packusHi(Z0.N256,Z0.N32,Z0.N16)
    IL_0030: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vshuf16x8(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0035: stloc.1
    IL_0036: ldloc.0
    IL_0037: ldloc.1
    IL_0038: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vor(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_003D: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<System.UInt32>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0042: ret
}
------------------------------------------------------------------------------------------------------------------------
