// Id := 100665188, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vhi<T>(Z0.Vector512`1<T>)
// Vector256<byte> vhi<byte>(Vector512<byte> src)
// AggressiveInlining
Vector256<byte> vhi<byte>(Vector512<byte> src)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_0006: ret
}
