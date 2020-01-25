// Id := 100665335, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vselect<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<int> vselect<int>(Vector128<int> x, Vector128<int> y, Vector128<int> z)
// AggressiveInlining
Vector128<int> vselect<int>(Vector128<int> x, Vector128<int> y, Vector128<int> z)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vand<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0007: ldarg.0
    IL_0008: ldarg.2
    IL_0009: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnonimpl<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_000E: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vor<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0013: ret
}
