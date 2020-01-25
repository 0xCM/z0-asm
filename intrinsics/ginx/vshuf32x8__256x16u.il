// Id := 100665262, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vshuf32x8<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<ushort> vshuf32x8<ushort>(Vector256<ushort> src, Vector256<byte> spec)
// AggressiveInlining
Vector256<ushort> vshuf32x8<ushort>(Vector256<ushort> src, Vector256<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vshuf32x8(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_000C: stloc.0
    IL_000D: ldloca.s V_0
    IL_000F: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.Byte>&)
    IL_0014: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_0019: ret
}
