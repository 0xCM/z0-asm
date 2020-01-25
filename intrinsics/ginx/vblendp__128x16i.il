// Id := 100665464, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendp<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector256<Int16> vblendp<Int16>(Vector128<Int16> x, Vector128<Int16> y, Vector128<Int16> spec)
// AggressiveInlining
Vector256<Int16> vblendp<Int16>(Vector128<Int16> x, Vector128<Int16> y, Vector128<Int16> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0008: ldarg.0
    IL_0009: ldarg.1
    IL_000A: ldarg.2
    IL_000B: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnot<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0010: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0015: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vconcat<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_001A: ret
}
