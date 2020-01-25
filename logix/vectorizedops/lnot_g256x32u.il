// Id := 100664258, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::lnot<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<uint> lnot<uint>(Vector256<uint> a, Vector256<uint> b)
// AggressiveInlining
Vector256<uint> lnot<uint>(Vector256<uint> a, Vector256<uint> b)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::not<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0006: ret
}
