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
