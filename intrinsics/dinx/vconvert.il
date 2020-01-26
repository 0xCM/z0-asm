// Id := 100664801, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector128`1<System.SByte>,Z0.N256,System.UInt16)
// Vector256<ushort> vconvert(Vector128<sbyte> src, N256 w, ushort t)
// AggressiveInlining
Vector256<ushort> vconvert(Vector128<sbyte> src, N256 w, ushort t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Int16> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int16(System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0006: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<System.Int16>(System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664802, Name := System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector128`1<System.SByte>,Z0.N256,System.Int16)
// Vector256<Int16> vconvert(Vector128<sbyte> src, N256 w, Int16 t)
// AggressiveInlining
Vector256<Int16> vconvert(Vector128<sbyte> src, N256 w, Int16 t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Int16> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int16(System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664803, Name := System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector128`1<System.SByte>,Z0.N128,System.Int32)
// Vector128<int> vconvert(Vector128<sbyte> src, N128 w, int t)
// AggressiveInlining
Vector128<int> vconvert(Vector128<sbyte> src, N128 w, int t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Int32> System.Runtime.Intrinsics.X86.Sse41::ConvertToVector128Int32(System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664804, Name := Z0.Vector512`1<System.Int32> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector128`1<System.SByte>,Z0.N512,System.Int32)
// Vector512<int> vconvert(Vector128<sbyte> src, N512 w, int t)
// AggressiveInlining
Vector512<int> vconvert(Vector128<sbyte> src, N512 w, int t)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N256 zfunc::get_n256()
    IL_0006: ldarg.2
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vmaplo(System.Runtime.Intrinsics.Vector128`1<System.SByte>,Z0.N256,System.Int32)
    IL_000C: ldarg.0
    IL_000D: call Z0.N256 zfunc::get_n256()
    IL_0012: ldarg.2
    IL_0013: call System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vmaphi(System.Runtime.Intrinsics.Vector128`1<System.SByte>,Z0.N256,System.Int32)
    IL_0018: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>>::.ctor(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_001D: call Z0.Vector512`1<System.Int32> Z0.Vector512`1<System.Int32>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>>)
    IL_0022: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664805, Name := System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector128`1<System.Byte>,Z0.N256,System.Int16)
// Vector256<Int16> vconvert(Vector128<byte> src, N256 w, Int16 t)
// AggressiveInlining
Vector256<Int16> vconvert(Vector128<byte> src, N256 w, Int16 t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Int16> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int16(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664806, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector128`1<System.Byte>,Z0.N256,System.UInt16)
// Vector256<ushort> vconvert(Vector128<byte> src, N256 w, ushort t)
// AggressiveInlining
Vector256<ushort> vconvert(Vector128<byte> src, N256 w, ushort t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Int16> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int16(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0006: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<System.Int16>(System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664807, Name := Z0.Vector512`1<System.UInt32> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector128`1<System.Byte>,Z0.N512,System.UInt32)
// Vector512<uint> vconvert(Vector128<byte> src, N512 w, uint t)
// AggressiveInlining
Vector512<uint> vconvert(Vector128<byte> src, N512 w, uint t)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N256 zfunc::get_n256()
    IL_0006: ldarg.2
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vmaplo(System.Runtime.Intrinsics.Vector128`1<System.Byte>,Z0.N256,System.UInt32)
    IL_000C: ldarg.0
    IL_000D: call Z0.N256 zfunc::get_n256()
    IL_0012: ldarg.2
    IL_0013: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vmaphi(System.Runtime.Intrinsics.Vector128`1<System.Byte>,Z0.N256,System.UInt32)
    IL_0018: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>>::.ctor(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_001D: call Z0.Vector512`1<System.UInt32> Z0.Vector512`1<System.UInt32>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>>)
    IL_0022: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664808, Name := System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector128`1<System.Int16>,Z0.N256,System.Int32)
// Vector256<int> vconvert(Vector128<Int16> src, N256 w, int t)
// AggressiveInlining
Vector256<int> vconvert(Vector128<Int16> src, N256 w, int t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int32(System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664809, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector128`1<System.Int16>,Z0.N256,System.UInt32)
// Vector256<uint> vconvert(Vector128<Int16> src, N256 w, uint t)
// AggressiveInlining
Vector256<uint> vconvert(Vector128<Int16> src, N256 w, uint t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int32(System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0006: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<System.Int32>(System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664810, Name := System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,Z0.N256,System.Int32)
// Vector256<int> vconvert(Vector128<ushort> src, N256 w, int t)
// AggressiveInlining
Vector256<int> vconvert(Vector128<ushort> src, N256 w, int t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int32(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664811, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,Z0.N256,System.UInt32)
// Vector256<uint> vconvert(Vector128<ushort> src, N256 w, uint t)
// AggressiveInlining
Vector256<uint> vconvert(Vector128<ushort> src, N256 w, uint t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int32(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0006: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<System.Int32>(System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664812, Name := System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector128`1<System.Int32>,Z0.N256,System.Int64)
// Vector256<long> vconvert(Vector128<int> src, N256 w, long t)
// AggressiveInlining
Vector256<long> vconvert(Vector128<int> src, N256 w, long t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int64(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664813, Name := System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,Z0.N256,System.Int64)
// Vector256<long> vconvert(Vector128<uint> src, N256 w, long t)
// AggressiveInlining
Vector256<long> vconvert(Vector128<uint> src, N256 w, long t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int64(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664814, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,Z0.N256,System.UInt64)
// Vector256<ulong> vconvert(Vector128<uint> src, N256 w, ulong t)
// AggressiveInlining
Vector256<ulong> vconvert(Vector128<uint> src, N256 w, ulong t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int64(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0006: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<System.Int64>(System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664815, Name := Z0.Vector512`1<System.Int16> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector256`1<System.SByte>,Z0.N512,System.Int16)
// Vector512<Int16> vconvert(Vector256<sbyte> src, N512 w, Int16 t)
// AggressiveInlining
Vector512<Int16> vconvert(Vector256<sbyte> src, N512 w, Int16 t)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N256 zfunc::get_n256()
    IL_0006: ldc.i4.0
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vmaplo(System.Runtime.Intrinsics.Vector256`1<System.SByte>,Z0.N256,System.Int16)
    IL_000C: ldarg.0
    IL_000D: call Z0.N256 zfunc::get_n256()
    IL_0012: ldc.i4.0
    IL_0013: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vmaphi(System.Runtime.Intrinsics.Vector256`1<System.SByte>,Z0.N256,System.Int16)
    IL_0018: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>>::.ctor(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_001D: call Z0.Vector512`1<System.Int16> Z0.Vector512`1<System.Int16>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>>)
    IL_0022: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664816, Name := Z0.Vector1024`1<System.Int32> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector256`1<System.SByte>,Z0.N1024,System.Int32)
// Vector1024<int> vconvert(Vector256<sbyte> src, N1024 w, int t)
// AggressiveInlining
Vector1024<int> vconvert(Vector256<sbyte> src, N1024 w, int t)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N512 zfunc::get_n512()
    IL_0006: ldc.i4.0
    IL_0007: call Z0.Vector512`1<System.Int16> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector256`1<System.SByte>,Z0.N512,System.Int16)
    IL_000C: stloc.s V_6
    IL_000E: ldloca.s V_6
    IL_0010: ldloca.s V_7
    IL_0012: ldloca.s V_8
    IL_0014: call System.Void Z0.Vector512`1<System.Int16>::Deconstruct(System.Runtime.Intrinsics.Vector256`1<System.Int16>&,System.Runtime.Intrinsics.Vector256`1<System.Int16>&)
    IL_0019: ldloc.s V_7
    IL_001B: stloc.0
    IL_001C: ldloc.s V_8
    IL_001E: stloc.1
    IL_001F: ldloc.0
    IL_0020: call Z0.N256 zfunc::get_n256()
    IL_0025: ldc.i4.0
    IL_0026: call System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vmaplo(System.Runtime.Intrinsics.Vector256`1<System.Int16>,Z0.N256,System.Int32)
    IL_002B: stloc.2
    IL_002C: ldloc.0
    IL_002D: call Z0.N256 zfunc::get_n256()
    IL_0032: ldc.i4.0
    IL_0033: call System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vmaphi(System.Runtime.Intrinsics.Vector256`1<System.Int16>,Z0.N256,System.Int32)
    IL_0038: stloc.3
    IL_0039: ldloc.1
    IL_003A: call Z0.N256 zfunc::get_n256()
    IL_003F: ldc.i4.0
    IL_0040: call System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vmaplo(System.Runtime.Intrinsics.Vector256`1<System.Int16>,Z0.N256,System.Int32)
    IL_0045: stloc.s V_4
    IL_0047: ldloc.1
    IL_0048: call Z0.N256 zfunc::get_n256()
    IL_004D: ldc.i4.0
    IL_004E: call System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vmaphi(System.Runtime.Intrinsics.Vector256`1<System.Int16>,Z0.N256,System.Int32)
    IL_0053: stloc.s V_5
    IL_0055: ldloc.2
    IL_0056: ldloc.3
    IL_0057: ldloc.s V_4
    IL_0059: ldloc.s V_5
    IL_005B: newobj System.Void System.ValueTuple`4<System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>>::.ctor(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_0060: stloc.s V_9
    IL_0062: ldloca.s V_9
    IL_0064: call Z0.Vector1024`1<System.Int32> Z0.Vector1024`1<System.Int32>::op_Implicit(System.ValueTuple`4<System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>>&)
    IL_0069: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664817, Name := Z0.Vector512`1<System.UInt16> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector256`1<System.Byte>,Z0.N512,System.UInt16)
// Vector512<ushort> vconvert(Vector256<byte> src, N512 w, ushort t)
// AggressiveInlining
Vector512<ushort> vconvert(Vector256<byte> src, N512 w, ushort t)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N256 zfunc::get_n256()
    IL_0006: ldc.i4.0
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vmaplo(System.Runtime.Intrinsics.Vector256`1<System.Byte>,Z0.N256,System.UInt16)
    IL_000C: ldarg.0
    IL_000D: call Z0.N256 zfunc::get_n256()
    IL_0012: ldc.i4.0
    IL_0013: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vmaphi(System.Runtime.Intrinsics.Vector256`1<System.Byte>,Z0.N256,System.UInt16)
    IL_0018: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>>::.ctor(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_001D: call Z0.Vector512`1<System.UInt16> Z0.Vector512`1<System.UInt16>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>>)
    IL_0022: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664818, Name := Z0.Vector512`1<System.Int16> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector256`1<System.Byte>,Z0.N512,System.Int16)
// Vector512<Int16> vconvert(Vector256<byte> src, N512 w, Int16 t)
// AggressiveInlining
Vector512<Int16> vconvert(Vector256<byte> src, N512 w, Int16 t)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N256 zfunc::get_n256()
    IL_0006: ldc.i4.0
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vmaplo(System.Runtime.Intrinsics.Vector256`1<System.Byte>,Z0.N256,System.Int16)
    IL_000C: ldarg.0
    IL_000D: call Z0.N256 zfunc::get_n256()
    IL_0012: ldc.i4.0
    IL_0013: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vmaphi(System.Runtime.Intrinsics.Vector256`1<System.Byte>,Z0.N256,System.Int16)
    IL_0018: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>>::.ctor(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_001D: call Z0.Vector512`1<System.Int16> Z0.Vector512`1<System.Int16>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>>)
    IL_0022: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664819, Name := Z0.Vector1024`1<System.UInt32> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector256`1<System.Byte>,Z0.N1024,System.UInt32)
// Vector1024<uint> vconvert(Vector256<byte> src, N1024 w, uint t)
// AggressiveInlining
Vector1024<uint> vconvert(Vector256<byte> src, N1024 w, uint t)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N512 zfunc::get_n512()
    IL_0006: ldc.i4.0
    IL_0007: call Z0.Vector512`1<System.UInt16> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector256`1<System.Byte>,Z0.N512,System.UInt16)
    IL_000C: stloc.s V_6
    IL_000E: ldloca.s V_6
    IL_0010: ldloca.s V_7
    IL_0012: ldloca.s V_8
    IL_0014: call System.Void Z0.Vector512`1<System.UInt16>::Deconstruct(System.Runtime.Intrinsics.Vector256`1<System.UInt16>&,System.Runtime.Intrinsics.Vector256`1<System.UInt16>&)
    IL_0019: ldloc.s V_7
    IL_001B: stloc.0
    IL_001C: ldloc.s V_8
    IL_001E: stloc.1
    IL_001F: ldloc.0
    IL_0020: call Z0.N512 zfunc::get_n512()
    IL_0025: ldarg.2
    IL_0026: call Z0.Vector512`1<System.UInt32> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,Z0.N512,System.UInt32)
    IL_002B: stloc.s V_9
    IL_002D: ldloca.s V_9
    IL_002F: ldloca.s V_10
    IL_0031: ldloca.s V_11
    IL_0033: call System.Void Z0.Vector512`1<System.UInt32>::Deconstruct(System.Runtime.Intrinsics.Vector256`1<System.UInt32>&,System.Runtime.Intrinsics.Vector256`1<System.UInt32>&)
    IL_0038: ldloc.s V_10
    IL_003A: stloc.2
    IL_003B: ldloc.s V_11
    IL_003D: stloc.3
    IL_003E: ldloc.1
    IL_003F: call Z0.N512 zfunc::get_n512()
    IL_0044: ldarg.2
    IL_0045: call Z0.Vector512`1<System.UInt32> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,Z0.N512,System.UInt32)
    IL_004A: stloc.s V_9
    IL_004C: ldloca.s V_9
    IL_004E: ldloca.s V_11
    IL_0050: ldloca.s V_10
    IL_0052: call System.Void Z0.Vector512`1<System.UInt32>::Deconstruct(System.Runtime.Intrinsics.Vector256`1<System.UInt32>&,System.Runtime.Intrinsics.Vector256`1<System.UInt32>&)
    IL_0057: ldloc.s V_11
    IL_0059: stloc.s V_4
    IL_005B: ldloc.s V_10
    IL_005D: stloc.s V_5
    IL_005F: ldloc.2
    IL_0060: ldloc.3
    IL_0061: ldloc.s V_4
    IL_0063: ldloc.s V_5
    IL_0065: newobj System.Void System.ValueTuple`4<System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>>::.ctor(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_006A: stloc.s V_12
    IL_006C: ldloca.s V_12
    IL_006E: call Z0.Vector1024`1<System.UInt32> Z0.Vector1024`1<System.UInt32>::op_Implicit(System.ValueTuple`4<System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>>&)
    IL_0073: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664820, Name := Z0.Vector512`1<System.Int64> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector128`1<System.Int16>,Z0.N512,System.Int64)
// Vector512<long> vconvert(Vector128<Int16> src, N512 w, long t)
// AggressiveInlining
Vector512<long> vconvert(Vector128<Int16> src, N512 w, long t)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N256 zfunc::get_n256()
    IL_0006: ldc.i4.0
    IL_0007: conv.i8
    IL_0008: call System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vmaplo(System.Runtime.Intrinsics.Vector128`1<System.Int16>,Z0.N256,System.Int64)
    IL_000D: ldarg.0
    IL_000E: call Z0.N256 zfunc::get_n256()
    IL_0013: ldc.i4.0
    IL_0014: conv.i8
    IL_0015: call System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vmaphi(System.Runtime.Intrinsics.Vector128`1<System.Int16>,Z0.N256,System.Int64)
    IL_001A: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>>::.ctor(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_001F: call Z0.Vector512`1<System.Int64> Z0.Vector512`1<System.Int64>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>>)
    IL_0024: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664821, Name := Z0.Vector512`1<System.UInt64> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,Z0.N512,System.UInt64)
// Vector512<ulong> vconvert(Vector128<ushort> src, N512 w, ulong t)
// AggressiveInlining
Vector512<ulong> vconvert(Vector128<ushort> src, N512 w, ulong t)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N256 zfunc::get_n256()
    IL_0006: ldc.i4.0
    IL_0007: conv.i8
    IL_0008: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vmaplo(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,Z0.N256,System.UInt64)
    IL_000D: ldarg.0
    IL_000E: call Z0.N256 zfunc::get_n256()
    IL_0013: ldc.i4.0
    IL_0014: conv.i8
    IL_0015: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vmaphi(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,Z0.N256,System.UInt64)
    IL_001A: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>>::.ctor(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_001F: call Z0.Vector512`1<System.UInt64> Z0.Vector512`1<System.UInt64>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>>)
    IL_0024: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664822, Name := Z0.Vector1024`1<System.UInt64> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,Z0.N1024,System.UInt64)
// Vector1024<ulong> vconvert(Vector256<ushort> src, N1024 w, ulong t)
// AggressiveInlining
Vector1024<ulong> vconvert(Vector256<ushort> src, N1024 w, ulong t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0006: call Z0.N512 zfunc::get_n512()
    IL_000B: ldarg.2
    IL_000C: call Z0.Vector512`1<System.UInt64> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,Z0.N512,System.UInt64)
    IL_0011: ldarg.0
    IL_0012: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0017: call Z0.N512 zfunc::get_n512()
    IL_001C: ldarg.2
    IL_001D: call Z0.Vector512`1<System.UInt64> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,Z0.N512,System.UInt64)
    IL_0022: newobj System.Void System.ValueTuple`2<Z0.Vector512`1<System.UInt64>,Z0.Vector512`1<System.UInt64>>::.ctor(Z0.Vector512`1<System.UInt64>,Z0.Vector512`1<System.UInt64>)
    IL_0027: stloc.0
    IL_0028: ldloca.s V_0
    IL_002A: call Z0.Vector1024`1<System.UInt64> Z0.Vector1024`1<System.UInt64>::op_Implicit(System.ValueTuple`2<Z0.Vector512`1<System.UInt64>,Z0.Vector512`1<System.UInt64>>&)
    IL_002F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664823, Name := Z0.Vector512`1<System.Int32> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector256`1<System.Int16>,Z0.N512,System.Int32)
// Vector512<int> vconvert(Vector256<Int16> src, N512 w, int t)
// AggressiveInlining
Vector512<int> vconvert(Vector256<Int16> src, N512 w, int t)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N256 zfunc::get_n256()
    IL_0006: ldarg.2
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vmaplo(System.Runtime.Intrinsics.Vector256`1<System.Int16>,Z0.N256,System.Int32)
    IL_000C: ldarg.0
    IL_000D: call Z0.N256 zfunc::get_n256()
    IL_0012: ldarg.2
    IL_0013: call System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vmaphi(System.Runtime.Intrinsics.Vector256`1<System.Int16>,Z0.N256,System.Int32)
    IL_0018: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>>::.ctor(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_001D: call Z0.Vector512`1<System.Int32> Z0.Vector512`1<System.Int32>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>>)
    IL_0022: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664824, Name := Z0.Vector512`1<System.UInt32> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,Z0.N512,System.UInt32)
// Vector512<uint> vconvert(Vector256<ushort> src, N512 w, uint t)
// AggressiveInlining
Vector512<uint> vconvert(Vector256<ushort> src, N512 w, uint t)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N256 zfunc::get_n256()
    IL_0006: ldarg.2
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vmaplo(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,Z0.N256,System.UInt32)
    IL_000C: ldarg.0
    IL_000D: call Z0.N256 zfunc::get_n256()
    IL_0012: ldarg.2
    IL_0013: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vmaphi(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,Z0.N256,System.UInt32)
    IL_0018: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>>::.ctor(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_001D: call Z0.Vector512`1<System.UInt32> Z0.Vector512`1<System.UInt32>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>>)
    IL_0022: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664825, Name := Z0.Vector512`1<System.Int64> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector256`1<System.Int32>,Z0.N512,System.Int64)
// Vector512<long> vconvert(Vector256<int> src, N512 w, long t)
// AggressiveInlining
Vector512<long> vconvert(Vector256<int> src, N512 w, long t)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N256 zfunc::get_n256()
    IL_0006: ldarg.2
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vmaplo(System.Runtime.Intrinsics.Vector256`1<System.Int32>,Z0.N256,System.Int64)
    IL_000C: ldarg.0
    IL_000D: call Z0.N256 zfunc::get_n256()
    IL_0012: ldarg.2
    IL_0013: call System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vmaphi(System.Runtime.Intrinsics.Vector256`1<System.Int32>,Z0.N256,System.Int64)
    IL_0018: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>>::.ctor(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_001D: call Z0.Vector512`1<System.Int64> Z0.Vector512`1<System.Int64>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>>)
    IL_0022: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664826, Name := Z0.Vector512`1<System.UInt64> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,Z0.N512,System.UInt64)
// Vector512<ulong> vconvert(Vector256<uint> src, N512 w, ulong t)
// AggressiveInlining
Vector512<ulong> vconvert(Vector256<uint> src, N512 w, ulong t)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N256 zfunc::get_n256()
    IL_0006: ldarg.2
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vmaplo(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,Z0.N256,System.UInt64)
    IL_000C: ldarg.0
    IL_000D: call Z0.N256 zfunc::get_n256()
    IL_0012: ldarg.2
    IL_0013: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vmaphi(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,Z0.N256,System.UInt64)
    IL_0018: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>>::.ctor(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_001D: call Z0.Vector512`1<System.UInt64> Z0.Vector512`1<System.UInt64>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>>)
    IL_0022: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664827, Name := Z0.Vector512`1<System.Int64> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector256`1<System.Int16>,Z0.N512,System.Int64)
// Vector512<long> vconvert(Vector256<Int16> src, N512 w, long t)
// AggressiveInlining
Vector512<long> vconvert(Vector256<Int16> src, N512 w, long t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0006: call System.Runtime.Intrinsics.Vector256`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int64(System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_000B: ldarg.0
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0011: call System.Runtime.Intrinsics.Vector256`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int64(System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0016: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>>::.ctor(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_001B: call Z0.Vector512`1<System.Int64> Z0.Vector512`1<System.Int64>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
