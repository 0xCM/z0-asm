// Id := 100664385, Name := System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<byte> vsrlr(Vector128<byte> src, Vector128<byte> count)
// AggressiveInlining
Vector128<byte> vsrlr(Vector128<byte> src, Vector128<byte> count)
{
    IL_0000: ldarg.1
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> zfunc::v16u<System.Byte>(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0006: stloc.0
    IL_0007: ldarg.0
    IL_0008: call Z0.N256 zfunc::get_n256()
    IL_000D: ldc.i4.0
    IL_000E: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.Byte>,Z0.N256,System.UInt16)
    IL_0013: ldloc.0
    IL_0014: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0019: stloc.1
    IL_001A: ldloc.1
    IL_001B: call Z0.N128 zfunc::get_n128()
    IL_0020: ldc.i4.0
    IL_0021: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,Z0.N128,System.Byte)
    IL_0026: ret
}
