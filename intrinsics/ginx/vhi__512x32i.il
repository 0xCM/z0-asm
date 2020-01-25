// Id := 100665188, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vhi<T>(Z0.Vector512`1<T>)
// Vector256<int> vhi<int>(Vector512<int> src)
// AggressiveInlining
Vector256<int> vhi<int>(Vector512<int> src)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_0006: ret
}
