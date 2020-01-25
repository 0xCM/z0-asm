// Id := 100664728, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vconvert(Z0.Block64`1<System.Byte>&,Z0.N128,System.UInt16)
// Vector128<ushort> vconvert(in Block64<byte> src, N128 w, ushort t)
// AggressiveInlining
Vector128<ushort> vconvert(in Block64<byte> src, N128 w, ushort t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Byte& Z0.Block64`1<System.Byte>::get_Head()
    IL_0006: call System.Byte* zfunc::constptr<System.Byte>(System.Byte&)
    IL_000B: call System.Runtime.Intrinsics.Vector128`1<System.Int16> System.Runtime.Intrinsics.X86.Sse41::ConvertToVector128Int16(System.Byte*)
    IL_0010: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> zfunc::v16u<System.Int16>(System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0015: ret
}
