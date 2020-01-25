// Id := 100665532, Name := Z0.bit Z0.ginx::vtestz<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// bit vtestz<Int16>(Vector256<Int16> src, Vector256<Int16> mask)
// AggressiveInlining
bit vtestz<Int16>(Vector256<Int16> src, Vector256<Int16> mask)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call Z0.bit Z0.ginx::vtestz_u<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0007: ret
}
