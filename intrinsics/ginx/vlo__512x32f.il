// Id := 100665201, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vlo<T>(Z0.Vector512`1<T>)
// Vector256<float> vlo<float>(Vector512<float> src)
// AggressiveInlining
Vector256<float> vlo<float>(Vector512<float> src)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: ret
}
