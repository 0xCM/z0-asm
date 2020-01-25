// Id := 100664286, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::f05<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<uint> f05<uint>(Vector256<uint> a, Vector256<uint> b, Vector256<uint> c)
// AggressiveInlining
Vector256<uint> f05<uint>(Vector256<uint> a, Vector256<uint> b, Vector256<uint> c)
{
    IL_0000: ldarg.2
    IL_0001: ldarg.0
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::nor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0007: ret
}
