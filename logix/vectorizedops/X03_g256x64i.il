// Id := 100664284, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::f03<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<long> f03<long>(Vector256<long> a, Vector256<long> b, Vector256<long> c)
// AggressiveInlining
Vector256<long> f03<long>(Vector256<long> a, Vector256<long> b, Vector256<long> c)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::nor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0007: ret
}
