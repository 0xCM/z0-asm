// System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.Byte>,Z0.N256,System.Int16)
// Vector256<short> vinflate(Vector128<byte> src, N256 w, short t)
// AggressiveInlining
Vector256<short> vinflate(Vector128<byte> src, N256 w, short t)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector128`1<System.Byte>,Z0.N256,System.Int16)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.SByte>,Z0.N256,System.Int16)
// Vector256<short> vinflate(Vector128<sbyte> src, N256 w, short t)
// AggressiveInlining
Vector256<short> vinflate(Vector128<sbyte> src, N256 w, short t)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldarg.2
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vmaplo(System.Runtime.Intrinsics.Vector128`1<System.SByte>,Z0.N128,System.Int16)
    IL_000C: ldarg.0
    IL_000D: call Z0.N128 zfunc::get_n128()
    IL_0012: ldarg.2
    IL_0013: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vmaphi(System.Runtime.Intrinsics.Vector128`1<System.SByte>,Z0.N128,System.Int16)
    IL_0018: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vconcat(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_001D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector512`1<System.Int16> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector256`1<System.Byte>,Z0.N512,System.Int16)
// Vector512<short> vinflate(Vector256<byte> src, N512 w, short t)
// AggressiveInlining
Vector512<short> vinflate(Vector256<byte> src, N512 w, short t)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call Z0.Vector512`1<System.Int16> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector256`1<System.Byte>,Z0.N512,System.Int16)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector512`1<System.Int16> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector256`1<System.SByte>,Z0.N512,System.Int16)
// Vector512<short> vinflate(Vector256<sbyte> src, N512 w, short t)
// AggressiveInlining
Vector512<short> vinflate(Vector256<sbyte> src, N512 w, short t)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call Z0.Vector512`1<System.Int16> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector256`1<System.SByte>,Z0.N512,System.Int16)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.Byte>,Z0.N256,System.UInt16)
// Vector256<ushort> vinflate(Vector128<byte> src, N256 w, ushort t)
// AggressiveInlining
Vector256<ushort> vinflate(Vector128<byte> src, N256 w, ushort t)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector128`1<System.Byte>,Z0.N256,System.UInt16)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector512`1<System.UInt16> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector256`1<System.Byte>,Z0.N512,System.UInt16)
// Vector512<ushort> vinflate(Vector256<byte> src, N512 w, ushort t)
// AggressiveInlining
Vector512<ushort> vinflate(Vector256<byte> src, N512 w, ushort t)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N512 zfunc::get_n512()
    IL_0006: ldarg.2
    IL_0007: call Z0.Vector512`1<System.UInt16> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector256`1<System.Byte>,Z0.N512,System.UInt16)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.Int16>,Z0.N256,System.Int32)
// Vector256<int> vinflate(Vector128<short> src, N256 w, int t)
// AggressiveInlining
Vector256<int> vinflate(Vector128<short> src, N256 w, int t)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector128`1<System.Int16>,Z0.N256,System.Int32)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector512`1<System.Int32> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector256`1<System.Int16>,Z0.N512,System.Int32)
// Vector512<int> vinflate(Vector256<short> src, N512 w, int t)
// AggressiveInlining
Vector512<int> vinflate(Vector256<short> src, N512 w, int t)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call Z0.Vector512`1<System.Int32> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector256`1<System.Int16>,Z0.N512,System.Int32)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,Z0.N256,System.UInt32)
// Vector256<uint> vinflate(Vector128<ushort> src, N256 w, uint t)
// AggressiveInlining
Vector256<uint> vinflate(Vector128<ushort> src, N256 w, uint t)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,Z0.N256,System.UInt32)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector512`1<System.UInt32> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,Z0.N512,System.UInt32)
// Vector512<uint> vinflate(Vector256<ushort> src, N512 w, uint t)
// AggressiveInlining
Vector512<uint> vinflate(Vector256<ushort> src, N512 w, uint t)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call Z0.Vector512`1<System.UInt32> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,Z0.N512,System.UInt32)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector512`1<System.UInt32> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.Byte>,Z0.N512,System.UInt32)
// Vector512<uint> vinflate(Vector128<byte> src, N512 w, uint t)
// AggressiveInlining
Vector512<uint> vinflate(Vector128<byte> src, N512 w, uint t)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call Z0.Vector512`1<System.UInt32> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector128`1<System.Byte>,Z0.N512,System.UInt32)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector1024`1<System.UInt32> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector256`1<System.Byte>,Z0.N1024,System.UInt32)
// Vector1024<uint> vinflate(Vector256<byte> src, N1024 w, uint t)
// AggressiveInlining
Vector1024<uint> vinflate(Vector256<byte> src, N1024 w, uint t)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call Z0.Vector1024`1<System.UInt32> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector256`1<System.Byte>,Z0.N1024,System.UInt32)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector1024`1<System.Int32> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector256`1<System.SByte>,Z0.N1024,System.Int32)
// Vector1024<int> vinflate(Vector256<sbyte> src, N1024 w, int t)
// AggressiveInlining
Vector1024<int> vinflate(Vector256<sbyte> src, N1024 w, int t)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call Z0.Vector1024`1<System.Int32> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector256`1<System.SByte>,Z0.N1024,System.Int32)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,Z0.N256,System.UInt64)
// Vector256<ulong> vinflate(Vector128<uint> src, N256 w, ulong t)
// AggressiveInlining
Vector256<ulong> vinflate(Vector128<uint> src, N256 w, ulong t)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,Z0.N256,System.UInt64)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.Int32>,Z0.N256,System.Int64)
// Vector256<long> vinflate(Vector128<int> src, N256 w, long t)
// AggressiveInlining
Vector256<long> vinflate(Vector128<int> src, N256 w, long t)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector128`1<System.Int32>,Z0.N256,System.Int64)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector512`1<System.UInt64> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,Z0.N512,System.UInt64)
// Vector512<ulong> vinflate(Vector256<uint> src, N512 w, ulong t)
// AggressiveInlining
Vector512<ulong> vinflate(Vector256<uint> src, N512 w, ulong t)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call Z0.Vector512`1<System.UInt64> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,Z0.N512,System.UInt64)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector512`1<System.Int64> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector256`1<System.Int32>,Z0.N512,System.Int64)
// Vector512<long> vinflate(Vector256<int> src, N512 w, long t)
// AggressiveInlining
Vector512<long> vinflate(Vector256<int> src, N512 w, long t)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call Z0.Vector512`1<System.Int64> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector256`1<System.Int32>,Z0.N512,System.Int64)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
