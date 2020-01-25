// Id := 100665273, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vand<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<int> vand<int>(Vector128<int> x, Vector128<int> y)
// AggressiveInlining
Vector128<int> vand<int>(Vector128<int> x, Vector128<int> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vand_u<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0007: ret
}
