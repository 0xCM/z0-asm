// Id := 100664232, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::f14<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<sbyte> f14<sbyte>(Vector128<sbyte> a, Vector128<sbyte> b, Vector128<sbyte> c)
// AggressiveInlining
Vector128<sbyte> f14<sbyte>(Vector128<sbyte> a, Vector128<sbyte> b, Vector128<sbyte> c)
{
    IL_0000: ldarg.2
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::not<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0006: ldarg.0
    IL_0007: ldarg.1
    IL_0008: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::xor<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_000D: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::and<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0012: ret
}
