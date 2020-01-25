// Id := 100664274, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::sub<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<long> sub<long>(Vector256<long> a, Vector256<long> b)
// AggressiveInlining
Vector256<long> sub<long>(Vector256<long> a, Vector256<long> b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vsub<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0007: ret
}
