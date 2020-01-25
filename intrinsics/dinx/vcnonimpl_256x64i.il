// Id := 100664057, Name := System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vcnonimpl(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>)
// Vector256<long> vcnonimpl(Vector256<long> x, Vector256<long> y)
// AggressiveInlining
Vector256<long> vcnonimpl(Vector256<long> x, Vector256<long> y)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::AndNot(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_0007: ret
}
