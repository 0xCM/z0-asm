// Id := 100664165, Name := System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vselect(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<byte> vselect(Vector128<byte> x, Vector128<byte> y, Vector128<byte> z)
// AggressiveInlining
Vector128<byte> vselect(Vector128<byte> x, Vector128<byte> y, Vector128<byte> z)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vand(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0007: ldarg.0
    IL_0008: ldarg.2
    IL_0009: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vnonimpl(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_000E: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vor(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0013: ret
}
