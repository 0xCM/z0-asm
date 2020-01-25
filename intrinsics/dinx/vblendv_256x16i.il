// Id := 100664544, Name := System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
// Vector256<Int16> vblendv(Vector256<Int16> x, Vector256<Int16> y, Vector256<Int16> spec)
// AggressiveInlining
Vector256<Int16> vblendv(Vector256<Int16> x, Vector256<Int16> y, Vector256<Int16> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.Int16> System.Runtime.Intrinsics.X86.Avx2::BlendVariable(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0008: ret
}
