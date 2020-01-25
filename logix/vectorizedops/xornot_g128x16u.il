// Id := 100664197, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::xornot<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<ushort> xornot<ushort>(Vector128<ushort> a, Vector128<ushort> b)
// AggressiveInlining
Vector128<ushort> xornot<ushort>(Vector128<ushort> a, Vector128<ushort> b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vxornot<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0007: ret
}
