// Id := 100664256, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::xnor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<Int16> xnor<Int16>(Vector256<Int16> a, Vector256<Int16> b)
// AggressiveInlining
Vector256<Int16> xnor<Int16>(Vector256<Int16> a, Vector256<Int16> b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vxnor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0007: ret
}
