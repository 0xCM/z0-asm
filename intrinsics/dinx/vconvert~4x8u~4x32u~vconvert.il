// Id := 100664724, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vconvert(Z0.Block32`1<System.Byte>&,Z0.N128,System.UInt32)
// Vector128<uint> vconvert(in Block32<byte> src, N128 w, uint t)
// AggressiveInlining
Vector128<uint> vconvert(in Block32<byte> src, N128 w, uint t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Byte& Z0.Block32`1<System.Byte>::get_Head()
    IL_0006: call System.Byte* zfunc::constptr<System.Byte>(System.Byte&)
    IL_000B: call System.Runtime.Intrinsics.Vector128`1<System.Int32> System.Runtime.Intrinsics.X86.Sse41::ConvertToVector128Int32(System.Byte*)
    IL_0010: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> zfunc::v32u<System.Int32>(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0015: ret
}
