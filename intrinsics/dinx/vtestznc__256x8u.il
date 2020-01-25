// Id := 100664705, Name := Z0.bit Z0.dinx::vtestznc(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// bit vtestznc(Vector256<byte> x, Vector256<byte> y)
// AggressiveInlining
bit vtestznc(Vector256<byte> x, Vector256<byte> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Boolean System.Runtime.Intrinsics.X86.Avx::TestNotZAndNotC(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0007: call Z0.bit Z0.bit::op_Implicit(System.Boolean)
    IL_000C: ret
}
