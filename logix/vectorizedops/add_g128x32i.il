// Id := 100664205, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::add<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<int> add<int>(Vector128<int> a, Vector128<int> b)
// AggressiveInlining
Vector128<int> add<int>(Vector128<int> a, Vector128<int> b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vadd<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0007: ret
}
