// Id := 100665312, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnor<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<long> vnor<long>(Vector128<long> x, Vector128<long> y)
// AggressiveInlining
Vector128<long> vnor<long>(Vector128<long> x, Vector128<long> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnor_u<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0007: ret
}
