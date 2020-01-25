// Id := 100664739, Name := System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vconvert(Z0.Block128`1<System.UInt16>&,System.Int32)
// Vector256<int> vconvert(in Block128<ushort> src, int t)
// AggressiveInlining
Vector256<int> vconvert(in Block128<ushort> src, int t)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt16& Z0.Block128`1<System.UInt16>::get_Head()
    IL_0006: call System.UInt16* zfunc::constptr<System.UInt16>(System.UInt16&)
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int32(System.UInt16*)
    IL_0010: ret
}
