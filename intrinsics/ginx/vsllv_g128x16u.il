// Id := 100665394, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vsllv<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<ushort> vsllv<ushort>(Vector128<ushort> x, Vector128<ushort> counts)
// AggressiveInlining
Vector128<ushort> vsllv<ushort>(Vector128<ushort> x, Vector128<ushort> counts)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vsllv_u<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0007: ret
}
