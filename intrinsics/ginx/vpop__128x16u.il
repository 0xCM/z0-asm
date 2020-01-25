// Id := 100665333, Name := System.UInt32 Z0.ginx::vpop<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// uint vpop<ushort>(Vector128<ushort> x, Vector128<ushort> y, Vector128<ushort> z)
// AggressiveInlining
uint vpop<ushort>(Vector128<ushort> x, Vector128<ushort> y, Vector128<ushort> z)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_000C: ldarg.2
    IL_000D: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0012: call System.UInt32 Z0.dinx::vpop(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0017: ret
}
