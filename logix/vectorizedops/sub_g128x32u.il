// Id := 100664206, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::sub<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<uint> sub<uint>(Vector128<uint> a, Vector128<uint> b)
// AggressiveInlining
Vector128<uint> sub<uint>(Vector128<uint> a, Vector128<uint> b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vsub<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0007: ret
}
