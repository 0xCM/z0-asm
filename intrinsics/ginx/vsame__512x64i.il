// Id := 100665518, Name := Z0.bit Z0.ginx::vsame<T>(Z0.Vector512`1<T>&,Z0.Vector512`1<T>&)
// bit vsame<long>(in Vector512<long> x, in Vector512<long> y)
// AggressiveInlining
bit vsame<long>(in Vector512<long> x, in Vector512<long> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call Z0.Vector512`1<T> Z0.ginx::veq<T>(Z0.Vector512`1<T>&,Z0.Vector512`1<T>&)
    IL_0007: call Z0.bit Z0.ginx::vtestc<T>(Z0.Vector512`1<T>)
    IL_000C: ret
}
