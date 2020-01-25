// Id := 100664298, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::f11<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<sbyte> f11<sbyte>(Vector256<sbyte> a, Vector256<sbyte> b, Vector256<sbyte> c)
// AggressiveInlining
Vector256<sbyte> f11<sbyte>(Vector256<sbyte> a, Vector256<sbyte> b, Vector256<sbyte> c)
{
    IL_0000: ldarg.2
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::nor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0007: ret
}
