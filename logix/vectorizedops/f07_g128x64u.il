// Id := 100664219, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::f07<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<ulong> f07<ulong>(Vector128<ulong> a, Vector128<ulong> b, Vector128<ulong> c)
// AggressiveInlining
Vector128<ulong> f07<ulong>(Vector128<ulong> a, Vector128<ulong> b, Vector128<ulong> c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::and<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0008: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::nor<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_000D: ret
}
