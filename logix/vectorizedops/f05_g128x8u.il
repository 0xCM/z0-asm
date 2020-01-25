// Id := 100664217, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::f05<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<byte> f05<byte>(Vector128<byte> a, Vector128<byte> b, Vector128<byte> c)
// AggressiveInlining
Vector128<byte> f05<byte>(Vector128<byte> a, Vector128<byte> b, Vector128<byte> c)
{
    IL_0000: ldarg.2
    IL_0001: ldarg.0
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::nor<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0007: ret
}
