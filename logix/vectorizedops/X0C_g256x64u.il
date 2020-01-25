// Id := 100664293, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::f0c<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<ulong> f0c<ulong>(Vector256<ulong> a, Vector256<ulong> b, Vector256<ulong> c)
// AggressiveInlining
Vector256<ulong> f0c<ulong>(Vector256<ulong> a, Vector256<ulong> b, Vector256<ulong> c)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::not<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::and<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_000C: ret
}
