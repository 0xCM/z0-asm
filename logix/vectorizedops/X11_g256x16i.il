// Id := 100664298, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::f11<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<Int16> f11<Int16>(Vector256<Int16> a, Vector256<Int16> b, Vector256<Int16> c)
// AggressiveInlining
Vector256<Int16> f11<Int16>(Vector256<Int16> a, Vector256<Int16> b, Vector256<Int16> c)
{
    IL_0000: ldarg.2
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::nor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0007: ret
}
