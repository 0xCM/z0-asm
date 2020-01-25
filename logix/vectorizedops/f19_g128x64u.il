// Id := 100664237, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::f19<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<ulong> f19<ulong>(Vector128<ulong> a, Vector128<ulong> b, Vector128<ulong> c)
// AggressiveInlining
Vector128<ulong> f19<ulong>(Vector128<ulong> a, Vector128<ulong> b, Vector128<ulong> c)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.2
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::xor<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0007: ldarg.0
    IL_0008: ldarg.1
    IL_0009: ldarg.2
    IL_000A: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::and<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_000F: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::and<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0014: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::xor<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0019: ret
}
