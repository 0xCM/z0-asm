// Id := 100664260, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::rnot<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<ulong> rnot<ulong>(Vector256<ulong> a, Vector256<ulong> b)
// AggressiveInlining
Vector256<ulong> rnot<ulong>(Vector256<ulong> a, Vector256<ulong> b)
{
    IL_0000: ldarg.1
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::not<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0006: ret
}
