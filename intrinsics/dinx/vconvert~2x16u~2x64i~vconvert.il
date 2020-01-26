// Id := 100664734, Name := System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vconvert(Z0.Block32`1<System.UInt16>&,Z0.N128,System.Int64)
// Vector128<long> vconvert(in Block32<ushort> src, N128 w, long t)
// AggressiveInlining
Vector128<long> vconvert(in Block32<ushort> src, N128 w, long t)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt16& Z0.Block32`1<System.UInt16>::get_Head()
    IL_0006: call System.UInt16* zfunc::constptr<System.UInt16>(System.UInt16&)
    IL_000B: call System.Runtime.Intrinsics.Vector128`1<System.Int64> System.Runtime.Intrinsics.X86.Sse41::ConvertToVector128Int64(System.UInt16*)
    IL_0010: ret
}
------------------------------------------------------------------------------------------------------------------------
