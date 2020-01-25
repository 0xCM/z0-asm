// Id := 100663806, Name := System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vperm16x8(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<sbyte> vperm16x8(Vector256<sbyte> src, Vector256<byte> spec)
// AggressiveInlining
Vector256<sbyte> vperm16x8(Vector256<sbyte> src, Vector256<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.SByte> zfunc::v8i<System.Byte>(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.SByte> System.Runtime.Intrinsics.X86.Avx2::Shuffle(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.SByte>)
    IL_000C: ret
}
