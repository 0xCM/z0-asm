// Id := 100664721, Name := System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vconvert(Z0.Block16`1<System.Byte>&,System.Int32,Z0.N128,System.Int64)
// Vector128<long> vconvert(in Block16<byte> src, int block, N128 w, long t)
// AggressiveInlining
Vector128<long> vconvert(in Block16<byte> src, int block, N128 w, long t)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Byte& Z0.BlockExtend::BlockRef<System.Byte>(Z0.Block16`1<System.Byte>&,System.Int32)
    IL_0007: call System.Byte* zfunc::constptr<System.Byte>(System.Byte&)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.Int64> System.Runtime.Intrinsics.X86.Sse41::ConvertToVector128Int64(System.Byte*)
    IL_0011: ret
}
