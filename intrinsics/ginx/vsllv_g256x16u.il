// Id := 100665395, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vsllv<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<ushort> vsllv<ushort>(Vector256<ushort> x, Vector256<ushort> counts)
// AggressiveInlining
Vector256<ushort> vsllv<ushort>(Vector256<ushort> x, Vector256<ushort> counts)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vsllv_u<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0007: ret
}
