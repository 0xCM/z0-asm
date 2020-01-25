// Id := 100664217, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::f05<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<int> f05<int>(Vector128<int> a, Vector128<int> b, Vector128<int> c)
// AggressiveInlining
Vector128<int> f05<int>(Vector128<int> a, Vector128<int> b, Vector128<int> c)
{
    IL_0000: ldarg.2
    IL_0001: ldarg.0
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::nor<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0007: ret
}
