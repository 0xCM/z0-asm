// Id := 100663808, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vperm16x8(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<ushort> vperm16x8(Vector256<ushort> src, Vector256<byte> spec)
// AggressiveInlining
Vector256<ushort> vperm16x8(Vector256<ushort> src, Vector256<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<System.UInt16>(System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Byte> System.Runtime.Intrinsics.X86.Avx2::Shuffle(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<System.Byte>(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0011: ret
}
