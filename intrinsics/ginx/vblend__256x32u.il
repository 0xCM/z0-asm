// Id := 100665457, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblend<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.UInt32)
// Vector256<uint> vblend<uint>(Vector256<uint> x, Vector256<uint> y, uint spec)
// AggressiveInlining
Vector256<uint> vblend<uint>(Vector256<uint> x, Vector256<uint> y, uint spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vmakemask(System.UInt32)
    IL_0008: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblend<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_000D: ret
}
