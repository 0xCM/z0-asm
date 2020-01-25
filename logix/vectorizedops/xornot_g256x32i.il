// Id := 100664265, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::xornot<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<int> xornot<int>(Vector256<int> a, Vector256<int> b)
// AggressiveInlining
Vector256<int> xornot<int>(Vector256<int> a, Vector256<int> b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vxornot<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0007: ret
}
