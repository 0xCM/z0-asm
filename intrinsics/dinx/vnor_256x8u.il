// Id := 100664121, Name := System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vnor(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<byte> vnor(Vector256<byte> x, Vector256<byte> y)
// AggressiveInlining
Vector256<byte> vnor(Vector256<byte> x, Vector256<byte> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Byte> System.Runtime.Intrinsics.X86.Avx2::Or(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_000C: ret
}
