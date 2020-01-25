// Id := 100664293, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::f0c<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<int> f0c<int>(Vector256<int> a, Vector256<int> b, Vector256<int> c)
// AggressiveInlining
Vector256<int> f0c<int>(Vector256<int> a, Vector256<int> b, Vector256<int> c)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::not<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::and<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_000C: ret
}
