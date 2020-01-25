// Id := 100664521, Name := System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vblend(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<sbyte> vblend(Vector256<sbyte> x, Vector256<sbyte> y, Vector256<byte> spec)
// AggressiveInlining
Vector256<sbyte> vblend(Vector256<sbyte> x, Vector256<sbyte> y, Vector256<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.SByte> zfunc::v8i<System.Byte>(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0008: call System.Runtime.Intrinsics.Vector256`1<System.SByte> System.Runtime.Intrinsics.X86.Avx2::BlendVariable(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.SByte>)
    IL_000D: ret
}
