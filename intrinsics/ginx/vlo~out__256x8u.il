// Id := 100665199, Name := System.Void Z0.ginx::vlo<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.UInt64&,System.UInt64&)
// void vlo<byte>(Vector256<byte> src, out ulong x0, out ulong x1)
// AggressiveInlining
void vlo<byte>(Vector256<byte> src, out ulong x0, out ulong x1)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0006: ldarg.1
    IL_0007: ldarg.2
    IL_0008: call System.Void Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.UInt64&,System.UInt64&)
    IL_000D: ret
}
