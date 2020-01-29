// Id := 100663870, Name := System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vperm8x32(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
// Vector256<byte> vperm8x32(Vector256<byte> src, Vector256<uint> spec)
// AggressiveInlining
Vector256<byte> vperm8x32(Vector256<byte> src, Vector256<uint> spec)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<System.Byte>(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::PermuteVar8x32(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<System.UInt32>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663871, Name := System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vperm8x32(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
// Vector256<sbyte> vperm8x32(Vector256<sbyte> src, Vector256<uint> spec)
// AggressiveInlining
Vector256<sbyte> vperm8x32(Vector256<sbyte> src, Vector256<uint> spec)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<System.SByte>(System.Runtime.Intrinsics.Vector256`1<System.SByte>)
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::PermuteVar8x32(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.SByte> zfunc::v8i<System.UInt32>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663872, Name := System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vperm8x32(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
// Vector256<short> vperm8x32(Vector256<short> src, Vector256<uint> spec)
// AggressiveInlining
Vector256<short> vperm8x32(Vector256<short> src, Vector256<uint> spec)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<System.Int16>(System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::PermuteVar8x32(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.Int16> zfunc::v16i<System.UInt32>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663873, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vperm8x32(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
// Vector256<ushort> vperm8x32(Vector256<ushort> src, Vector256<uint> spec)
// AggressiveInlining
Vector256<ushort> vperm8x32(Vector256<ushort> src, Vector256<uint> spec)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<System.UInt16>(System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::PermuteVar8x32(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<System.UInt32>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663874, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vperm8x32(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
// Vector256<uint> vperm8x32(Vector256<uint> src, Vector256<uint> spec)
// AggressiveInlining
Vector256<uint> vperm8x32(Vector256<uint> src, Vector256<uint> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::PermuteVar8x32(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663875, Name := System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vperm8x32(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
// Vector256<int> vperm8x32(Vector256<int> src, Vector256<uint> spec)
// AggressiveInlining
Vector256<int> vperm8x32(Vector256<int> src, Vector256<uint> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Int32> zfunc::v32i<System.UInt32>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::PermuteVar8x32(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663876, Name := System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vperm8x32(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
// Vector256<long> vperm8x32(Vector256<long> src, Vector256<uint> spec)
// AggressiveInlining
Vector256<long> vperm8x32(Vector256<long> src, Vector256<uint> spec)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<System.Int64>(System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::PermuteVar8x32(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.Int64> zfunc::v64i<System.UInt32>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663877, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vperm8x32(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
// Vector256<ulong> vperm8x32(Vector256<ulong> src, Vector256<uint> spec)
// AggressiveInlining
Vector256<ulong> vperm8x32(Vector256<ulong> src, Vector256<uint> spec)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<System.UInt64>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::PermuteVar8x32(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<System.UInt32>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
