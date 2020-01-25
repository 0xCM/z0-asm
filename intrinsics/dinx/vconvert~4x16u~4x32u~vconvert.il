// Id := 100664737, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vconvert(Z0.Block64`1<System.UInt16>&,Z0.N128,System.UInt32)
// Vector128<uint> vconvert(in Block64<ushort> src, N128 w, uint t)
// AggressiveInlining
Vector128<uint> vconvert(in Block64<ushort> src, N128 w, uint t)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt16& Z0.Block64`1<System.UInt16>::get_Head()
    IL_0006: call System.UInt16* zfunc::constptr<System.UInt16>(System.UInt16&)
    IL_000B: call System.Runtime.Intrinsics.Vector128`1<System.Int32> System.Runtime.Intrinsics.X86.Sse41::ConvertToVector128Int32(System.UInt16*)
    IL_0010: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> zfunc::v32u<System.Int32>(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0015: ret
}
