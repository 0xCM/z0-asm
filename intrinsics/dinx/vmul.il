// Id := 100663544, Name := System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vmul(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
// Vector256<short> vmul(Vector128<sbyte> x, Vector128<sbyte> y)
// AggressiveInlining
Vector256<short> vmul(Vector128<sbyte> x, Vector128<sbyte> y)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N256 zfunc::get_n256()
    IL_0006: ldc.i4.0
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.SByte>,Z0.N256,System.Int16)
    IL_000C: ldarg.1
    IL_000D: call Z0.N256 zfunc::get_n256()
    IL_0012: ldc.i4.0
    IL_0013: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.SByte>,Z0.N256,System.Int16)
    IL_0018: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vmullo(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_001D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663545, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vmul(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector256<ushort> vmul(Vector128<byte> x, Vector128<byte> y)
// AggressiveInlining
Vector256<ushort> vmul(Vector128<byte> x, Vector128<byte> y)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N256 zfunc::get_n256()
    IL_0006: ldc.i4.0
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.Byte>,Z0.N256,System.UInt16)
    IL_000C: stloc.0
    IL_000D: ldarg.1
    IL_000E: call Z0.N256 zfunc::get_n256()
    IL_0013: ldc.i4.0
    IL_0014: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.Byte>,Z0.N256,System.UInt16)
    IL_0019: stloc.1
    IL_001A: ldloc.0
    IL_001B: ldloc.1
    IL_001C: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vmullo(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0021: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663546, Name := System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vmul(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
// Vector256<int> vmul(Vector128<short> x, Vector128<short> y)
// AggressiveInlining
Vector256<int> vmul(Vector128<short> x, Vector128<short> y)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N256 zfunc::get_n256()
    IL_0006: ldc.i4.0
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.Int16>,Z0.N256,System.Int32)
    IL_000C: stloc.0
    IL_000D: ldarg.1
    IL_000E: call Z0.N256 zfunc::get_n256()
    IL_0013: ldc.i4.0
    IL_0014: call System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.Int16>,Z0.N256,System.Int32)
    IL_0019: stloc.1
    IL_001A: ldloc.0
    IL_001B: ldloc.1
    IL_001C: call System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vmullo(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_0021: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663547, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vmul(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
// Vector256<uint> vmul(Vector128<ushort> x, Vector128<ushort> y)
// AggressiveInlining
Vector256<uint> vmul(Vector128<ushort> x, Vector128<ushort> y)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N256 zfunc::get_n256()
    IL_0006: ldc.i4.0
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,Z0.N256,System.UInt32)
    IL_000C: stloc.0
    IL_000D: ldarg.1
    IL_000E: call Z0.N256 zfunc::get_n256()
    IL_0013: ldc.i4.0
    IL_0014: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,Z0.N256,System.UInt32)
    IL_0019: stloc.1
    IL_001A: ldloc.0
    IL_001B: ldloc.1
    IL_001C: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vmullo(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0021: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663548, Name := System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vmul(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
// Vector256<long> vmul(Vector128<int> x, Vector128<int> y)
// AggressiveInlining
Vector256<long> vmul(Vector128<int> x, Vector128<int> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Int64> System.Runtime.Intrinsics.X86.Sse41::Multiply(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0007: stloc.0
    IL_0008: ldarg.0
    IL_0009: call System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vswaphl(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_000E: ldarg.1
    IL_000F: call System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vswaphl(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0014: call System.Runtime.Intrinsics.Vector128`1<System.Int64> System.Runtime.Intrinsics.X86.Sse41::Multiply(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0019: stloc.1
    IL_001A: ldloc.0
    IL_001B: ldloc.1
    IL_001C: call System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vconcat(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_0021: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663549, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vmul(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
// Vector256<ulong> vmul(Vector128<uint> x, Vector128<uint> y)
// AggressiveInlining
Vector256<ulong> vmul(Vector128<uint> x, Vector128<uint> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> System.Runtime.Intrinsics.X86.Sse2::Multiply(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0007: stloc.0
    IL_0008: ldarg.0
    IL_0009: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vswaphl(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_000E: ldarg.1
    IL_000F: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vswaphl(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0014: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> System.Runtime.Intrinsics.X86.Sse2::Multiply(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0019: stloc.1
    IL_001A: ldloc.0
    IL_001B: ldloc.1
    IL_001C: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vconcat(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0021: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663550, Name := Z0.Vector512`1<System.Int16> Z0.dinx::vmul(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.SByte>)
// Vector512<short> vmul(Vector256<sbyte> x, Vector256<sbyte> y)
// AggressiveInlining
Vector512<short> vmul(Vector256<sbyte> x, Vector256<sbyte> y)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N512 zfunc::get_n512()
    IL_0006: ldc.i4.0
    IL_0007: call Z0.Vector512`1<System.Int16> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector256`1<System.SByte>,Z0.N512,System.Int16)
    IL_000C: stloc.s V_4
    IL_000E: ldloca.s V_4
    IL_0010: ldloca.s V_5
    IL_0012: ldloca.s V_6
    IL_0014: call System.Void Z0.Vector512`1<System.Int16>::Deconstruct(System.Runtime.Intrinsics.Vector256`1<System.Int16>&,System.Runtime.Intrinsics.Vector256`1<System.Int16>&)
    IL_0019: ldloc.s V_5
    IL_001B: stloc.0
    IL_001C: ldloc.s V_6
    IL_001E: stloc.1
    IL_001F: ldarg.0
    IL_0020: call Z0.N512 zfunc::get_n512()
    IL_0025: ldc.i4.0
    IL_0026: call Z0.Vector512`1<System.Int16> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector256`1<System.SByte>,Z0.N512,System.Int16)
    IL_002B: stloc.s V_4
    IL_002D: ldloca.s V_4
    IL_002F: ldloca.s V_6
    IL_0031: ldloca.s V_5
    IL_0033: call System.Void Z0.Vector512`1<System.Int16>::Deconstruct(System.Runtime.Intrinsics.Vector256`1<System.Int16>&,System.Runtime.Intrinsics.Vector256`1<System.Int16>&)
    IL_0038: ldloc.s V_6
    IL_003A: stloc.2
    IL_003B: ldloc.s V_5
    IL_003D: stloc.3
    IL_003E: ldloc.0
    IL_003F: ldloc.2
    IL_0040: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vmullo(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0045: ldloc.1
    IL_0046: ldloc.3
    IL_0047: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vmullo(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_004C: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>>::.ctor(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0051: call Z0.Vector512`1<System.Int16> Z0.Vector512`1<System.Int16>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>>)
    IL_0056: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663551, Name := Z0.Vector512`1<System.UInt16> Z0.dinx::vmul(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector512<ushort> vmul(Vector256<byte> x, Vector256<byte> y)
// AggressiveInlining
Vector512<ushort> vmul(Vector256<byte> x, Vector256<byte> y)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N512 zfunc::get_n512()
    IL_0006: ldc.i4.0
    IL_0007: call Z0.Vector512`1<System.UInt16> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector256`1<System.Byte>,Z0.N512,System.UInt16)
    IL_000C: stloc.s V_4
    IL_000E: ldloca.s V_4
    IL_0010: ldloca.s V_5
    IL_0012: ldloca.s V_6
    IL_0014: call System.Void Z0.Vector512`1<System.UInt16>::Deconstruct(System.Runtime.Intrinsics.Vector256`1<System.UInt16>&,System.Runtime.Intrinsics.Vector256`1<System.UInt16>&)
    IL_0019: ldloc.s V_5
    IL_001B: stloc.0
    IL_001C: ldloc.s V_6
    IL_001E: stloc.1
    IL_001F: ldarg.1
    IL_0020: call Z0.N512 zfunc::get_n512()
    IL_0025: ldc.i4.0
    IL_0026: call Z0.Vector512`1<System.UInt16> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector256`1<System.Byte>,Z0.N512,System.UInt16)
    IL_002B: stloc.s V_4
    IL_002D: ldloca.s V_4
    IL_002F: ldloca.s V_6
    IL_0031: ldloca.s V_5
    IL_0033: call System.Void Z0.Vector512`1<System.UInt16>::Deconstruct(System.Runtime.Intrinsics.Vector256`1<System.UInt16>&,System.Runtime.Intrinsics.Vector256`1<System.UInt16>&)
    IL_0038: ldloc.s V_6
    IL_003A: stloc.2
    IL_003B: ldloc.s V_5
    IL_003D: stloc.3
    IL_003E: ldloc.0
    IL_003F: ldloc.2
    IL_0040: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vmullo(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0045: ldloc.1
    IL_0046: ldloc.3
    IL_0047: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vmullo(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_004C: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>>::.ctor(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0051: call Z0.Vector512`1<System.UInt16> Z0.Vector512`1<System.UInt16>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>>)
    IL_0056: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663552, Name := Z0.Vector512`1<System.UInt32> Z0.dinx::vmul(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
// Vector512<uint> vmul(Vector256<ushort> x, Vector256<ushort> y)
// AggressiveInlining
Vector512<uint> vmul(Vector256<ushort> x, Vector256<ushort> y)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N512 zfunc::get_n512()
    IL_0006: ldc.i4.0
    IL_0007: call Z0.Vector512`1<System.UInt32> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,Z0.N512,System.UInt32)
    IL_000C: stloc.s V_4
    IL_000E: ldloca.s V_4
    IL_0010: ldloca.s V_5
    IL_0012: ldloca.s V_6
    IL_0014: call System.Void Z0.Vector512`1<System.UInt32>::Deconstruct(System.Runtime.Intrinsics.Vector256`1<System.UInt32>&,System.Runtime.Intrinsics.Vector256`1<System.UInt32>&)
    IL_0019: ldloc.s V_5
    IL_001B: stloc.0
    IL_001C: ldloc.s V_6
    IL_001E: stloc.1
    IL_001F: ldarg.1
    IL_0020: call Z0.N512 zfunc::get_n512()
    IL_0025: ldc.i4.0
    IL_0026: call Z0.Vector512`1<System.UInt32> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,Z0.N512,System.UInt32)
    IL_002B: stloc.s V_4
    IL_002D: ldloca.s V_4
    IL_002F: ldloca.s V_6
    IL_0031: ldloca.s V_5
    IL_0033: call System.Void Z0.Vector512`1<System.UInt32>::Deconstruct(System.Runtime.Intrinsics.Vector256`1<System.UInt32>&,System.Runtime.Intrinsics.Vector256`1<System.UInt32>&)
    IL_0038: ldloc.s V_6
    IL_003A: stloc.2
    IL_003B: ldloc.s V_5
    IL_003D: stloc.3
    IL_003E: ldloc.0
    IL_003F: ldloc.2
    IL_0040: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vmullo(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0045: ldloc.1
    IL_0046: ldloc.3
    IL_0047: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vmullo(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_004C: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>>::.ctor(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0051: call Z0.Vector512`1<System.UInt32> Z0.Vector512`1<System.UInt32>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>>)
    IL_0056: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663553, Name := Z0.Vector512`1<System.Int32> Z0.dinx::vmul(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
// Vector512<int> vmul(Vector256<short> x, Vector256<short> y)
// AggressiveInlining
Vector512<int> vmul(Vector256<short> x, Vector256<short> y)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N512 zfunc::get_n512()
    IL_0006: ldc.i4.0
    IL_0007: call Z0.Vector512`1<System.Int32> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector256`1<System.Int16>,Z0.N512,System.Int32)
    IL_000C: stloc.s V_4
    IL_000E: ldloca.s V_4
    IL_0010: ldloca.s V_5
    IL_0012: ldloca.s V_6
    IL_0014: call System.Void Z0.Vector512`1<System.Int32>::Deconstruct(System.Runtime.Intrinsics.Vector256`1<System.Int32>&,System.Runtime.Intrinsics.Vector256`1<System.Int32>&)
    IL_0019: ldloc.s V_5
    IL_001B: stloc.0
    IL_001C: ldloc.s V_6
    IL_001E: stloc.1
    IL_001F: ldarg.1
    IL_0020: call Z0.N512 zfunc::get_n512()
    IL_0025: ldc.i4.0
    IL_0026: call Z0.Vector512`1<System.Int32> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector256`1<System.Int16>,Z0.N512,System.Int32)
    IL_002B: stloc.s V_4
    IL_002D: ldloca.s V_4
    IL_002F: ldloca.s V_6
    IL_0031: ldloca.s V_5
    IL_0033: call System.Void Z0.Vector512`1<System.Int32>::Deconstruct(System.Runtime.Intrinsics.Vector256`1<System.Int32>&,System.Runtime.Intrinsics.Vector256`1<System.Int32>&)
    IL_0038: ldloc.s V_6
    IL_003A: stloc.2
    IL_003B: ldloc.s V_5
    IL_003D: stloc.3
    IL_003E: ldloc.0
    IL_003F: ldloc.2
    IL_0040: call System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vmullo(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_0045: ldloc.1
    IL_0046: ldloc.3
    IL_0047: call System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vmullo(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_004C: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>>::.ctor(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_0051: call Z0.Vector512`1<System.Int32> Z0.Vector512`1<System.Int32>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>>)
    IL_0056: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663554, Name := Z0.Vector512`1<System.Int64> Z0.dinx::vmul(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
// Vector512<long> vmul(Vector256<int> x, Vector256<int> y)
// AggressiveInlining
Vector512<long> vmul(Vector256<int> x, Vector256<int> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::Multiply(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_0007: stloc.0
    IL_0008: ldarg.0
    IL_0009: call System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vswaphl(System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_000E: ldarg.1
    IL_000F: call System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vswaphl(System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_0014: call System.Runtime.Intrinsics.Vector256`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::Multiply(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_0019: stloc.1
    IL_001A: ldloc.0
    IL_001B: ldloc.1
    IL_001C: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>>::.ctor(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_0021: call Z0.Vector512`1<System.Int64> Z0.Vector512`1<System.Int64>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>>)
    IL_0026: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663555, Name := Z0.Vector512`1<System.UInt64> Z0.dinx::vmul(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
// Vector512<ulong> vmul(Vector256<uint> x, Vector256<uint> y)
// AggressiveInlining
Vector512<ulong> vmul(Vector256<uint> x, Vector256<uint> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> System.Runtime.Intrinsics.X86.Avx2::Multiply(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0007: stloc.0
    IL_0008: ldarg.0
    IL_0009: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vswaphl(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_000E: ldarg.1
    IL_000F: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vswaphl(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0014: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> System.Runtime.Intrinsics.X86.Avx2::Multiply(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0019: stloc.1
    IL_001A: ldloc.0
    IL_001B: ldloc.1
    IL_001C: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>>::.ctor(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0021: call Z0.Vector512`1<System.UInt64> Z0.Vector512`1<System.UInt64>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>>)
    IL_0026: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663556, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vmul(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
// Vector256<ulong> vmul(Vector256<ulong> x, Vector256<ulong> y)
// AggressiveInlining
Vector256<ulong> vmul(Vector256<ulong> x, Vector256<ulong> y)
{
    IL_0000: call Z0.N256 zfunc::get_n256()
    IL_0005: ldc.i4.m1
    IL_0006: conv.u8
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.CpuVector::vbroadcast<System.UInt64>(Z0.N256,System.UInt64)
    IL_000C: stloc.0
    IL_000D: ldarg.0
    IL_000E: ldc.i4.s 32
    IL_0010: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vsrl(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Byte)
    IL_0015: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<System.UInt64>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_001A: stloc.1
    IL_001B: ldarg.1
    IL_001C: ldloc.0
    IL_001D: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vand(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0022: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<System.UInt64>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0027: stloc.2
    IL_0028: ldarg.0
    IL_0029: ldloc.0
    IL_002A: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vand(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_002F: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<System.UInt64>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0034: ldloc.2
    IL_0035: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> System.Runtime.Intrinsics.X86.Avx2::Multiply(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_003A: ldloc.1
    IL_003B: ldloc.2
    IL_003C: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> System.Runtime.Intrinsics.X86.Avx2::Multiply(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0041: ldc.i4.s 32
    IL_0043: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vsll(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Byte)
    IL_0048: ldloc.1
    IL_0049: ldarg.1
    IL_004A: ldc.i4.s 32
    IL_004C: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vsrl(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Byte)
    IL_0051: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<System.UInt64>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0056: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> System.Runtime.Intrinsics.X86.Avx2::Multiply(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_005B: ldc.i4.s 32
    IL_005D: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vsll(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Byte)
    IL_0062: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vadd(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0067: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vadd(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_006C: ret
}
------------------------------------------------------------------------------------------------------------------------
