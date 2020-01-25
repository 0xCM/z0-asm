// Id := 100664191, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::lnot<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<ushort> lnot<ushort>(Vector128<ushort> a, Vector128<ushort> b)
// AggressiveInlining
Vector128<ushort> lnot<ushort>(Vector128<ushort> a, Vector128<ushort> b)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::not<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0006: ret
}
