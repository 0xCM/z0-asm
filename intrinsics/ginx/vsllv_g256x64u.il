// Id := 100665395, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vsllv<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<ulong> vsllv<ulong>(Vector256<ulong> x, Vector256<ulong> counts)
// AggressiveInlining
Vector256<ulong> vsllv<ulong>(Vector256<ulong> x, Vector256<ulong> counts)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vsllv_u<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0007: ret
}
