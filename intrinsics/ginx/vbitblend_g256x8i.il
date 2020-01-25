// Id := 100665590, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vbitblend<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<sbyte> vbitblend<sbyte>(Vector256<sbyte> x, Vector256<sbyte> y, Vector256<sbyte> mask)
// AggressiveInlining
Vector256<sbyte> vbitblend<sbyte>(Vector256<sbyte> x, Vector256<sbyte> y, Vector256<sbyte> mask)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vxor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0008: ldarg.2
    IL_0009: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vand<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_000E: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vxor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0013: ret
}
