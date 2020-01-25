// Id := 100663507, Name := System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vdec(System.Runtime.Intrinsics.Vector256`1<System.Int32>)
// Vector256<int> vdec(Vector256<int> src)
// AggressiveInlining
Vector256<int> vdec(Vector256<int> src)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N256 zfunc::get_n256()
    IL_0006: ldc.i4.0
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.VPattern::vunits<System.Int32>(Z0.N256,System.Int32)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vsub(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_0011: ret
}
