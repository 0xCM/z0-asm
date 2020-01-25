// Id := 100665159, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vsub<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<double> vsub<double>(Vector128<double> x, Vector128<double> y)
// AggressiveInlining
Vector128<double> vsub<double>(Vector128<double> x, Vector128<double> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vsub_u<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0007: ret
}
