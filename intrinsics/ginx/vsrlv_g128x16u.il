// Id := 100665420, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vsrlv<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<ushort> vsrlv<ushort>(Vector128<ushort> x, Vector128<ushort> counts)
// AggressiveInlining
Vector128<ushort> vsrlv<ushort>(Vector128<ushort> x, Vector128<ushort> counts)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vsrlv_u<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0007: ret
}
