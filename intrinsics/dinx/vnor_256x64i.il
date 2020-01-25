// Id := 100664127, Name := System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vnor(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>)
// Vector256<long> vnor(Vector256<long> x, Vector256<long> y)
// AggressiveInlining
Vector256<long> vnor(Vector256<long> x, Vector256<long> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::Or(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_000C: ret
}
