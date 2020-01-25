// Id := 100663549, Name := System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vmul(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
// Vector256<int> vmul(Vector128<Int16> x, Vector128<Int16> y)
// AggressiveInlining
Vector256<int> vmul(Vector128<Int16> x, Vector128<Int16> y)
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
