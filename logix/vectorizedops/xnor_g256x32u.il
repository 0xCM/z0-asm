// Id := 100664256, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::xnor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<uint> xnor<uint>(Vector256<uint> a, Vector256<uint> b)
// AggressiveInlining
Vector256<uint> xnor<uint>(Vector256<uint> a, Vector256<uint> b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vxnor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0007: ret
}
