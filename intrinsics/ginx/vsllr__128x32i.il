// Id := 100665384, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vsllr<T>(System.Runtime.Intrinsics.Vector128`1<T>,T)
// Vector128<int> vsllr<int>(Vector128<int> x, int offset)
// AggressiveInlining
Vector128<int> vsllr<int>(Vector128<int> x, int offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vsllr_u<T>(System.Runtime.Intrinsics.Vector128`1<T>,T)
    IL_0007: ret
}
