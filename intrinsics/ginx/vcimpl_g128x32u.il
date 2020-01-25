// Id := 100665280, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vcimpl<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<uint> vcimpl<uint>(Vector128<uint> x, Vector128<uint> y)
// AggressiveInlining
Vector128<uint> vcimpl<uint>(Vector128<uint> x, Vector128<uint> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vcimpl_u<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0007: ret
}
