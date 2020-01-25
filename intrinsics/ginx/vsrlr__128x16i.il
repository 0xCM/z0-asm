// Id := 100665410, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vsrlr<T>(System.Runtime.Intrinsics.Vector128`1<T>,T)
// Vector128<Int16> vsrlr<Int16>(Vector128<Int16> x, Int16 count)
// AggressiveInlining
Vector128<Int16> vsrlr<Int16>(Vector128<Int16> x, Int16 count)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vsrlr_u<T>(System.Runtime.Intrinsics.Vector128`1<T>,T)
    IL_0007: ret
}
