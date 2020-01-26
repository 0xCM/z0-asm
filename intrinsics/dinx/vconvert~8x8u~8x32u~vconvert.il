// Id := 100664729, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vconvert(Z0.Block64`1<System.Byte>&,Z0.N256,System.UInt32)
// Vector256<uint> vconvert(in Block64<byte> src, N256 w, uint t)
// AggressiveInlining
Vector256<uint> vconvert(in Block64<byte> src, N256 w, uint t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Byte& Z0.Block64`1<System.Byte>::get_Head()
    IL_0006: call System.Byte* zfunc::constptr<System.Byte>(System.Byte&)
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int32(System.Byte*)
    IL_0010: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<System.Int32>(System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_0015: ret
}
------------------------------------------------------------------------------------------------------------------------
