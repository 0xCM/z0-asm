// Id := 100665589, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vbitblend<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<uint> vbitblend<uint>(Vector128<uint> x, Vector128<uint> y, Vector128<uint> mask)
// AggressiveInlining
Vector128<uint> vbitblend<uint>(Vector128<uint> x, Vector128<uint> y, Vector128<uint> mask)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vxor<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0008: ldarg.2
    IL_0009: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vand<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_000E: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vxor<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0013: ret
}
