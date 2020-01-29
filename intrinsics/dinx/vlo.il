// Id := 100663728, Name := System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.SByte>)
// Vector128<sbyte> vlo(Vector256<sbyte> src)
// AggressiveInlining
Vector128<sbyte> vlo(Vector256<sbyte> src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.0
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.SByte> System.Runtime.Intrinsics.X86.Avx::ExtractVector128(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Byte)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663729, Name := System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector128<byte> vlo(Vector256<byte> src)
// AggressiveInlining
Vector128<byte> vlo(Vector256<byte> src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.0
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Byte> System.Runtime.Intrinsics.X86.Avx::ExtractVector128(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Byte)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663730, Name := System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.Int16>)
// Vector128<short> vlo(Vector256<short> src)
// AggressiveInlining
Vector128<short> vlo(Vector256<short> src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.0
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Int16> System.Runtime.Intrinsics.X86.Avx::ExtractVector128(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Byte)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663731, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
// Vector128<ushort> vlo(Vector256<ushort> src)
// AggressiveInlining
Vector128<ushort> vlo(Vector256<ushort> src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.0
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> System.Runtime.Intrinsics.X86.Avx::ExtractVector128(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Byte)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663732, Name := System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.Int32>)
// Vector128<int> vlo(Vector256<int> src)
// AggressiveInlining
Vector128<int> vlo(Vector256<int> src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.0
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Int32> System.Runtime.Intrinsics.X86.Avx::ExtractVector128(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Byte)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663733, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
// Vector128<uint> vlo(Vector256<uint> src)
// AggressiveInlining
Vector128<uint> vlo(Vector256<uint> src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.0
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx::ExtractVector128(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Byte)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663734, Name := System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.Int64>)
// Vector128<long> vlo(Vector256<long> src)
// AggressiveInlining
Vector128<long> vlo(Vector256<long> src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.0
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Int64> System.Runtime.Intrinsics.X86.Avx::ExtractVector128(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Byte)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663735, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
// Vector128<ulong> vlo(Vector256<ulong> src)
// AggressiveInlining
Vector128<ulong> vlo(Vector256<ulong> src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.0
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> System.Runtime.Intrinsics.X86.Avx::ExtractVector128(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Byte)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663736, Name := System.Void Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.UInt64&,System.UInt64&)
// void vlo(Vector256<ulong> src, out ulong x0, out ulong x1)
// AggressiveInlining
void vlo(Vector256<ulong> src, out ulong x0, out ulong x1)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldc.i4.0
    IL_0003: call System.UInt64 System.Runtime.Intrinsics.Vector256::GetElement<System.UInt64>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Int32)
    IL_0008: stind.i8
    IL_0009: ldarg.2
    IL_000A: ldarg.0
    IL_000B: ldc.i4.1
    IL_000C: call System.UInt64 System.Runtime.Intrinsics.Vector256::GetElement<System.UInt64>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Int32)
    IL_0011: stind.i8
    IL_0012: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663737, Name := System.Void Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.UInt64&,System.UInt64&)
// void vlo(Vector256<byte> src, out ulong x0, out ulong x1)
// AggressiveInlining
void vlo(Vector256<byte> src, out ulong x0, out ulong x1)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<System.Byte>(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0006: ldarg.1
    IL_0007: ldarg.2
    IL_0008: call System.Void Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.UInt64&,System.UInt64&)
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663738, Name := Z0.Pair`1<System.UInt64>& Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,Z0.Pair`1<System.UInt64>&)
// ref Pair<ulong> vlo(Vector256<ulong> src, ref Pair<ulong> dst)
// AggressiveInlining
ref Pair<ulong> vlo(Vector256<ulong> src, ref Pair<ulong> dst)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldc.i4.0
    IL_0003: call System.UInt64 System.Runtime.Intrinsics.Vector256::GetElement<System.UInt64>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Int32)
    IL_0008: stfld System.UInt64 Z0.Pair`1<System.UInt64>::A
    IL_000D: ldarg.1
    IL_000E: ldarg.0
    IL_000F: ldc.i4.1
    IL_0010: call System.UInt64 System.Runtime.Intrinsics.Vector256::GetElement<System.UInt64>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Int32)
    IL_0015: stfld System.UInt64 Z0.Pair`1<System.UInt64>::B
    IL_001A: ldarg.1
    IL_001B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663739, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vlo(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
// Vector128<ulong> vlo(Vector128<ulong> src)
// AggressiveInlining
Vector128<ulong> vlo(Vector128<ulong> src)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: ldarg.0
    IL_0006: ldc.i4.0
    IL_0007: call System.UInt64 System.Runtime.Intrinsics.Vector128::GetElement<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Int32)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vscalar(Z0.N128,System.UInt64)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
