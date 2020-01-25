// Id := 100664260, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::rnot<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<long> rnot<long>(Vector256<long> a, Vector256<long> b)
// AggressiveInlining
Vector256<long> rnot<long>(Vector256<long> a, Vector256<long> b)
{
    IL_0000: ldarg.1
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::not<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0006: ret
}
