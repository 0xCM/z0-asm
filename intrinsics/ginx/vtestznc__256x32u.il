// Id := 100665541, Name := Z0.bit Z0.ginx::vtestznc<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// bit vtestznc<uint>(Vector256<uint> src, Vector256<uint> mask)
// AggressiveInlining
bit vtestznc<uint>(Vector256<uint> src, Vector256<uint> mask)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call Z0.bit Z0.ginx::vtestznc_u<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0007: ret
}
