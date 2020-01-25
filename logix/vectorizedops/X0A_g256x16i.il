// Id := 100664291, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::f0a<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<Int16> f0a<Int16>(Vector256<Int16> a, Vector256<Int16> b, Vector256<Int16> c)
// AggressiveInlining
Vector256<Int16> f0a<Int16>(Vector256<Int16> a, Vector256<Int16> b, Vector256<Int16> c)
{
    IL_0000: ldarg.2
    IL_0001: ldarg.0
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::not<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::and<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_000C: ret
}
