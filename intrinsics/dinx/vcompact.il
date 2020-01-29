// System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>,Z0.N128,System.SByte)
// Vector128<sbyte> vcompact(Vector128<short> x, Vector128<short> y, N128 w, sbyte t)
// AggressiveInlining
Vector128<sbyte> vcompact(Vector128<short> x, Vector128<short> y, N128 w, sbyte t)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vpackss(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>,Z0.N128,System.Byte)
// Vector128<byte> vcompact(Vector128<short> x, Vector128<short> y, N128 w, byte t)
// AggressiveInlining
Vector128<byte> vcompact(Vector128<short> x, Vector128<short> y, N128 w, byte t)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vpackus(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>,Z0.N256,System.SByte)
// Vector256<sbyte> vcompact(Vector256<short> x, Vector256<short> y, N256 w, sbyte t)
// AggressiveInlining
Vector256<sbyte> vcompact(Vector256<short> x, Vector256<short> y, N256 w, sbyte t)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vpackss(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0007: ldc.i4 216
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vperm4x64(System.Runtime.Intrinsics.Vector256`1<System.SByte>,Z0.Perm4L)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.Int16>,Z0.N128,System.SByte)
// Vector128<sbyte> vcompact(Vector256<short> src, N128 w, sbyte t)
// AggressiveInlining
Vector128<sbyte> vcompact(Vector256<short> src, N128 w, sbyte t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0006: ldarg.0
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vpackss(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.Int16>,Z0.N128,System.Byte)
// Vector128<byte> vcompact(Vector256<short> src, N128 w, byte t)
// AggressiveInlining
Vector128<byte> vcompact(Vector256<short> src, N128 w, byte t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0006: ldarg.0
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vpackss(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0011: call System.Runtime.Intrinsics.Vector128`1<System.Byte> zfunc::v8u<System.SByte>(System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0016: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>,Z0.N128,System.Byte)
// Vector128<byte> vcompact(Vector128<ushort> x, Vector128<ushort> y, N128 w, byte t)
// AggressiveInlining
Vector128<byte> vcompact(Vector128<ushort> x, Vector128<ushort> y, N128 w, byte t)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vpackus(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,Z0.N128,System.Byte)
// Vector128<byte> vcompact(Vector128<ushort> x, N128 w, byte t)
// AggressiveInlining
Vector128<byte> vcompact(Vector128<ushort> x, N128 w, byte t)
{
    IL_0000: ldarg.0
    IL_0001: ldloca.s V_0
    IL_0003: initobj System.Runtime.Intrinsics.Vector128`1<System.UInt16>
    IL_0009: ldloc.0
    IL_000A: ldarg.1
    IL_000B: ldarg.2
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>,Z0.N128,System.Byte)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,Z0.N128,System.Byte)
// Vector128<byte> vcompact(Vector256<ushort> src, N128 w, byte t)
// AggressiveInlining
Vector128<byte> vcompact(Vector256<ushort> src, N128 w, byte t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0006: ldarg.0
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vpackus(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>,Z0.N256,System.Byte)
// Vector256<byte> vcompact(Vector256<ushort> x, Vector256<ushort> y, N256 w, byte t)
// AggressiveInlining
Vector256<byte> vcompact(Vector256<ushort> x, Vector256<ushort> y, N256 w, byte t)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vpackus(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0007: ldc.i4 216
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vperm4x64(System.Runtime.Intrinsics.Vector256`1<System.Byte>,Z0.Perm4L)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt64 Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,Z0.N64,System.UInt64)
// ulong vcompact(Vector128<ushort> src, N64 w, ulong t)
// AggressiveInlining
ulong vcompact(Vector128<ushort> src, N64 w, ulong t)
{
    IL_0000: ldarg.0
    IL_0001: ldloca.s V_0
    IL_0003: initobj System.Runtime.Intrinsics.Vector128`1<System.UInt16>
    IL_0009: ldloc.0
    IL_000A: call Z0.N128 zfunc::get_n128()
    IL_000F: ldc.i4.0
    IL_0010: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>,Z0.N128,System.Byte)
    IL_0015: ldc.i4.0
    IL_0016: call System.UInt64 zfunc::vcell64<System.Byte>(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Int32)
    IL_001B: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>,Z0.N128,System.Int16)
// Vector128<short> vcompact(Vector128<int> x, Vector128<int> y, N128 w, short t)
// AggressiveInlining
Vector128<short> vcompact(Vector128<int> x, Vector128<int> y, N128 w, short t)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vpackss(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>,Z0.N256,System.Int16)
// Vector256<short> vcompact(Vector256<int> x, Vector256<int> y, N256 w, short t)
// AggressiveInlining
Vector256<short> vcompact(Vector256<int> x, Vector256<int> y, N256 w, short t)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vpackss(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_0007: ldc.i4 216
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vperm4x64(System.Runtime.Intrinsics.Vector256`1<System.Int16>,Z0.Perm4L)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.Int32>,Z0.N128,System.Int16)
// Vector128<short> vcompact(Vector256<int> src, N128 w, short t)
// AggressiveInlining
Vector128<short> vcompact(Vector256<int> src, N128 w, short t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_0006: ldarg.0
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_000C: ldarg.1
    IL_000D: ldarg.2
    IL_000E: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>,Z0.N128,System.Int16)
    IL_0013: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>,Z0.N128,System.UInt16)
// Vector128<ushort> vcompact(Vector128<uint> x, Vector128<uint> y, N128 w, ushort t)
// AggressiveInlining
Vector128<ushort> vcompact(Vector128<uint> x, Vector128<uint> y, N128 w, ushort t)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vpackus(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,Z0.N128,System.UInt16)
// Vector128<ushort> vcompact(Vector256<uint> src, N128 w, ushort t)
// AggressiveInlining
Vector128<ushort> vcompact(Vector256<uint> src, N128 w, ushort t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0006: ldarg.0
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_000C: ldarg.1
    IL_000D: ldarg.2
    IL_000E: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>,Z0.N128,System.UInt16)
    IL_0013: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt64 Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,Z0.N64,System.UInt64)
// ulong vcompact(Vector256<uint> src, N64 w, ulong t)
// AggressiveInlining
ulong vcompact(Vector256<uint> src, N64 w, ulong t)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldc.i4.0
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,Z0.N128,System.UInt16)
    IL_000C: ldarg.1
    IL_000D: ldarg.2
    IL_000E: call System.UInt64 Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,Z0.N64,System.UInt64)
    IL_0013: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,Z0.N128,System.Byte)
// Vector128<byte> vcompact(Vector256<uint> src, N128 w, byte t)
// AggressiveInlining
Vector128<byte> vcompact(Vector256<uint> src, N128 w, byte t)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldc.i4.0
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,Z0.N128,System.UInt16)
    IL_000C: ldarg.1
    IL_000D: ldarg.2
    IL_000E: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,Z0.N128,System.Byte)
    IL_0013: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>,Z0.N256,System.UInt16)
// Vector256<ushort> vcompact(Vector256<uint> x, Vector256<uint> y, N256 w, ushort t)
// AggressiveInlining
Vector256<ushort> vcompact(Vector256<uint> x, Vector256<uint> y, N256 w, ushort t)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vpackus(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0007: ldc.i4 216
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vperm4x64(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,Z0.Perm4L)
    IL_0011: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>,Z0.N128,System.Byte)
// Vector128<byte> vcompact(Vector128<uint> x0, Vector128<uint> x1, Vector128<uint> x2, Vector128<uint> x3, N128 w, byte t)
// AggressiveInlining
Vector128<byte> vcompact(Vector128<uint> x0, Vector128<uint> x1, Vector128<uint> x2, Vector128<uint> x3, N128 w, byte t)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call Z0.N128 zfunc::get_n128()
    IL_0007: ldc.i4.0
    IL_0008: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>,Z0.N128,System.UInt16)
    IL_000D: ldarg.2
    IL_000E: ldarg.3
    IL_000F: call Z0.N128 zfunc::get_n128()
    IL_0014: ldc.i4.0
    IL_0015: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>,Z0.N128,System.UInt16)
    IL_001A: ldarg.s w
    IL_001C: ldarg.s t
    IL_001E: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>,Z0.N128,System.Byte)
    IL_0023: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>,Z0.N128,System.Byte)
// Vector128<byte> vcompact(Vector256<uint> x0, Vector256<uint> x1, N128 w, byte t)
// AggressiveInlining
Vector128<byte> vcompact(Vector256<uint> x0, Vector256<uint> x1, N128 w, byte t)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call Z0.N256 zfunc::get_n256()
    IL_0007: ldc.i4.0
    IL_0008: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>,Z0.N256,System.UInt16)
    IL_000D: ldarg.2
    IL_000E: ldarg.3
    IL_000F: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,Z0.N128,System.Byte)
    IL_0014: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vcompact(Z0.Vector512`1<System.UInt32>&,Z0.N128,System.Byte)
// Vector128<byte> vcompact(in Vector512<uint> src, N128 w, byte t)
// AggressiveInlining
Vector128<byte> vcompact(in Vector512<uint> src, N128 w, byte t)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.Vector512`1<System.UInt32>::Lo
    IL_0006: ldarg.0
    IL_0007: ldfld System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.Vector512`1<System.UInt32>::Hi
    IL_000C: ldarg.1
    IL_000D: ldarg.2
    IL_000E: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>,Z0.N128,System.Byte)
    IL_0013: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>,Z0.N256,System.Byte)
// Vector256<byte> vcompact(Vector256<uint> x0, Vector256<uint> x1, Vector256<uint> x2, Vector256<uint> x3, N256 w, byte t)
// AggressiveInlining
Vector256<byte> vcompact(Vector256<uint> x0, Vector256<uint> x1, Vector256<uint> x2, Vector256<uint> x3, N256 w, byte t)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call Z0.N256 zfunc::get_n256()
    IL_0007: ldc.i4.0
    IL_0008: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>,Z0.N256,System.UInt16)
    IL_000D: ldarg.2
    IL_000E: ldarg.3
    IL_000F: call Z0.N256 zfunc::get_n256()
    IL_0014: ldc.i4.0
    IL_0015: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>,Z0.N256,System.UInt16)
    IL_001A: ldarg.s w
    IL_001C: ldarg.s t
    IL_001E: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>,Z0.N256,System.Byte)
    IL_0023: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>,Z0.N128,System.UInt32)
// Vector128<uint> vcompact(Vector128<ulong> x0, Vector128<ulong> x1, N128 w, uint t)
// AggressiveInlining
Vector128<uint> vcompact(Vector128<ulong> x0, Vector128<ulong> x1, N128 w, uint t)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: ldarg.0
    IL_0006: ldc.i4.0
    IL_0007: call System.UInt64 zfunc::vcell<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Int32)
    IL_000C: conv.u4
    IL_000D: ldarg.0
    IL_000E: ldc.i4.1
    IL_000F: call System.UInt64 zfunc::vcell<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Int32)
    IL_0014: conv.u4
    IL_0015: ldarg.1
    IL_0016: ldc.i4.0
    IL_0017: call System.UInt64 zfunc::vcell<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Int32)
    IL_001C: conv.u4
    IL_001D: ldarg.1
    IL_001E: ldc.i4.1
    IL_001F: call System.UInt64 zfunc::vcell<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Int32)
    IL_0024: conv.u4
    IL_0025: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.CpuVector::vparts(Z0.N128,System.UInt32,System.UInt32,System.UInt32,System.UInt32)
    IL_002A: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,Z0.N128,System.UInt32)
// Vector128<uint> vcompact(Vector256<ulong> src, N128 w, uint t)
// AggressiveInlining
Vector128<uint> vcompact(Vector256<ulong> src, N128 w, uint t)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: ldarg.0
    IL_0006: ldc.i4.0
    IL_0007: call System.UInt64 zfunc::vcell<System.UInt64>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Int32)
    IL_000C: conv.u4
    IL_000D: ldarg.0
    IL_000E: ldc.i4.1
    IL_000F: call System.UInt64 zfunc::vcell<System.UInt64>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Int32)
    IL_0014: conv.u4
    IL_0015: ldarg.0
    IL_0016: ldc.i4.2
    IL_0017: call System.UInt64 zfunc::vcell<System.UInt64>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Int32)
    IL_001C: conv.u4
    IL_001D: ldarg.0
    IL_001E: ldc.i4.3
    IL_001F: call System.UInt64 zfunc::vcell<System.UInt64>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Int32)
    IL_0024: conv.u4
    IL_0025: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.CpuVector::vparts(Z0.N128,System.UInt32,System.UInt32,System.UInt32,System.UInt32)
    IL_002A: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.Int64>,Z0.N128,System.Int32)
// Vector128<int> vcompact(Vector256<long> src, N128 w, int t)
// AggressiveInlining
Vector128<int> vcompact(Vector256<long> src, N128 w, int t)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: ldarg.0
    IL_0006: ldc.i4.0
    IL_0007: call System.Int64 zfunc::vcell<System.Int64>(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Int32)
    IL_000C: conv.i4
    IL_000D: ldarg.0
    IL_000E: ldc.i4.1
    IL_000F: call System.Int64 zfunc::vcell<System.Int64>(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Int32)
    IL_0014: conv.i4
    IL_0015: ldarg.0
    IL_0016: ldc.i4.2
    IL_0017: call System.Int64 zfunc::vcell<System.Int64>(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Int32)
    IL_001C: conv.i4
    IL_001D: ldarg.0
    IL_001E: ldc.i4.3
    IL_001F: call System.Int64 zfunc::vcell<System.Int64>(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Int32)
    IL_0024: conv.i4
    IL_0025: call System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.CpuVector::vpartsi(Z0.N128,System.Int32,System.Int32,System.Int32,System.Int32)
    IL_002A: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>,Z0.N256,System.UInt32)
// Vector256<uint> vcompact(Vector256<ulong> x0, Vector256<ulong> x1, N256 w, uint t)
// AggressiveInlining
Vector256<uint> vcompact(Vector256<ulong> x0, Vector256<ulong> x1, N256 w, uint t)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldarg.3
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,Z0.N128,System.UInt32)
    IL_000C: ldarg.1
    IL_000D: call Z0.N128 zfunc::get_n128()
    IL_0012: ldarg.3
    IL_0013: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,Z0.N128,System.UInt32)
    IL_0018: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vconcat(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_001D: ret
}
------------------------------------------------------------------------------------------------------------------------
