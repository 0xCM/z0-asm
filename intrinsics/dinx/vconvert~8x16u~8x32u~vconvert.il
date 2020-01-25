// Id := 100664738, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vconvert(Z0.Block128`1<System.UInt16>&,System.UInt32)
// Vector256<uint> vconvert(in Block128<ushort> src, uint t)
// AggressiveInlining
Vector256<uint> vconvert(in Block128<ushort> src, uint t)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt16& Z0.Block128`1<System.UInt16>::get_Head()
    IL_0006: call System.UInt16* zfunc::constptr<System.UInt16>(System.UInt16&)
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int32(System.UInt16*)
    IL_0010: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<System.Int32>(System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_0015: ret
}
