// Id := 100665201, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vlo<T>(Z0.Vector512`1<T>)
// Vector256<long> vlo<long>(Vector512<long> src)
// AggressiveInlining
Vector256<long> vlo<long>(Vector512<long> src)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: ret
}
