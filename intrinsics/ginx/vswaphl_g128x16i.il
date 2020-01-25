// Id := 100665263, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vswaphl<T>(System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<Int16> vswaphl<Int16>(Vector128<Int16> x)
// AggressiveInlining
Vector128<Int16> vswaphl<Int16>(Vector128<Int16> x)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0006: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vswaphl(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_000B: stloc.0
    IL_000C: ldloca.s V_0
    IL_000E: call System.Runtime.Intrinsics.Vector128`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>&)
    IL_0013: ldobj System.Runtime.Intrinsics.Vector128`1<T>
    IL_0018: ret
}
