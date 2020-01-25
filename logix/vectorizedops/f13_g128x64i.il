// Id := 100664231, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::f13<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<long> f13<long>(Vector128<long> a, Vector128<long> b, Vector128<long> c)
// AggressiveInlining
Vector128<long> f13<long>(Vector128<long> a, Vector128<long> b, Vector128<long> c)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::and<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0008: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::nor<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_000D: ret
}
