// Id := 100665312, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnor<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<double> vnor<double>(Vector128<double> x, Vector128<double> y)
// AggressiveInlining
Vector128<double> vnor<double>(Vector128<double> x, Vector128<double> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnor_u<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0007: ret
}
