// Id := 100665501, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vmin<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<ulong> vmin<ulong>(Vector128<ulong> x, Vector128<ulong> y)
// AggressiveInlining
Vector128<ulong> vmin<ulong>(Vector128<ulong> x, Vector128<ulong> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vmin_u<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0007: ret
}
