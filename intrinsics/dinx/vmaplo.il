// System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vmaplo(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,Z0.N128,System.UInt64)
// Vector128<ulong> vmaplo(Vector128<uint> src, N128 w, ulong t)
// AggressiveInlining
Vector128<ulong> vmaplo(Vector128<uint> src, N128 w, ulong t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Int64> System.Runtime.Intrinsics.X86.Sse41::ConvertToVector128Int64(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0006: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> zfunc::v64u<System.Int64>(System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vmaplo(System.Runtime.Intrinsics.Vector256`1<System.SByte>,Z0.N256,System.Int16)
// Vector256<short> vmaplo(Vector256<sbyte> src, N256 w, short t)
// AggressiveInlining
Vector256<short> vmaplo(Vector256<sbyte> src, N256 w, short t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.SByte>)
    IL_0006: call System.Runtime.Intrinsics.Vector256`1<System.Int16> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int16(System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vmaplo(System.Runtime.Intrinsics.Vector256`1<System.Byte>,Z0.N256,System.UInt16)
// Vector256<ushort> vmaplo(Vector256<byte> src, N256 w, ushort t)
// AggressiveInlining
Vector256<ushort> vmaplo(Vector256<byte> src, N256 w, ushort t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0006: call System.Runtime.Intrinsics.Vector256`1<System.Int16> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int16(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<System.Int16>(System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0010: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vmaplo(System.Runtime.Intrinsics.Vector256`1<System.Byte>,Z0.N256,System.Int16)
// Vector256<short> vmaplo(Vector256<byte> src, N256 w, short t)
// AggressiveInlining
Vector256<short> vmaplo(Vector256<byte> src, N256 w, short t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0006: call System.Runtime.Intrinsics.Vector256`1<System.Int16> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int16(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vmaplo(System.Runtime.Intrinsics.Vector256`1<System.Int16>,Z0.N256,System.Int32)
// Vector256<int> vmaplo(Vector256<short> src, N256 w, int t)
// AggressiveInlining
Vector256<int> vmaplo(Vector256<short> src, N256 w, int t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0006: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int32(System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vmaplo(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,Z0.N256,System.UInt32)
// Vector256<uint> vmaplo(Vector256<ushort> src, N256 w, uint t)
// AggressiveInlining
Vector256<uint> vmaplo(Vector256<ushort> src, N256 w, uint t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0006: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int32(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<System.Int32>(System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_0010: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vmaplo(System.Runtime.Intrinsics.Vector256`1<System.Int32>,Z0.N256,System.Int64)
// Vector256<long> vmaplo(Vector256<int> src, N256 w, long t)
// AggressiveInlining
Vector256<long> vmaplo(Vector256<int> src, N256 w, long t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_0006: call System.Runtime.Intrinsics.Vector256`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int64(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vmaplo(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,Z0.N256,System.UInt64)
// Vector256<ulong> vmaplo(Vector256<uint> src, N256 w, ulong t)
// AggressiveInlining
Vector256<ulong> vmaplo(Vector256<uint> src, N256 w, ulong t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0006: call System.Runtime.Intrinsics.Vector256`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int64(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<System.Int64>(System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_0010: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vmaplo(System.Runtime.Intrinsics.Vector128`1<System.SByte>,Z0.N128,System.Int16)
// Vector128<short> vmaplo(Vector128<sbyte> src, N128 w, short t)
// AggressiveInlining
Vector128<short> vmaplo(Vector128<sbyte> src, N128 w, short t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Int16> System.Runtime.Intrinsics.X86.Sse41::ConvertToVector128Int16(System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vmaplo(System.Runtime.Intrinsics.Vector128`1<System.SByte>,Z0.N128,System.UInt16)
// Vector128<ushort> vmaplo(Vector128<sbyte> src, N128 w, ushort t)
// AggressiveInlining
Vector128<ushort> vmaplo(Vector128<sbyte> src, N128 w, ushort t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Int16> System.Runtime.Intrinsics.X86.Sse41::ConvertToVector128Int16(System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0006: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> zfunc::v16u<System.Int16>(System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vmaplo(System.Runtime.Intrinsics.Vector128`1<System.SByte>,Z0.N256,System.Int32)
// Vector256<int> vmaplo(Vector128<sbyte> src, N256 w, int t)
// AggressiveInlining
Vector256<int> vmaplo(Vector128<sbyte> src, N256 w, int t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int32(System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vmaplo(System.Runtime.Intrinsics.Vector128`1<System.Byte>,Z0.N128,System.Int16)
// Vector128<short> vmaplo(Vector128<byte> src, N128 w, short t)
// AggressiveInlining
Vector128<short> vmaplo(Vector128<byte> src, N128 w, short t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Int16> System.Runtime.Intrinsics.X86.Sse41::ConvertToVector128Int16(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vmaplo(System.Runtime.Intrinsics.Vector128`1<System.Byte>,Z0.N128,System.UInt16)
// Vector128<ushort> vmaplo(Vector128<byte> src, N128 w, ushort t)
// AggressiveInlining
Vector128<ushort> vmaplo(Vector128<byte> src, N128 w, ushort t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Int16> System.Runtime.Intrinsics.X86.Sse41::ConvertToVector128Int16(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0006: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> zfunc::v16u<System.Int16>(System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vmaplo(System.Runtime.Intrinsics.Vector128`1<System.Byte>,Z0.N256,System.UInt32)
// Vector256<uint> vmaplo(Vector128<byte> src, N256 w, uint t)
// AggressiveInlining
Vector256<uint> vmaplo(Vector128<byte> src, N256 w, uint t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int32(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0006: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<System.Int32>(System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vmaplo(System.Runtime.Intrinsics.Vector128`1<System.Byte>,Z0.N256,System.Int32)
// Vector256<int> vmaplo(Vector128<byte> src, N256 w, int t)
// AggressiveInlining
Vector256<int> vmaplo(Vector128<byte> src, N256 w, int t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int32(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vmaplo(System.Runtime.Intrinsics.Vector128`1<System.Int16>,Z0.N128,System.Int32)
// Vector128<int> vmaplo(Vector128<short> src, N128 w, int t)
// AggressiveInlining
Vector128<int> vmaplo(Vector128<short> src, N128 w, int t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Int32> System.Runtime.Intrinsics.X86.Sse41::ConvertToVector128Int32(System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vmaplo(System.Runtime.Intrinsics.Vector128`1<System.Int16>,Z0.N256,System.Int64)
// Vector256<long> vmaplo(Vector128<short> src, N256 w, long t)
// AggressiveInlining
Vector256<long> vmaplo(Vector128<short> src, N256 w, long t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int64(System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vmaplo(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,Z0.N128,System.UInt32)
// Vector128<uint> vmaplo(Vector128<ushort> src, N128 w, uint t)
// AggressiveInlining
Vector128<uint> vmaplo(Vector128<ushort> src, N128 w, uint t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Int32> System.Runtime.Intrinsics.X86.Sse41::ConvertToVector128Int32(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0006: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> zfunc::v32u<System.Int32>(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vmaplo(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,Z0.N256,System.Int64)
// Vector256<long> vmaplo(Vector128<ushort> src, N256 w, long t)
// AggressiveInlining
Vector256<long> vmaplo(Vector128<ushort> src, N256 w, long t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int64(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vmaplo(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,Z0.N256,System.UInt64)
// Vector256<ulong> vmaplo(Vector128<ushort> src, N256 w, ulong t)
// AggressiveInlining
Vector256<ulong> vmaplo(Vector128<ushort> src, N256 w, ulong t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int64(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0006: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<System.Int64>(System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vmaplo(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,Z0.N128,System.Int64)
// Vector128<long> vmaplo(Vector128<uint> src, N128 w, long t)
// AggressiveInlining
Vector128<long> vmaplo(Vector128<uint> src, N128 w, long t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Int64> System.Runtime.Intrinsics.X86.Sse41::ConvertToVector128Int64(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
