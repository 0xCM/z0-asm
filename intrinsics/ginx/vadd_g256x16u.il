// Id := 100665130, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vadd<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<ushort> vadd<ushort>(Vector256<ushort> x, Vector256<ushort> y)
// AggressiveInlining
Vector256<ushort> vadd<ushort>(Vector256<ushort> x, Vector256<ushort> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vadd_u<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0007: ret
}
