// Id := 100665540, Name := Z0.bit Z0.ginx::vtestznc<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// bit vtestznc<double>(Vector128<double> src, Vector128<double> mask)
// AggressiveInlining
bit vtestznc<double>(Vector128<double> src, Vector128<double> mask)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call Z0.bit Z0.ginx::vtestznc_u<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0007: ret
}
