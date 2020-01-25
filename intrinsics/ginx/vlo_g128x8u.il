// Id := 100665197, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vlo<T>(System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<byte> vlo<byte>(Vector128<byte> src)
// AggressiveInlining
Vector128<byte> vlo<byte>(Vector128<byte> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0006: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.ginx::vzerohi<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_000B: stloc.0
    IL_000C: ldloca.s V_0
    IL_000E: call System.Runtime.Intrinsics.Vector128`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>&)
    IL_0013: ldobj System.Runtime.Intrinsics.Vector128`1<T>
    IL_0018: ret
}
