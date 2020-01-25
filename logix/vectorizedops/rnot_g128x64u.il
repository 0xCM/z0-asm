// Id := 100664192, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::rnot<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<ulong> rnot<ulong>(Vector128<ulong> a, Vector128<ulong> b)
// AggressiveInlining
Vector128<ulong> rnot<ulong>(Vector128<ulong> a, Vector128<ulong> b)
{
    IL_0000: ldarg.1
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::not<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0006: ret
}
