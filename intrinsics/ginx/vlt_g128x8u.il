// Id := 100665488, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vlt<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<byte> vlt<byte>(Vector128<byte> x, Vector128<byte> y)
// AggressiveInlining
Vector128<byte> vlt<byte>(Vector128<byte> x, Vector128<byte> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vlt_u<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0007: ret
}
