// Id := 100665421, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vsrlv<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<int> vsrlv<int>(Vector256<int> x, Vector256<int> counts)
// AggressiveInlining
Vector256<int> vsrlv<int>(Vector256<int> x, Vector256<int> counts)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vsrlv_u<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0007: ret
}
