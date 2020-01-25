// Id := 100665516, Name := Z0.bit Z0.ginx::vsame<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// bit vsame<uint>(Vector128<uint> x, Vector128<uint> y)
// AggressiveInlining
bit vsame<uint>(Vector128<uint> x, Vector128<uint> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::veq<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0007: call Z0.bit Z0.ginx::vtestc<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_000C: ret
}
