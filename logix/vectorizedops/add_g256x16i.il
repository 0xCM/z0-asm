// Id := 100664273, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::add<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<Int16> add<Int16>(Vector256<Int16> a, Vector256<Int16> b)
// AggressiveInlining
Vector256<Int16> add<Int16>(Vector256<Int16> a, Vector256<Int16> b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vadd<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0007: ret
}
