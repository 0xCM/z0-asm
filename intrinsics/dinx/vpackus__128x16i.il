// Id := 100664882, Name := System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vpackus(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
// Vector128<byte> vpackus(Vector128<Int16> x, Vector128<Int16> y)
// AggressiveInlining
Vector128<byte> vpackus(Vector128<Int16> x, Vector128<Int16> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Byte> System.Runtime.Intrinsics.X86.Sse2::PackUnsignedSaturate(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0007: ret
}
