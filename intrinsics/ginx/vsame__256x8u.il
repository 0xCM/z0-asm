// Id := 100665517, Name := Z0.bit Z0.ginx::vsame<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// bit vsame<byte>(Vector256<byte> x, Vector256<byte> y)
// AggressiveInlining
bit vsame<byte>(Vector256<byte> x, Vector256<byte> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0007: call Z0.bit Z0.ginx::vtestc<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_000C: ret
}
