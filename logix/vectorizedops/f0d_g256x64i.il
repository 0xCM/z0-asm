// Id := 100664294, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::f0d<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<long> f0d<long>(Vector256<long> a, Vector256<long> b, Vector256<long> c)
// AggressiveInlining
Vector256<long> f0d<long>(Vector256<long> a, Vector256<long> b, Vector256<long> c)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::not<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0006: ldarg.1
    IL_0007: ldarg.2
    IL_0008: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::not<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_000D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::or<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0012: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::and<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0017: ret
}
