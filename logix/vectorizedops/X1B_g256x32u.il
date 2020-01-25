// Id := 100664308, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::f1b<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<uint> f1b<uint>(Vector256<uint> a, Vector256<uint> b, Vector256<uint> c)
// AggressiveInlining
Vector256<uint> f1b<uint>(Vector256<uint> a, Vector256<uint> b, Vector256<uint> c)
{
    IL_0000: ldarg.2
    IL_0001: ldarg.0
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::not<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0007: ldarg.1
    IL_0008: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::not<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_000D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::select<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0012: ret
}
