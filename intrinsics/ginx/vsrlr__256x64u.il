// Id := 100665411, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vsrlr<T>(System.Runtime.Intrinsics.Vector256`1<T>,T)
// Vector256<ulong> vsrlr<ulong>(Vector256<ulong> x, ulong count)
// AggressiveInlining
Vector256<ulong> vsrlr<ulong>(Vector256<ulong> x, ulong count)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vsrlr_u<T>(System.Runtime.Intrinsics.Vector256`1<T>,T)
    IL_0007: ret
}
