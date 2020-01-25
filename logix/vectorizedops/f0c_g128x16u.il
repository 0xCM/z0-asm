// Id := 100664224, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::f0c<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<ushort> f0c<ushort>(Vector128<ushort> a, Vector128<ushort> b, Vector128<ushort> c)
// AggressiveInlining
Vector128<ushort> f0c<ushort>(Vector128<ushort> a, Vector128<ushort> b, Vector128<ushort> c)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::not<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::and<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_000C: ret
}
