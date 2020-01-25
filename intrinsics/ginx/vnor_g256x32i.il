// Id := 100665313, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vnor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<int> vnor<int>(Vector256<int> x, Vector256<int> y)
// AggressiveInlining
Vector256<int> vnor<int>(Vector256<int> x, Vector256<int> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vnor_u<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0007: ret
}
