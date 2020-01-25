// Id := 100665465, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendp<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector256<byte> vblendp<byte>(Vector256<byte> x, Vector128<byte> spec)
// AggressiveInlining
Vector256<byte> vblendp<byte>(Vector256<byte> x, Vector128<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vlo<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0006: ldarg.0
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vhi<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_000C: ldarg.1
    IL_000D: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0012: ldarg.0
    IL_0013: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vlo<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0018: ldarg.0
    IL_0019: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vhi<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_001E: ldarg.1
    IL_001F: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnot<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0024: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0029: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vconcat<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_002E: ret
}
