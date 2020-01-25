// Id := 100664310, Name := System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
// Vector128<sbyte> vsllr(Vector128<sbyte> src, Vector128<sbyte> count)
// AggressiveInlining
Vector128<sbyte> vsllr(Vector128<sbyte> src, Vector128<sbyte> count)
{
    IL_0000: ldarg.1
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Int16> zfunc::v16i<System.SByte>(System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0006: stloc.0
    IL_0007: ldarg.0
    IL_0008: call Z0.N256 zfunc::get_n256()
    IL_000D: ldc.i4.0
    IL_000E: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.SByte>,Z0.N256,System.Int16)
    IL_0013: ldloc.0
    IL_0014: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0019: stloc.1
    IL_001A: ldloc.1
    IL_001B: call Z0.N128 zfunc::get_n128()
    IL_0020: ldc.i4.0
    IL_0021: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.Int16>,Z0.N128,System.SByte)
    IL_0026: ret
}
