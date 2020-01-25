// Id := 100664226, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::f0e<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<ulong> f0e<ulong>(Vector128<ulong> a, Vector128<ulong> b, Vector128<ulong> c)
// AggressiveInlining
Vector128<ulong> f0e<ulong>(Vector128<ulong> a, Vector128<ulong> b, Vector128<ulong> c)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::not<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0006: ldarg.1
    IL_0007: ldarg.2
    IL_0008: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::or<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_000D: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::and<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0012: ret
}
