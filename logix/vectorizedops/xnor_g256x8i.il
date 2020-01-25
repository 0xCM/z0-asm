// Id := 100664256, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::xnor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<sbyte> xnor<sbyte>(Vector256<sbyte> a, Vector256<sbyte> b)
// AggressiveInlining
Vector256<sbyte> xnor<sbyte>(Vector256<sbyte> a, Vector256<sbyte> b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vxnor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0007: ret
}
