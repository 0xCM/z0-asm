// Id := 100665495, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vmax<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<long> vmax<long>(Vector128<long> x, Vector128<long> y)
// AggressiveInlining
Vector128<long> vmax<long>(Vector128<long> x, Vector128<long> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vmax_u<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0007: ret
}
