// Id := 100665346, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vxor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<ushort> vxor<ushort>(Vector256<ushort> x, Vector256<ushort> y)
// AggressiveInlining
Vector256<ushort> vxor<ushort>(Vector256<ushort> x, Vector256<ushort> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vxor_u<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0007: ret
}
