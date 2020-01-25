// Id := 100665264, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vswaphl<T>(System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<ushort> vswaphl<ushort>(Vector256<ushort> x)
// AggressiveInlining
Vector256<ushort> vswaphl<ushort>(Vector256<ushort> x)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldc.i4.3
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vperm2x128<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,Z0.Perm2x4)
    IL_0008: ret
}
