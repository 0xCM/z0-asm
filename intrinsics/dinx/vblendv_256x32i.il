// Id := 100664546, Name := System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
// Vector256<int> vblendv(Vector256<int> x, Vector256<int> y, Vector256<int> spec)
// AggressiveInlining
Vector256<int> vblendv(Vector256<int> x, Vector256<int> y, Vector256<int> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::BlendVariable(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_0008: ret
}
