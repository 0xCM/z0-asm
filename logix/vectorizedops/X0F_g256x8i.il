// Id := 100664296, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::f0f<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<sbyte> f0f<sbyte>(Vector256<sbyte> a, Vector256<sbyte> b, Vector256<sbyte> c)
// AggressiveInlining
Vector256<sbyte> f0f<sbyte>(Vector256<sbyte> a, Vector256<sbyte> b, Vector256<sbyte> c)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::not<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0006: ret
}
