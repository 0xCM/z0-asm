// Id := 100663907, Name := System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vshuf16x8(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.SByte>)
// Vector256<sbyte> vshuf16x8(Vector256<sbyte> src, Vector256<sbyte> spec)
// AggressiveInlining
Vector256<sbyte> vshuf16x8(Vector256<sbyte> src, Vector256<sbyte> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.SByte> System.Runtime.Intrinsics.X86.Avx2::Shuffle(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.SByte>)
    IL_0007: ret
}
