// Id := 100664206, Name := System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vxornot(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<byte> vxornot(Vector128<byte> x, Vector128<byte> y)
// AggressiveInlining
Vector128<byte> vxornot(Vector128<byte> x, Vector128<byte> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Byte> System.Runtime.Intrinsics.X86.Sse2::Xor(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_000C: ret
}
