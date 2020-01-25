// Id := 100664549, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
// Vector256<ulong> vblendv(Vector256<ulong> x, Vector256<ulong> y, Vector256<ulong> spec)
// AggressiveInlining
Vector256<ulong> vblendv(Vector256<ulong> x, Vector256<ulong> y, Vector256<ulong> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> System.Runtime.Intrinsics.X86.Avx2::BlendVariable(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0008: ret
}
