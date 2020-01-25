// Id := 100664217, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::f05<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<ulong> f05<ulong>(Vector128<ulong> a, Vector128<ulong> b, Vector128<ulong> c)
// AggressiveInlining
Vector128<ulong> f05<ulong>(Vector128<ulong> a, Vector128<ulong> b, Vector128<ulong> c)
{
    IL_0000: ldarg.2
    IL_0001: ldarg.0
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::nor<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0007: ret
}
