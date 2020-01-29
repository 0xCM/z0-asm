// Id := 100663510, Name := System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vhadd(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
// Vector128<sbyte> vhadd(Vector128<sbyte> x, Vector128<sbyte> y)
// AggressiveInlining
Vector128<sbyte> vhadd(Vector128<sbyte> x, Vector128<sbyte> y)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N256 zfunc::get_n256()
    IL_0006: ldc.i4.0
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.SByte>,Z0.N256,System.Int16)
    IL_000C: stloc.0
    IL_000D: ldarg.1
    IL_000E: call Z0.N256 zfunc::get_n256()
    IL_0013: ldc.i4.0
    IL_0014: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.SByte>,Z0.N256,System.Int16)
    IL_0019: stloc.1
    IL_001A: ldloc.0
    IL_001B: ldloc.1
    IL_001C: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vhadd(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0021: call Z0.N128 zfunc::get_n128()
    IL_0026: ldc.i4.0
    IL_0027: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.Int16>,Z0.N128,System.SByte)
    IL_002C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663511, Name := System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vhadd(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<byte> vhadd(Vector128<byte> x, Vector128<byte> y)
// AggressiveInlining
Vector128<byte> vhadd(Vector128<byte> x, Vector128<byte> y)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N256 zfunc::get_n256()
    IL_0006: ldc.i4.0
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.Byte>,Z0.N256,System.Int16)
    IL_000C: stloc.0
    IL_000D: ldarg.1
    IL_000E: call Z0.N256 zfunc::get_n256()
    IL_0013: ldc.i4.0
    IL_0014: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.Byte>,Z0.N256,System.Int16)
    IL_0019: stloc.1
    IL_001A: ldloc.0
    IL_001B: ldloc.1
    IL_001C: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vhadd(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0021: call Z0.N128 zfunc::get_n128()
    IL_0026: ldc.i4.0
    IL_0027: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.Int16>,Z0.N128,System.Byte)
    IL_002C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663512, Name := System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vhadd(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
// Vector128<short> vhadd(Vector128<short> x, Vector128<short> y)
// AggressiveInlining
Vector128<short> vhadd(Vector128<short> x, Vector128<short> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Int16> System.Runtime.Intrinsics.X86.Ssse3::HorizontalAdd(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663513, Name := System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vhadd(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
// Vector128<int> vhadd(Vector128<int> x, Vector128<int> y)
// AggressiveInlining
Vector128<int> vhadd(Vector128<int> x, Vector128<int> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Int32> System.Runtime.Intrinsics.X86.Ssse3::HorizontalAdd(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663514, Name := System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vhadd(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.SByte>)
// Vector256<sbyte> vhadd(Vector256<sbyte> x, Vector256<sbyte> y)
// AggressiveInlining
Vector256<sbyte> vhadd(Vector256<sbyte> x, Vector256<sbyte> y)
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
    IL_0040: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vhadd(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0045: ldloc.1
    IL_0046: ldloc.3
    IL_0047: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vhadd(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_004C: call Z0.N256 zfunc::get_n256()
    IL_0051: ldc.i4.0
    IL_0052: call System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>,Z0.N256,System.SByte)
    IL_0057: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663515, Name := System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vhadd(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
// Vector256<short> vhadd(Vector256<short> x, Vector256<short> y)
// AggressiveInlining
Vector256<short> vhadd(Vector256<short> x, Vector256<short> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Int16> System.Runtime.Intrinsics.X86.Avx2::HorizontalAdd(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663516, Name := System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vhadd(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
// Vector256<int> vhadd(Vector256<int> x, Vector256<int> y)
// AggressiveInlining
Vector256<int> vhadd(Vector256<int> x, Vector256<int> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::HorizontalAdd(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
