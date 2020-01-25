// Id := 100664524, Name := System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vblend(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<int> vblend(Vector256<int> x, Vector256<int> y, Vector256<byte> spec)
// AggressiveInlining
Vector256<int> vblend(Vector256<int> x, Vector256<int> y, Vector256<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.Int32> zfunc::v32i<System.Byte>(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0008: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::BlendVariable(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_000D: ret
}
