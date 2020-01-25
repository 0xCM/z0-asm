// Id := 100663547, Name := System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vmul(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
// Vector256<Int16> vmul(Vector128<sbyte> x, Vector128<sbyte> y)
// AggressiveInlining
Vector256<Int16> vmul(Vector128<sbyte> x, Vector128<sbyte> y)
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
