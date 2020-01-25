// Id := 100665336, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vselect<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<long> vselect<long>(Vector256<long> x, Vector256<long> y, Vector256<long> z)
// AggressiveInlining
Vector256<long> vselect<long>(Vector256<long> x, Vector256<long> y, Vector256<long> z)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vand<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0007: ldarg.0
    IL_0008: ldarg.2
    IL_0009: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vnonimpl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_000E: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0013: ret
}
