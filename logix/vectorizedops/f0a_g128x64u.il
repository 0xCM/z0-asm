// Id := 100664222, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::f0a<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<ulong> f0a<ulong>(Vector128<ulong> a, Vector128<ulong> b, Vector128<ulong> c)
// AggressiveInlining
Vector128<ulong> f0a<ulong>(Vector128<ulong> a, Vector128<ulong> b, Vector128<ulong> c)
{
    IL_0000: ldarg.2
    IL_0001: ldarg.0
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::not<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::and<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_000C: ret
}
