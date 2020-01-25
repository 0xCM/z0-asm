// Id := 100663513, Name := System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vhadd(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
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
