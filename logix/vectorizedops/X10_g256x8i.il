// Id := 100664297, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::f10<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<sbyte> f10<sbyte>(Vector256<sbyte> a, Vector256<sbyte> b, Vector256<sbyte> c)
// AggressiveInlining
Vector256<sbyte> f10<sbyte>(Vector256<sbyte> a, Vector256<sbyte> b, Vector256<sbyte> c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::nor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0008: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::and<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_000D: ret
}
