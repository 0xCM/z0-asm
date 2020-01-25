// Id := 100665106, Name := System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vbitblend(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<byte> vbitblend(Vector128<byte> x, Vector128<byte> y, Vector128<byte> mask)
// AggressiveInlining
Vector128<byte> vbitblend(Vector128<byte> x, Vector128<byte> y, Vector128<byte> mask)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0008: ldarg.2
    IL_0009: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vand(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_000E: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0013: ret
}
