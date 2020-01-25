// Id := 100665394, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vsllv<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<ulong> vsllv<ulong>(Vector128<ulong> x, Vector128<ulong> counts)
// AggressiveInlining
Vector128<ulong> vsllv<ulong>(Vector128<ulong> x, Vector128<ulong> counts)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vsllv_u<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0007: ret
}
