// Id := 100663509, Name := System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vdec(System.Runtime.Intrinsics.Vector256`1<System.Int64>)
// Vector256<long> vdec(Vector256<long> src)
// AggressiveInlining
Vector256<long> vdec(Vector256<long> src)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N256 zfunc::get_n256()
    IL_0006: ldc.i4.0
    IL_0007: conv.i8
    IL_0008: call System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.VPattern::vunits<System.Int64>(Z0.N256,System.Int64)
    IL_000D: call System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vsub(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_0012: ret
}
