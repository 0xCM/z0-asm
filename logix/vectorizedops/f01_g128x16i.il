// Id := 100664213, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::f01<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<Int16> f01<Int16>(Vector128<Int16> a, Vector128<Int16> b, Vector128<Int16> c)
// AggressiveInlining
Vector128<Int16> f01<Int16>(Vector128<Int16> a, Vector128<Int16> b, Vector128<Int16> c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::or<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0008: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::nor<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_000D: ret
}
