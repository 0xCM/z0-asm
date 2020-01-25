// Id := 100664291, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::f0a<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<long> f0a<long>(Vector256<long> a, Vector256<long> b, Vector256<long> c)
// AggressiveInlining
Vector256<long> f0a<long>(Vector256<long> a, Vector256<long> b, Vector256<long> c)
{
    IL_0000: ldarg.2
    IL_0001: ldarg.0
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::not<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::and<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_000C: ret
}
