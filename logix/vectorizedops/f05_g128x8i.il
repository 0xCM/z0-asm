// Id := 100664217, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::f05<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<sbyte> f05<sbyte>(Vector128<sbyte> a, Vector128<sbyte> b, Vector128<sbyte> c)
// AggressiveInlining
Vector128<sbyte> f05<sbyte>(Vector128<sbyte> a, Vector128<sbyte> b, Vector128<sbyte> c)
{
    IL_0000: ldarg.2
    IL_0001: ldarg.0
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::nor<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0007: ret
}
