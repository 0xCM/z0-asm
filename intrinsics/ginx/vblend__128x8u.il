// Id := 100665456, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vblend<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.UInt16)
// Vector128<byte> vblend<byte>(Vector128<byte> x, Vector128<byte> y, ushort spec)
// AggressiveInlining
Vector128<byte> vblend<byte>(Vector128<byte> x, Vector128<byte> y, ushort spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vmakemask(System.UInt16)
    IL_0008: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vblend<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_000D: ret
}
