// Id := 100663896, Name := System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vshuf16x8(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
// Vector128<sbyte> vshuf16x8(Vector128<sbyte> src, Vector128<sbyte> spec)
// AggressiveInlining
Vector128<sbyte> vshuf16x8(Vector128<sbyte> src, Vector128<sbyte> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.SByte> System.Runtime.Intrinsics.X86.Ssse3::Shuffle(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663897, Name := System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vshuf16x8(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<byte> vshuf16x8(Vector128<byte> src, Vector128<byte> spec)
// AggressiveInlining
Vector128<byte> vshuf16x8(Vector128<byte> src, Vector128<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Byte> System.Runtime.Intrinsics.X86.Ssse3::Shuffle(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663898, Name := System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vshuf16x8(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<short> vshuf16x8(Vector128<short> src, Vector128<byte> spec)
// AggressiveInlining
Vector128<short> vshuf16x8(Vector128<short> src, Vector128<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Byte> zfunc::v8u<System.Int16>(System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Byte> System.Runtime.Intrinsics.X86.Ssse3::Shuffle(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.Int16> zfunc::v16i<System.Byte>(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663899, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vshuf16x8(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<ushort> vshuf16x8(Vector128<ushort> src, Vector128<byte> spec)
// AggressiveInlining
Vector128<ushort> vshuf16x8(Vector128<ushort> src, Vector128<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Byte> zfunc::v8u<System.UInt16>(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Byte> System.Runtime.Intrinsics.X86.Ssse3::Shuffle(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> zfunc::v16u<System.Byte>(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663900, Name := System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vshuf16x8(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<int> vshuf16x8(Vector128<int> src, Vector128<byte> spec)
// AggressiveInlining
Vector128<int> vshuf16x8(Vector128<int> src, Vector128<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Byte> zfunc::v8u<System.Int32>(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Byte> System.Runtime.Intrinsics.X86.Ssse3::Shuffle(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.Int32> zfunc::v32i<System.Byte>(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663901, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vshuf16x8(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<uint> vshuf16x8(Vector128<uint> src, Vector128<byte> spec)
// AggressiveInlining
Vector128<uint> vshuf16x8(Vector128<uint> src, Vector128<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Byte> zfunc::v8u<System.UInt32>(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Byte> System.Runtime.Intrinsics.X86.Ssse3::Shuffle(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> zfunc::v32u<System.Byte>(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663902, Name := System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vshuf16x8(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<long> vshuf16x8(Vector128<long> src, Vector128<byte> spec)
// AggressiveInlining
Vector128<long> vshuf16x8(Vector128<long> src, Vector128<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Byte> zfunc::v8u<System.Int64>(System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Byte> System.Runtime.Intrinsics.X86.Ssse3::Shuffle(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.Int64> zfunc::v64i<System.Byte>(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663903, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vshuf16x8(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<ulong> vshuf16x8(Vector128<ulong> src, Vector128<byte> spec)
// AggressiveInlining
Vector128<ulong> vshuf16x8(Vector128<ulong> src, Vector128<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Byte> zfunc::v8u<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Byte> System.Runtime.Intrinsics.X86.Ssse3::Shuffle(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> zfunc::v64u<System.Byte>(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663904, Name := System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vshuf16x8(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.SByte>)
// Vector256<sbyte> vshuf16x8(Vector256<sbyte> src, Vector256<sbyte> spec)
// AggressiveInlining
Vector256<sbyte> vshuf16x8(Vector256<sbyte> src, Vector256<sbyte> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.SByte> System.Runtime.Intrinsics.X86.Avx2::Shuffle(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.SByte>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663905, Name := System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vshuf16x8(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<byte> vshuf16x8(Vector256<byte> src, Vector256<byte> spec)
// AggressiveInlining
Vector256<byte> vshuf16x8(Vector256<byte> src, Vector256<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Byte> System.Runtime.Intrinsics.X86.Avx2::Shuffle(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663906, Name := System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vshuf16x8(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<short> vshuf16x8(Vector256<short> src, Vector256<byte> spec)
// AggressiveInlining
Vector256<short> vshuf16x8(Vector256<short> src, Vector256<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<System.Int16>(System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Byte> System.Runtime.Intrinsics.X86.Avx2::Shuffle(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.Int16> zfunc::v16i<System.Byte>(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663907, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vshuf16x8(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<ushort> vshuf16x8(Vector256<ushort> src, Vector256<byte> spec)
// AggressiveInlining
Vector256<ushort> vshuf16x8(Vector256<ushort> src, Vector256<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<System.UInt16>(System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Byte> System.Runtime.Intrinsics.X86.Avx2::Shuffle(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<System.Byte>(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663908, Name := System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vshuf16x8(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<int> vshuf16x8(Vector256<int> src, Vector256<byte> spec)
// AggressiveInlining
Vector256<int> vshuf16x8(Vector256<int> src, Vector256<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<System.Int32>(System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Byte> System.Runtime.Intrinsics.X86.Avx2::Shuffle(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.Int32> zfunc::v32i<System.Byte>(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663909, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vshuf16x8(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<uint> vshuf16x8(Vector256<uint> src, Vector256<byte> spec)
// AggressiveInlining
Vector256<uint> vshuf16x8(Vector256<uint> src, Vector256<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<System.UInt32>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Byte> System.Runtime.Intrinsics.X86.Avx2::Shuffle(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<System.Byte>(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663910, Name := System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vshuf16x8(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<long> vshuf16x8(Vector256<long> src, Vector256<byte> spec)
// AggressiveInlining
Vector256<long> vshuf16x8(Vector256<long> src, Vector256<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<System.Int64>(System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Byte> System.Runtime.Intrinsics.X86.Avx2::Shuffle(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.Int64> zfunc::v64i<System.Byte>(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663911, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vshuf16x8(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<ulong> vshuf16x8(Vector256<ulong> src, Vector256<byte> spec)
// AggressiveInlining
Vector256<ulong> vshuf16x8(Vector256<ulong> src, Vector256<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<System.UInt64>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Byte> System.Runtime.Intrinsics.X86.Avx2::Shuffle(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<System.Byte>(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
