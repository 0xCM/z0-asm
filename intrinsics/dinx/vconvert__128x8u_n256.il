// Id := 100664806, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector128`1<System.Byte>,Z0.N256,System.UInt16)
// Vector256<ushort> vconvert(Vector128<byte> src, N256 w, ushort t)
// AggressiveInlining
Vector256<ushort> vconvert(Vector128<byte> src, N256 w, ushort t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Int16> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int16(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0006: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<System.Int16>(System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_000B: ret
}
