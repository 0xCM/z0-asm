// Id := 100664731, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vconvert(Z0.Block128`1<System.Byte>&,Z0.N256,System.UInt16)
// Vector256<ushort> vconvert(in Block128<byte> src, N256 w, ushort t)
// AggressiveInlining
Vector256<ushort> vconvert(in Block128<byte> src, N256 w, ushort t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Byte& Z0.Block128`1<System.Byte>::get_Head()
    IL_0006: call System.Byte* zfunc::constptr<System.Byte>(System.Byte&)
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<System.Int16> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int16(System.Byte*)
    IL_0010: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<System.Int16>(System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0015: ret
}
------------------------------------------------------------------------------------------------------------------------
