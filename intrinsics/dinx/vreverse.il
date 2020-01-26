// Id := 100663881, Name := System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vreverse(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<byte> vreverse(Vector128<byte> src)
// AggressiveInlining
Vector128<byte> vreverse(Vector128<byte> src)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.VPattern::vdecrements<System.Byte>(Z0.N128)
    IL_000B: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vshuf16x8(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0010: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663882, Name := System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vreverse(System.Runtime.Intrinsics.Vector128`1<System.SByte>)
// Vector128<sbyte> vreverse(Vector128<sbyte> src)
// AggressiveInlining
Vector128<sbyte> vreverse(Vector128<sbyte> src)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.VPattern::vdecrements<System.SByte>(Z0.N128)
    IL_000B: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vshuf16x8(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0010: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663883, Name := System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vreverse(System.Runtime.Intrinsics.Vector128`1<System.Int16>)
// Vector128<short> vreverse(Vector128<short> src)
// AggressiveInlining
Vector128<short> vreverse(Vector128<short> src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.s 27
    IL_0003: ldc.i4.s 27
    IL_0005: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vshuf4x16(System.Runtime.Intrinsics.Vector128`1<System.Int16>,Z0.Arrange4L,Z0.Arrange4L)
    IL_000A: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vswaphl(System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_000F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663884, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vreverse(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
// Vector128<ushort> vreverse(Vector128<ushort> src)
// AggressiveInlining
Vector128<ushort> vreverse(Vector128<ushort> src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.s 27
    IL_0003: ldc.i4.s 27
    IL_0005: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vshuf4x16(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,Z0.Arrange4L,Z0.Arrange4L)
    IL_000A: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vswaphl(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_000F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663885, Name := System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vreverse(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
// Vector128<int> vreverse(Vector128<int> src)
// AggressiveInlining
Vector128<int> vreverse(Vector128<int> src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.s 27
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vperm4x32(System.Runtime.Intrinsics.Vector128`1<System.Int32>,Z0.Perm4L)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663886, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vreverse(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
// Vector128<uint> vreverse(Vector128<uint> src)
// AggressiveInlining
Vector128<uint> vreverse(Vector128<uint> src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.s 27
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vperm4x32(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,Z0.Perm4L)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663887, Name := System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vreverse(System.Runtime.Intrinsics.Vector128`1<System.Int64>)
// Vector128<long> vreverse(Vector128<long> src)
// AggressiveInlining
Vector128<long> vreverse(Vector128<long> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vswaphl(System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663888, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vreverse(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
// Vector128<ulong> vreverse(Vector128<ulong> src)
// AggressiveInlining
Vector128<ulong> vreverse(Vector128<ulong> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vswaphl(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663889, Name := System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vreverse(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<byte> vreverse(Vector256<byte> src)
// AggressiveInlining
Vector256<byte> vreverse(Vector256<byte> src)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N256 zfunc::get_n256()
    IL_0006: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.VPattern::vdecrements<System.Byte>(Z0.N256)
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vshuf32x8(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0010: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663890, Name := System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vreverse(System.Runtime.Intrinsics.Vector256`1<System.SByte>)
// Vector256<sbyte> vreverse(Vector256<sbyte> src)
// AggressiveInlining
Vector256<sbyte> vreverse(Vector256<sbyte> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector256`1<System.SByte>)
    IL_0006: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vreverse(System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_000B: ldarg.0
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.SByte>)
    IL_0011: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vreverse(System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0016: call System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vconcat(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_001B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663891, Name := System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vreverse(System.Runtime.Intrinsics.Vector256`1<System.Int16>)
// Vector256<short> vreverse(Vector256<short> src)
// AggressiveInlining
Vector256<short> vreverse(Vector256<short> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0006: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vreverse(System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_000B: ldarg.0
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0011: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vreverse(System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0016: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vconcat(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_001B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663892, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vreverse(System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
// Vector256<ushort> vreverse(Vector256<ushort> src)
// AggressiveInlining
Vector256<ushort> vreverse(Vector256<ushort> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0006: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vreverse(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_000B: ldarg.0
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0011: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vreverse(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0016: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vconcat(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_001B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663893, Name := System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vreverse(System.Runtime.Intrinsics.Vector256`1<System.Int32>)
// Vector256<int> vreverse(Vector256<int> src)
// AggressiveInlining
Vector256<int> vreverse(Vector256<int> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::get_MRev256u32()
    IL_0006: call System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vperm8x32(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663894, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vreverse(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
// Vector256<uint> vreverse(Vector256<uint> src)
// AggressiveInlining
Vector256<uint> vreverse(Vector256<uint> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::get_MRev256u32()
    IL_0006: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vperm8x32(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663895, Name := System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vreverse(System.Runtime.Intrinsics.Vector256`1<System.Int64>)
// Vector256<long> vreverse(Vector256<long> src)
// AggressiveInlining
Vector256<long> vreverse(Vector256<long> src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.s 27
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vperm4x64(System.Runtime.Intrinsics.Vector256`1<System.Int64>,Z0.Perm4L)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663896, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vreverse(System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
// Vector256<ulong> vreverse(Vector256<ulong> src)
// AggressiveInlining
Vector256<ulong> vreverse(Vector256<ulong> src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.s 27
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vperm4x64(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,Z0.Perm4L)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
