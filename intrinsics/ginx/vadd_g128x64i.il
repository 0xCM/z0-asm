// Id := 100665129, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vadd<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<long> vadd<long>(Vector128<long> x, Vector128<long> y)
// AggressiveInlining
Vector128<long> vadd<long>(Vector128<long> x, Vector128<long> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vadd_u<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0007: ret
}
