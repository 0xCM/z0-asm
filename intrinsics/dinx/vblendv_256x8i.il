// Id := 100664543, Name := System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.SByte>)
// Vector256<sbyte> vblendv(Vector256<sbyte> x, Vector256<sbyte> y, Vector256<sbyte> spec)
// AggressiveInlining
Vector256<sbyte> vblendv(Vector256<sbyte> x, Vector256<sbyte> y, Vector256<sbyte> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.SByte> System.Runtime.Intrinsics.X86.Avx2::BlendVariable(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.SByte>)
    IL_0008: ret
}
