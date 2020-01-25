// Id := 100664184, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::nand<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<long> nand<long>(Vector128<long> a, Vector128<long> b)
// AggressiveInlining
Vector128<long> nand<long>(Vector128<long> a, Vector128<long> b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::and<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::not<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_000C: ret
}
