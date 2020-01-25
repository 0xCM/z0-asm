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
