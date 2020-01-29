// Id := 100663704, Name := System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector128<byte> vhi(Vector256<byte> src)
// AggressiveInlining
Vector128<byte> vhi(Vector256<byte> src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Byte> System.Runtime.Intrinsics.X86.Avx::ExtractVector128(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Byte)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663705, Name := System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector256`1<System.Int16>)
// Vector128<short> vhi(Vector256<short> src)
// AggressiveInlining
Vector128<short> vhi(Vector256<short> src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Int16> System.Runtime.Intrinsics.X86.Avx::ExtractVector128(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Byte)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663706, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
// Vector128<ushort> vhi(Vector256<ushort> src)
// AggressiveInlining
Vector128<ushort> vhi(Vector256<ushort> src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> System.Runtime.Intrinsics.X86.Avx::ExtractVector128(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Byte)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663707, Name := System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector256`1<System.Int32>)
// Vector128<int> vhi(Vector256<int> src)
// AggressiveInlining
Vector128<int> vhi(Vector256<int> src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Int32> System.Runtime.Intrinsics.X86.Avx::ExtractVector128(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Byte)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663708, Name := System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector256`1<System.Int64>)
// Vector128<long> vhi(Vector256<long> src)
// AggressiveInlining
Vector128<long> vhi(Vector256<long> src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Int64> System.Runtime.Intrinsics.X86.Avx::ExtractVector128(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Byte)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663709, Name := System.Void Z0.dinx::vhi(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.UInt64&,System.UInt64&)
// void vhi(Vector256<ulong> src, out ulong x0, out ulong x1)
// AggressiveInlining
void vhi(Vector256<ulong> src, out ulong x0, out ulong x1)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0006: stloc.0
    IL_0007: ldarg.1
    IL_0008: ldloc.0
    IL_0009: ldc.i4.0
    IL_000A: call System.UInt64 System.Runtime.Intrinsics.Vector128::GetElement<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Int32)
    IL_000F: stind.i8
    IL_0010: ldarg.2
    IL_0011: ldloc.0
    IL_0012: ldc.i4.1
    IL_0013: call System.UInt64 System.Runtime.Intrinsics.Vector128::GetElement<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Int32)
    IL_0018: stind.i8
    IL_0019: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663710, Name := System.Void Z0.dinx::vhi(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.UInt64&,System.UInt64&)
// void vhi(Vector256<byte> src, out ulong x0, out ulong x1)
// AggressiveInlining
void vhi(Vector256<byte> src, out ulong x0, out ulong x1)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> System.Runtime.Intrinsics.Vector256::AsUInt64<System.Byte>(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0006: ldarg.1
    IL_0007: ldarg.2
    IL_0008: call System.Void Z0.dinx::vhi(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.UInt64&,System.UInt64&)
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663711, Name := Z0.Pair`1<System.UInt64>& Z0.dinx::vhi(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,Z0.Pair`1<System.UInt64>&)
// ref Pair<ulong> vhi(Vector256<ulong> src, ref Pair<ulong> dst)
// AggressiveInlining
ref Pair<ulong> vhi(Vector256<ulong> src, ref Pair<ulong> dst)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0006: stloc.0
    IL_0007: ldarg.1
    IL_0008: ldloc.0
    IL_0009: ldc.i4.0
    IL_000A: call System.UInt64 System.Runtime.Intrinsics.Vector128::GetElement<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Int32)
    IL_000F: stfld System.UInt64 Z0.Pair`1<System.UInt64>::A
    IL_0014: ldarg.1
    IL_0015: ldloc.0
    IL_0016: ldc.i4.1
    IL_0017: call System.UInt64 System.Runtime.Intrinsics.Vector128::GetElement<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Int32)
    IL_001C: stfld System.UInt64 Z0.Pair`1<System.UInt64>::B
    IL_0021: ldarg.1
    IL_0022: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663693, Name := System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector128`1<System.SByte>)
// Vector128<sbyte> vhi(Vector128<sbyte> src)
// AggressiveInlining
Vector128<sbyte> vhi(Vector128<sbyte> src)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: ldarg.0
    IL_0006: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> zfunc::v64u<System.SByte>(System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_000B: ldc.i4.1
    IL_000C: call System.UInt64 System.Runtime.Intrinsics.Vector128::GetElement<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Int32)
    IL_0011: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vscalar(Z0.N128,System.UInt64)
    IL_0016: call System.Runtime.Intrinsics.Vector128`1<System.SByte> zfunc::v8i<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_001B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663694, Name := System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<byte> vhi(Vector128<byte> src)
// AggressiveInlining
Vector128<byte> vhi(Vector128<byte> src)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: ldarg.0
    IL_0006: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> zfunc::v64u<System.Byte>(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_000B: ldc.i4.1
    IL_000C: call System.UInt64 zfunc::vcell<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Int32)
    IL_0011: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vscalar(Z0.N128,System.UInt64)
    IL_0016: call System.Runtime.Intrinsics.Vector128`1<System.Byte> zfunc::v8u<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_001B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663695, Name := System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector128`1<System.Int16>)
// Vector128<short> vhi(Vector128<short> src)
// AggressiveInlining
Vector128<short> vhi(Vector128<short> src)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: ldarg.0
    IL_0006: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> zfunc::v64u<System.Int16>(System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_000B: ldc.i4.1
    IL_000C: call System.UInt64 System.Runtime.Intrinsics.Vector128::GetElement<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Int32)
    IL_0011: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vscalar(Z0.N128,System.UInt64)
    IL_0016: call System.Runtime.Intrinsics.Vector128`1<System.Int16> zfunc::v16i<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_001B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663696, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
// Vector128<ushort> vhi(Vector128<ushort> src)
// AggressiveInlining
Vector128<ushort> vhi(Vector128<ushort> src)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: ldarg.0
    IL_0006: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> zfunc::v64u<System.UInt16>(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_000B: ldc.i4.1
    IL_000C: call System.UInt64 System.Runtime.Intrinsics.Vector128::GetElement<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Int32)
    IL_0011: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vscalar(Z0.N128,System.UInt64)
    IL_0016: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> zfunc::v16u<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_001B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663697, Name := System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
// Vector128<int> vhi(Vector128<int> src)
// AggressiveInlining
Vector128<int> vhi(Vector128<int> src)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: ldarg.0
    IL_0006: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> zfunc::v64u<System.Int32>(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_000B: ldc.i4.1
    IL_000C: call System.UInt64 System.Runtime.Intrinsics.Vector128::GetElement<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Int32)
    IL_0011: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vscalar(Z0.N128,System.UInt64)
    IL_0016: call System.Runtime.Intrinsics.Vector128`1<System.Int32> zfunc::v32i<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_001B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663698, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
// Vector128<uint> vhi(Vector128<uint> src)
// AggressiveInlining
Vector128<uint> vhi(Vector128<uint> src)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: ldarg.0
    IL_0006: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> zfunc::v64u<System.UInt32>(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_000B: ldc.i4.1
    IL_000C: call System.UInt64 System.Runtime.Intrinsics.Vector128::GetElement<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Int32)
    IL_0011: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vscalar(Z0.N128,System.UInt64)
    IL_0016: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> zfunc::v32u<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_001B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663699, Name := System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector128`1<System.Int64>)
// Vector128<long> vhi(Vector128<long> src)
// AggressiveInlining
Vector128<long> vhi(Vector128<long> src)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: ldarg.0
    IL_0006: ldc.i4.1
    IL_0007: call System.Int64 System.Runtime.Intrinsics.Vector128::GetElement<System.Int64>(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Int32)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vscalar(Z0.N128,System.Int64)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663700, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
// Vector128<ulong> vhi(Vector128<ulong> src)
// AggressiveInlining
Vector128<ulong> vhi(Vector128<ulong> src)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: ldarg.0
    IL_0006: ldc.i4.1
    IL_0007: call System.UInt64 System.Runtime.Intrinsics.Vector128::GetElement<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Int32)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vscalar(Z0.N128,System.UInt64)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663701, Name := System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector256`1<System.SByte>)
// Vector128<sbyte> vhi(Vector256<sbyte> src)
// AggressiveInlining
Vector128<sbyte> vhi(Vector256<sbyte> src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.SByte> System.Runtime.Intrinsics.X86.Avx::ExtractVector128(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Byte)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663702, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
// Vector128<uint> vhi(Vector256<uint> src)
// AggressiveInlining
Vector128<uint> vhi(Vector256<uint> src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx::ExtractVector128(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Byte)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663703, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
// Vector128<ulong> vhi(Vector256<ulong> src)
// AggressiveInlining
Vector128<ulong> vhi(Vector256<ulong> src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> System.Runtime.Intrinsics.X86.Avx::ExtractVector128(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Byte)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
