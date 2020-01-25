// Id := 100664227, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::f0f<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<sbyte> f0f<sbyte>(Vector128<sbyte> a, Vector128<sbyte> b, Vector128<sbyte> c)
// AggressiveInlining
Vector128<sbyte> f0f<sbyte>(Vector128<sbyte> a, Vector128<sbyte> b, Vector128<sbyte> c)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::not<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0006: ret
}
