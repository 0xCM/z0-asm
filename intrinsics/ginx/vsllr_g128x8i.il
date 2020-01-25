// Id := 100665382, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vsllr<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<sbyte> vsllr<sbyte>(Vector128<sbyte> x, Vector128<sbyte> offset)
// AggressiveInlining
Vector128<sbyte> vsllr<sbyte>(Vector128<sbyte> x, Vector128<sbyte> offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vsllr_u<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0007: ret
}
