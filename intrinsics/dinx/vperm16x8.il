// Id := 100663797, Name := System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vperm16x8(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<byte> vperm16x8(Vector128<byte> src, Vector128<byte> spec)
// AggressiveInlining
Vector128<byte> vperm16x8(Vector128<byte> src, Vector128<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Byte> System.Runtime.Intrinsics.X86.Ssse3::Shuffle(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663798, Name := System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vperm16x8(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<sbyte> vperm16x8(Vector128<sbyte> src, Vector128<byte> spec)
// AggressiveInlining
Vector128<sbyte> vperm16x8(Vector128<sbyte> src, Vector128<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.SByte> zfunc::v8i<System.Byte>(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.SByte> System.Runtime.Intrinsics.X86.Ssse3::Shuffle(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663799, Name := System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vperm16x8(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<Int16> vperm16x8(Vector128<Int16> src, Vector128<byte> spec)
// AggressiveInlining
Vector128<Int16> vperm16x8(Vector128<Int16> src, Vector128<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Byte> zfunc::v8u<System.Int16>(System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Byte> System.Runtime.Intrinsics.X86.Ssse3::Shuffle(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.Int16> zfunc::v16i<System.Byte>(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663800, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vperm16x8(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<ushort> vperm16x8(Vector128<ushort> src, Vector128<byte> spec)
// AggressiveInlining
Vector128<ushort> vperm16x8(Vector128<ushort> src, Vector128<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Byte> zfunc::v8u<System.UInt16>(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Byte> System.Runtime.Intrinsics.X86.Ssse3::Shuffle(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> zfunc::v16u<System.Byte>(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663801, Name := System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vperm16x8(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<int> vperm16x8(Vector128<int> src, Vector128<byte> spec)
// AggressiveInlining
Vector128<int> vperm16x8(Vector128<int> src, Vector128<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Byte> zfunc::v8u<System.Int32>(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Byte> System.Runtime.Intrinsics.X86.Ssse3::Shuffle(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.Int32> zfunc::v32i<System.Byte>(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663802, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vperm16x8(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<uint> vperm16x8(Vector128<uint> src, Vector128<byte> spec)
// AggressiveInlining
Vector128<uint> vperm16x8(Vector128<uint> src, Vector128<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Byte> zfunc::v8u<System.UInt32>(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Byte> System.Runtime.Intrinsics.X86.Ssse3::Shuffle(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> zfunc::v32u<System.Byte>(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663803, Name := System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vperm16x8(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<long> vperm16x8(Vector128<long> src, Vector128<byte> spec)
// AggressiveInlining
Vector128<long> vperm16x8(Vector128<long> src, Vector128<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Byte> zfunc::v8u<System.Int64>(System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Byte> System.Runtime.Intrinsics.X86.Ssse3::Shuffle(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.Int64> zfunc::v64i<System.Byte>(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663804, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vperm16x8(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<ulong> vperm16x8(Vector128<ulong> src, Vector128<byte> spec)
// AggressiveInlining
Vector128<ulong> vperm16x8(Vector128<ulong> src, Vector128<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Byte> zfunc::v8u<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Byte> System.Runtime.Intrinsics.X86.Ssse3::Shuffle(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> zfunc::v64u<System.Byte>(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663805, Name := System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vperm16x8(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<byte> vperm16x8(Vector256<byte> src, Vector256<byte> spec)
// AggressiveInlining
Vector256<byte> vperm16x8(Vector256<byte> src, Vector256<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Byte> System.Runtime.Intrinsics.X86.Avx2::Shuffle(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663806, Name := System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vperm16x8(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<sbyte> vperm16x8(Vector256<sbyte> src, Vector256<byte> spec)
// AggressiveInlining
Vector256<sbyte> vperm16x8(Vector256<sbyte> src, Vector256<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.SByte> zfunc::v8i<System.Byte>(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.SByte> System.Runtime.Intrinsics.X86.Avx2::Shuffle(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.SByte>)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663807, Name := System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vperm16x8(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<Int16> vperm16x8(Vector256<Int16> src, Vector256<byte> spec)
// AggressiveInlining
Vector256<Int16> vperm16x8(Vector256<Int16> src, Vector256<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<System.Int16>(System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Byte> System.Runtime.Intrinsics.X86.Avx2::Shuffle(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.Int16> zfunc::v16i<System.Byte>(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663808, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vperm16x8(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<ushort> vperm16x8(Vector256<ushort> src, Vector256<byte> spec)
// AggressiveInlining
Vector256<ushort> vperm16x8(Vector256<ushort> src, Vector256<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<System.UInt16>(System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Byte> System.Runtime.Intrinsics.X86.Avx2::Shuffle(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<System.Byte>(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663809, Name := System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vperm16x8(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<int> vperm16x8(Vector256<int> src, Vector256<byte> spec)
// AggressiveInlining
Vector256<int> vperm16x8(Vector256<int> src, Vector256<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<System.Int32>(System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Byte> System.Runtime.Intrinsics.X86.Avx2::Shuffle(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.Int32> zfunc::v32i<System.Byte>(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663810, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vperm16x8(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<uint> vperm16x8(Vector256<uint> src, Vector256<byte> spec)
// AggressiveInlining
Vector256<uint> vperm16x8(Vector256<uint> src, Vector256<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<System.UInt32>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Byte> System.Runtime.Intrinsics.X86.Avx2::Shuffle(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<System.Byte>(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663811, Name := System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vperm16x8(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<long> vperm16x8(Vector256<long> src, Vector256<byte> spec)
// AggressiveInlining
Vector256<long> vperm16x8(Vector256<long> src, Vector256<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<System.Int64>(System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Byte> System.Runtime.Intrinsics.X86.Avx2::Shuffle(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.Int64> zfunc::v64i<System.Byte>(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663812, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vperm16x8(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<ulong> vperm16x8(Vector256<ulong> src, Vector256<byte> spec)
// AggressiveInlining
Vector256<ulong> vperm16x8(Vector256<ulong> src, Vector256<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<System.UInt64>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Byte> System.Runtime.Intrinsics.X86.Avx2::Shuffle(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<System.Byte>(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
